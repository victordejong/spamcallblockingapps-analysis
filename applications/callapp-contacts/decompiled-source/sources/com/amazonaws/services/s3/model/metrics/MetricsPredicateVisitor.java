package com.amazonaws.services.s3.model.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor.class */
public interface MetricsPredicateVisitor {
    void visit(MetricsAndOperator metricsAndOperator);

    void visit(MetricsPrefixPredicate metricsPrefixPredicate);

    void visit(MetricsTagPredicate metricsTagPredicate);
}
