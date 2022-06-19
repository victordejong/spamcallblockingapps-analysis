package com.amazonaws.services.p101s3.model.analytics;
/* renamed from: com.amazonaws.services.s3.model.analytics.AnalyticsPredicateVisitor */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor.class */
public interface AnalyticsPredicateVisitor {
    void visit(AnalyticsAndOperator analyticsAndOperator);

    void visit(AnalyticsPrefixPredicate analyticsPrefixPredicate);

    void visit(AnalyticsTagPredicate analyticsTagPredicate);
}
