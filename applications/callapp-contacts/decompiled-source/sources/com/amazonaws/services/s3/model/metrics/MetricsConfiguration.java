package com.amazonaws.services.s3.model.metrics;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsConfiguration.class */
public class MetricsConfiguration implements Serializable {
    private MetricsFilter filter;
    private String id;

    public MetricsFilter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.id;
    }

    public void setFilter(MetricsFilter metricsFilter) {
        this.filter = metricsFilter;
    }

    public void setId(String str) {
        this.id = str;
    }

    public MetricsConfiguration withFilter(MetricsFilter metricsFilter) {
        setFilter(metricsFilter);
        return this;
    }

    public MetricsConfiguration withId(String str) {
        setId(str);
        return this;
    }
}
