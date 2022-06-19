package com.amazonaws.services.p101s3.model.metrics;

import com.amazonaws.services.p101s3.model.Tag;
/* renamed from: com.amazonaws.services.s3.model.metrics.MetricsTagPredicate */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsTagPredicate.class */
public final class MetricsTagPredicate extends MetricsFilterPredicate {
    private final Tag tag;

    public MetricsTagPredicate(Tag tag) {
        this.tag = tag;
    }

    @Override // com.amazonaws.services.p101s3.model.metrics.MetricsFilterPredicate
    public final void accept(MetricsPredicateVisitor metricsPredicateVisitor) {
        metricsPredicateVisitor.visit(this);
    }

    public final Tag getTag() {
        return this.tag;
    }
}
