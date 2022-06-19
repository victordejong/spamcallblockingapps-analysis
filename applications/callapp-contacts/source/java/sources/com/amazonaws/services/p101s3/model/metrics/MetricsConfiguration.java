package com.amazonaws.services.p101s3.model.metrics;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.metrics.MetricsConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsConfiguration.class */
public class MetricsConfiguration implements Serializable {
    private MetricsFilter filter;

    /* renamed from: id */
    private String f12470id;

    public MetricsFilter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.f12470id;
    }

    public void setFilter(MetricsFilter metricsFilter) {
        this.filter = metricsFilter;
    }

    public void setId(String str) {
        this.f12470id = str;
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
