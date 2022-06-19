package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.SetBucketNotificationConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest.class */
public class SetBucketNotificationConfigurationRequest extends AmazonWebServiceRequest {
    private String bucketName;
    private BucketNotificationConfiguration notificationConfiguration;

    @Deprecated
    public SetBucketNotificationConfigurationRequest(BucketNotificationConfiguration bucketNotificationConfiguration, String str) {
        this.notificationConfiguration = bucketNotificationConfiguration;
        this.bucketName = str;
    }

    public SetBucketNotificationConfigurationRequest(String str, BucketNotificationConfiguration bucketNotificationConfiguration) {
        this.bucketName = str;
        this.notificationConfiguration = bucketNotificationConfiguration;
    }

    @Deprecated
    public String getBucket() {
        return this.bucketName;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    @Deprecated
    public BucketNotificationConfiguration getBucketNotificationConfiguration() {
        return this.notificationConfiguration;
    }

    public BucketNotificationConfiguration getNotificationConfiguration() {
        return this.notificationConfiguration;
    }

    @Deprecated
    public void setBucket(String str) {
        this.bucketName = str;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    @Deprecated
    public void setBucketNotificationConfiguration(BucketNotificationConfiguration bucketNotificationConfiguration) {
        this.notificationConfiguration = bucketNotificationConfiguration;
    }

    public void setNotificationConfiguration(BucketNotificationConfiguration bucketNotificationConfiguration) {
        this.notificationConfiguration = bucketNotificationConfiguration;
    }

    public SetBucketNotificationConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public SetBucketNotificationConfigurationRequest withNotificationConfiguration(BucketNotificationConfiguration bucketNotificationConfiguration) {
        setNotificationConfiguration(bucketNotificationConfiguration);
        return this;
    }
}
