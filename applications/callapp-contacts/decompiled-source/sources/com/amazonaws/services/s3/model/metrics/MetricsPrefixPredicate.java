package com.amazonaws.services.s3.model.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate.class */
public final class MetricsPrefixPredicate extends MetricsFilterPredicate {
    private final String prefix;

    public MetricsPrefixPredicate(String str) {
        this.prefix = str;
    }

    @Override // com.amazonaws.services.s3.model.metrics.MetricsFilterPredicate
    public final void accept(MetricsPredicateVisitor metricsPredicateVisitor) {
        metricsPredicateVisitor.visit(this);
    }

    public final String getPrefix() {
        return this.prefix;
    }
}
