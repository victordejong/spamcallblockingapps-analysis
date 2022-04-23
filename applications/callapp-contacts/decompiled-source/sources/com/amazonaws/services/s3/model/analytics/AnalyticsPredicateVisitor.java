package com.amazonaws.services.s3.model.analytics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor.class */
public interface AnalyticsPredicateVisitor {
    void visit(AnalyticsAndOperator analyticsAndOperator);

    void visit(AnalyticsPrefixPredicate analyticsPrefixPredicate);

    void visit(AnalyticsTagPredicate analyticsTagPredicate);
}
