package com.amazonaws.services.p101s3.model;

import com.callapp.contacts.recorder.service.RecordService;
/* renamed from: com.amazonaws.services.s3.model.CannedAccessControlList */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CannedAccessControlList.class */
public enum CannedAccessControlList {
    Private(RecordService.PRIVATE_NUMBER_STRING),
    PublicRead("public-read"),
    PublicReadWrite("public-read-write"),
    AuthenticatedRead("authenticated-read"),
    LogDeliveryWrite("log-delivery-write"),
    BucketOwnerRead("bucket-owner-read"),
    BucketOwnerFullControl("bucket-owner-full-control"),
    AwsExecRead("aws-exec-read");
    
    private final String cannedAclHeader;

    CannedAccessControlList(String str) {
        this.cannedAclHeader = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.cannedAclHeader;
    }
}
