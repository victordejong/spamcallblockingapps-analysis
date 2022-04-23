package com.amazonaws.services.s3.model.lifecycle;

import com.amazonaws.services.s3.model.Tag;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate.class */
public final class LifecycleTagPredicate extends LifecycleFilterPredicate {
    private final Tag tag;

    public LifecycleTagPredicate(Tag tag) {
        this.tag = tag;
    }

    @Override // com.amazonaws.services.s3.model.lifecycle.LifecycleFilterPredicate
    public final void accept(LifecyclePredicateVisitor lifecyclePredicateVisitor) {
        lifecyclePredicateVisitor.visit(this);
    }

    public final Tag getTag() {
        return this.tag;
    }
}
