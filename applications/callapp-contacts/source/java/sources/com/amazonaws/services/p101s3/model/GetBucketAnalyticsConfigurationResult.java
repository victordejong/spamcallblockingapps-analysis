package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.model.analytics.AnalyticsConfiguration;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.GetBucketAnalyticsConfigurationResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult.class */
public class GetBucketAnalyticsConfigurationResult implements Serializable {
    private AnalyticsConfiguration analyticsConfiguration;

    public AnalyticsConfiguration getAnalyticsConfiguration() {
        return this.analyticsConfiguration;
    }

    public void setAnalyticsConfiguration(AnalyticsConfiguration analyticsConfiguration) {
        this.analyticsConfiguration = analyticsConfiguration;
    }

    public GetBucketAnalyticsConfigurationResult withAnalyticsConfiguration(AnalyticsConfiguration analyticsConfiguration) {
        setAnalyticsConfiguration(analyticsConfiguration);
        return this;
    }
}
