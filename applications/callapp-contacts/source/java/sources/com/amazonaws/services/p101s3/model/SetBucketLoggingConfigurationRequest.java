package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.SetBucketLoggingConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest.class */
public class SetBucketLoggingConfigurationRequest extends AmazonWebServiceRequest {
    private String bucketName;
    private BucketLoggingConfiguration loggingConfiguration;

    public SetBucketLoggingConfigurationRequest(String str, BucketLoggingConfiguration bucketLoggingConfiguration) {
        this.bucketName = str;
        this.loggingConfiguration = bucketLoggingConfiguration;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public BucketLoggingConfiguration getLoggingConfiguration() {
        return this.loggingConfiguration;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setLoggingConfiguration(BucketLoggingConfiguration bucketLoggingConfiguration) {
        this.loggingConfiguration = bucketLoggingConfiguration;
    }

    public SetBucketLoggingConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public SetBucketLoggingConfigurationRequest withLoggingConfiguration(BucketLoggingConfiguration bucketLoggingConfiguration) {
        setLoggingConfiguration(bucketLoggingConfiguration);
        return this;
    }
}
