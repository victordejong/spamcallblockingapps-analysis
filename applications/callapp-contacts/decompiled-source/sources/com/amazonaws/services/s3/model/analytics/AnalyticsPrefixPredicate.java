package com.amazonaws.services.s3.model.analytics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate.class */
public final class AnalyticsPrefixPredicate extends AnalyticsFilterPredicate {
    private final String prefix;

    public AnalyticsPrefixPredicate(String str) {
        this.prefix = str;
    }

    @Override // com.amazonaws.services.s3.model.analytics.AnalyticsFilterPredicate
    public final void accept(AnalyticsPredicateVisitor analyticsPredicateVisitor) {
        analyticsPredicateVisitor.visit(this);
    }

    public final String getPrefix() {
        return this.prefix;
    }
}
