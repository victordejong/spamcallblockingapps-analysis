package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.HeadBucketRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/HeadBucketRequest.class */
public class HeadBucketRequest extends AmazonWebServiceRequest {
    private String bucketName;

    public HeadBucketRequest(String str) {
        this.bucketName = str;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }
}
