package com.amazonaws.services.p101s3.model.analytics;
/* renamed from: com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate.class */
public final class AnalyticsPrefixPredicate extends AnalyticsFilterPredicate {
    private final String prefix;

    public AnalyticsPrefixPredicate(String str) {
        this.prefix = str;
    }

    @Override // com.amazonaws.services.p101s3.model.analytics.AnalyticsFilterPredicate
    public final void accept(AnalyticsPredicateVisitor analyticsPredicateVisitor) {
        analyticsPredicateVisitor.visit(this);
    }

    public final String getPrefix() {
        return this.prefix;
    }
}
