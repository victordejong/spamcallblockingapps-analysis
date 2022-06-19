package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.GetBucketWebsiteConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest.class */
public class GetBucketWebsiteConfigurationRequest extends AmazonWebServiceRequest {
    private String bucketName;

    public GetBucketWebsiteConfigurationRequest(String str) {
        this.bucketName = str;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public GetBucketWebsiteConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }
}
