package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.model.metrics.MetricsConfiguration;
import java.io.Serializable;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult.class */
public class ListBucketMetricsConfigurationsResult implements Serializable {
    private String continuationToken;
    private boolean isTruncated;
    private List<MetricsConfiguration> metricsConfigurationList;
    private String nextContinuationToken;

    public String getContinuationToken() {
        return this.continuationToken;
    }

    public List<MetricsConfiguration> getMetricsConfigurationList() {
        return this.metricsConfigurationList;
    }

    public String getNextContinuationToken() {
        return this.nextContinuationToken;
    }

    public boolean isTruncated() {
        return this.isTruncated;
    }

    public void setContinuationToken(String str) {
        this.continuationToken = str;
    }

    public void setMetricsConfigurationList(List<MetricsConfiguration> list) {
        this.metricsConfigurationList = list;
    }

    public void setNextContinuationToken(String str) {
        this.nextContinuationToken = str;
    }

    public void setTruncated(boolean z) {
        this.isTruncated = z;
    }

    public ListBucketMetricsConfigurationsResult withContinuationToken(String str) {
        setContinuationToken(str);
        return this;
    }

    public ListBucketMetricsConfigurationsResult withMetricsConfigurationList(List<MetricsConfiguration> list) {
        setMetricsConfigurationList(list);
        return this;
    }

    public ListBucketMetricsConfigurationsResult withNextContinuationToken(String str) {
        setNextContinuationToken(str);
        return this;
    }

    public ListBucketMetricsConfigurationsResult withTruncated(boolean z) {
        setTruncated(z);
        return this;
    }
}
