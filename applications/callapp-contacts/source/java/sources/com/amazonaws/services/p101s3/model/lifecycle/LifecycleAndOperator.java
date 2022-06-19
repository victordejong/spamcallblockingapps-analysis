package com.amazonaws.services.p101s3.model.lifecycle;

import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator.class */
public final class LifecycleAndOperator extends LifecycleNAryOperator {
    public LifecycleAndOperator(List<LifecycleFilterPredicate> list) {
        super(list);
    }

    @Override // com.amazonaws.services.p101s3.model.lifecycle.LifecycleFilterPredicate
    public final void accept(LifecyclePredicateVisitor lifecyclePredicateVisitor) {
        lifecyclePredicateVisitor.visit(this);
    }

    @Override // com.amazonaws.services.p101s3.model.lifecycle.LifecycleNAryOperator
    public final /* bridge */ /* synthetic */ List getOperands() {
        return super.getOperands();
    }
}
