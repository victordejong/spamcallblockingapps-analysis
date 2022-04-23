package com.amazonaws.services.s3.model.analytics;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsConfiguration.class */
public class AnalyticsConfiguration implements Serializable {
    private AnalyticsFilter filter;
    private String id;
    private StorageClassAnalysis storageClassAnalysis;

    public AnalyticsFilter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.id;
    }

    public StorageClassAnalysis getStorageClassAnalysis() {
        return this.storageClassAnalysis;
    }

    public void setFilter(AnalyticsFilter analyticsFilter) {
        this.filter = analyticsFilter;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setStorageClassAnalysis(StorageClassAnalysis storageClassAnalysis) {
        this.storageClassAnalysis = storageClassAnalysis;
    }

    public AnalyticsConfiguration withFilter(AnalyticsFilter analyticsFilter) {
        setFilter(analyticsFilter);
        return this;
    }

    public AnalyticsConfiguration withId(String str) {
        setId(str);
        return this;
    }

    public AnalyticsConfiguration withStorageClassAnalysis(StorageClassAnalysis storageClassAnalysis) {
        setStorageClassAnalysis(storageClassAnalysis);
        return this;
    }
}
