package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.SetBucketWebsiteConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest.class */
public class SetBucketWebsiteConfigurationRequest extends AmazonWebServiceRequest {
    private String bucketName;
    private BucketWebsiteConfiguration configuration;

    public SetBucketWebsiteConfigurationRequest(String str, BucketWebsiteConfiguration bucketWebsiteConfiguration) {
        this.bucketName = str;
        this.configuration = bucketWebsiteConfiguration;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public BucketWebsiteConfiguration getConfiguration() {
        return this.configuration;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setConfiguration(BucketWebsiteConfiguration bucketWebsiteConfiguration) {
        this.configuration = bucketWebsiteConfiguration;
    }

    public SetBucketWebsiteConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public SetBucketWebsiteConfigurationRequest withConfiguration(BucketWebsiteConfiguration bucketWebsiteConfiguration) {
        setConfiguration(bucketWebsiteConfiguration);
        return this;
    }
}
