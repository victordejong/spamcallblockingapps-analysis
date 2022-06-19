package com.amazonaws.services.p101s3.model.metrics;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.metrics.MetricsFilter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsFilter.class */
public class MetricsFilter implements Serializable {
    private MetricsFilterPredicate predicate;

    public MetricsFilter() {
    }

    public MetricsFilter(MetricsFilterPredicate metricsFilterPredicate) {
        this.predicate = metricsFilterPredicate;
    }

    public MetricsFilterPredicate getPredicate() {
        return this.predicate;
    }

    public void setPredicate(MetricsFilterPredicate metricsFilterPredicate) {
        this.predicate = metricsFilterPredicate;
    }

    public MetricsFilter withPredicate(MetricsFilterPredicate metricsFilterPredicate) {
        setPredicate(metricsFilterPredicate);
        return this;
    }
}
