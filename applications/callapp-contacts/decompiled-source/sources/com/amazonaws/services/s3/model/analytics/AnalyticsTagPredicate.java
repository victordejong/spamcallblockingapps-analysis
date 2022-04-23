package com.amazonaws.services.s3.model.analytics;

import com.amazonaws.services.s3.model.Tag;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate.class */
public final class AnalyticsTagPredicate extends AnalyticsFilterPredicate {
    private final Tag tag;

    public AnalyticsTagPredicate(Tag tag) {
        this.tag = tag;
    }

    @Override // com.amazonaws.services.s3.model.analytics.AnalyticsFilterPredicate
    public final void accept(AnalyticsPredicateVisitor analyticsPredicateVisitor) {
        analyticsPredicateVisitor.visit(this);
    }

    public final Tag getTag() {
        return this.tag;
    }
}
