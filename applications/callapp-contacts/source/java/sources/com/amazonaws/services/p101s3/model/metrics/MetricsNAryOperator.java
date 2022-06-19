package com.amazonaws.services.p101s3.model.metrics;

import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.metrics.MetricsNAryOperator */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/metrics/MetricsNAryOperator.class */
abstract class MetricsNAryOperator extends MetricsFilterPredicate {
    private final List<MetricsFilterPredicate> operands;

    public MetricsNAryOperator(List<MetricsFilterPredicate> list) {
        this.operands = list;
    }

    public List<MetricsFilterPredicate> getOperands() {
        return this.operands;
    }
}
