package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.GetBucketAclRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketAclRequest.class */
public class GetBucketAclRequest extends AmazonWebServiceRequest {
    private String bucketName;

    public GetBucketAclRequest(String str) {
        this.bucketName = str;
    }

    public String getBucketName() {
        return this.bucketName;
    }
}
