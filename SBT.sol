// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract SoulboundToken is ERC721, Ownable {
    uint256 public tokenId = 0;

    constructor() ERC721("SoulboundToken", "SBT") {}

    function mint(address to) public onlyOwner {
        _mint(to, tokenId);
        tokenId++;
    }

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public override {
        revert("SoulboundToken: Transfer not allowed");
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public override {
        revert("SoulboundToken: Transfer not allowed");
    }
}
