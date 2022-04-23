package com.amazonaws.services.p017s3.model;
/* renamed from: com.amazonaws.services.s3.model.CannedAccessControlList */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CannedAccessControlList.class */
public enum CannedAccessControlList {
    Private("private"),
    PublicRead("public-read"),
    PublicReadWrite("public-read-write"),
    AuthenticatedRead("authenticated-read"),
    LogDeliveryWrite("log-delivery-write"),
    BucketOwnerRead("bucket-owner-read"),
    BucketOwnerFullControl("bucket-owner-full-control");
    
    public final String cannedAclHeader;

    CannedAccessControlList(String str) {
        this.cannedAclHeader = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.cannedAclHeader;
    }
}
