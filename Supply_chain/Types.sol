// SPDX-License-Identifier: GPL-3.0
pragma experimental ABIEncoderV2;
pragma solidity >=0.4.25 <0.9.0;


library Types {
    enum UserRole {
        Manufacturer, // 0
        Supplier, // 1
        Vendor, // 2
        Customer, // 3
        Company_owner //4 added for company--
    }
    
    struct UserDetails {
        UserRole role;
        address id_;
        string name;
        string email;
    }
    // struct to add company--
    struct CompanyDetails{
        address PAN;
        string company_name;
        string email_id;

    }
    
    // event for adding company--
    event addCompany( 
        address _pan,
        string _name,
        string c_id
        );
       
    
    
    enum ProductType {
        BCG, // 0
        RNA, // 1
        MRNA, // 2
        MMR, // 3
        NasalFlu // 4
    }

    struct UserHistory {
        address id_; 
        uint256 date; 
    }

    struct ProductHistory {
        UserHistory manufacturer;
        UserHistory supplier;
        UserHistory vendor;
        UserHistory[] customers;
    }


    struct Product {
        string name;
        string manufacturerName;
        address manufacturer;
        uint256 manDateEpoch;
        uint256 expDateEpoch;
        bool isInBatch; 
        uint256 batchCount; 
        string barcodeId;
        string productImage;
        ProductType productType;
        string scientificName;
        string usage;
        string[] composition;
        string[] sideEffects;
    }
}