package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.model.metrics.MetricsConfiguration;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.GetBucketMetricsConfigurationResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult.class */
public class GetBucketMetricsConfigurationResult implements Serializable {
    private MetricsConfiguration metricsConfiguration;

    public MetricsConfiguration getMetricsConfiguration() {
        return this.metricsConfiguration;
    }

    public void setMetricsConfiguration(MetricsConfiguration metricsConfiguration) {
        this.metricsConfiguration = metricsConfiguration;
    }

    public GetBucketMetricsConfigurationResult withMetricsConfiguration(MetricsConfiguration metricsConfiguration) {
        setMetricsConfiguration(metricsConfiguration);
        return this;
    }
}
