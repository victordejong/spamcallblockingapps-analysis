package com.amazonaws.services.s3.model.lifecycle;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator.class */
abstract class LifecycleNAryOperator extends LifecycleFilterPredicate {
    private final List<LifecycleFilterPredicate> operands;

    public LifecycleNAryOperator(List<LifecycleFilterPredicate> list) {
        this.operands = list;
    }

    public List<LifecycleFilterPredicate> getOperands() {
        return this.operands;
    }
}
