package com.amazonaws.services.s3.model.metrics;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsFilterPredicate.class */
public abstract class MetricsFilterPredicate implements Serializable {
    public abstract void accept(MetricsPredicateVisitor metricsPredicateVisitor);
}
