package com.amazonaws.services.p101s3.model.metrics;
/* renamed from: com.amazonaws.services.s3.model.metrics.MetricsPredicateVisitor */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor.class */
public interface MetricsPredicateVisitor {
    void visit(MetricsAndOperator metricsAndOperator);

    void visit(MetricsPrefixPredicate metricsPrefixPredicate);

    void visit(MetricsTagPredicate metricsTagPredicate);
}
