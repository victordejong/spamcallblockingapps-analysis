package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest.class */
public class SetBucketAnalyticsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private AnalyticsConfiguration analyticsConfiguration;
    private String bucketName;

    public SetBucketAnalyticsConfigurationRequest() {
    }

    public SetBucketAnalyticsConfigurationRequest(String str, AnalyticsConfiguration analyticsConfiguration) {
        this.bucketName = str;
        this.analyticsConfiguration = analyticsConfiguration;
    }

    public AnalyticsConfiguration getAnalyticsConfiguration() {
        return this.analyticsConfiguration;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setAnalyticsConfiguration(AnalyticsConfiguration analyticsConfiguration) {
        this.analyticsConfiguration = analyticsConfiguration;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public SetBucketAnalyticsConfigurationRequest withAnalyticsConfiguration(AnalyticsConfiguration analyticsConfiguration) {
        setAnalyticsConfiguration(analyticsConfiguration);
        return this;
    }

    public SetBucketAnalyticsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }
}
