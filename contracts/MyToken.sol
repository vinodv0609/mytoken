pragma solidity ^0.4.21;
contract Mytoken{
    string public name="VIN-Token";
    string public symbol="VIN";
     uint public totalsupply;
     mapping(address=> uint) public balance;
     
     constructor(uint total) public{
         totalsupply=total;
         balance[msg.sender]=totalsupply;
     }
     
     function balanceOf(address addr) public returns(uint){
         return balance[addr];
     }
     
     function transfer(address addrto ,uint value )public returns(bool){
         if(balance[msg.sender]> value && value>0 ){
         balance[msg.sender]=balance[msg.sender]-value;
         balance[addrto]=balance[addrto]+value;
             return true;
         }
         return false;
         
     }
}