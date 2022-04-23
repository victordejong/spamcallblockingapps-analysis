package com.amazonaws.services.s3.model.metrics;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsAndOperator.class */
public final class MetricsAndOperator extends MetricsNAryOperator {
    public MetricsAndOperator(List<MetricsFilterPredicate> list) {
        super(list);
    }

    @Override // com.amazonaws.services.s3.model.metrics.MetricsFilterPredicate
    public final void accept(MetricsPredicateVisitor metricsPredicateVisitor) {
        metricsPredicateVisitor.visit(this);
    }

    @Override // com.amazonaws.services.s3.model.metrics.MetricsNAryOperator
    public final /* bridge */ /* synthetic */ List getOperands() {
        return super.getOperands();
    }
}
