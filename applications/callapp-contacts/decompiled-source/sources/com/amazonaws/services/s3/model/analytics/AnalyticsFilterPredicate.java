package com.amazonaws.services.s3.model.analytics;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate.class */
public abstract class AnalyticsFilterPredicate implements Serializable {
    public abstract void accept(AnalyticsPredicateVisitor analyticsPredicateVisitor);
}
