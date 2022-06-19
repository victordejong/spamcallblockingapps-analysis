package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.SetBucketReplicationConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest.class */
public class SetBucketReplicationConfigurationRequest extends AmazonWebServiceRequest {
    private String bucketName;
    private BucketReplicationConfiguration replicationConfiguration;

    public SetBucketReplicationConfigurationRequest() {
    }

    public SetBucketReplicationConfigurationRequest(String str, BucketReplicationConfiguration bucketReplicationConfiguration) {
        this.bucketName = str;
        this.replicationConfiguration = bucketReplicationConfiguration;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public BucketReplicationConfiguration getReplicationConfiguration() {
        return this.replicationConfiguration;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setReplicationConfiguration(BucketReplicationConfiguration bucketReplicationConfiguration) {
        this.replicationConfiguration = bucketReplicationConfiguration;
    }

    public SetBucketReplicationConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public SetBucketReplicationConfigurationRequest withReplicationConfiguration(BucketReplicationConfiguration bucketReplicationConfiguration) {
        setReplicationConfiguration(bucketReplicationConfiguration);
        return this;
    }
}
