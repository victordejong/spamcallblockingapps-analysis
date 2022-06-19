package com.amazonaws.services.p101s3.model.lifecycle;
/* renamed from: com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate.class */
public final class LifecyclePrefixPredicate extends LifecycleFilterPredicate {
    private final String prefix;

    public LifecyclePrefixPredicate(String str) {
        this.prefix = str;
    }

    @Override // com.amazonaws.services.p101s3.model.lifecycle.LifecycleFilterPredicate
    public final void accept(LifecyclePredicateVisitor lifecyclePredicateVisitor) {
        lifecyclePredicateVisitor.visit(this);
    }

    public final String getPrefix() {
        return this.prefix;
    }
}
