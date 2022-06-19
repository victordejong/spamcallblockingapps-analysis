package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.services.p101s3.model.metrics.MetricsConfiguration;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.SetBucketMetricsConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest.class */
public class SetBucketMetricsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private MetricsConfiguration metricsConfiguration;

    public SetBucketMetricsConfigurationRequest() {
    }

    public SetBucketMetricsConfigurationRequest(String str, MetricsConfiguration metricsConfiguration) {
        this.bucketName = str;
        this.metricsConfiguration = metricsConfiguration;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public MetricsConfiguration getMetricsConfiguration() {
        return this.metricsConfiguration;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setMetricsConfiguration(MetricsConfiguration metricsConfiguration) {
        this.metricsConfiguration = metricsConfiguration;
    }

    public SetBucketMetricsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public SetBucketMetricsConfigurationRequest withMetricsConfiguration(MetricsConfiguration metricsConfiguration) {
        setMetricsConfiguration(metricsConfiguration);
        return this;
    }
}
