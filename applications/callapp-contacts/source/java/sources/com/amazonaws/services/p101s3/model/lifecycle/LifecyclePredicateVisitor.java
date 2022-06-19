package com.amazonaws.services.p101s3.model.lifecycle;
/* renamed from: com.amazonaws.services.s3.model.lifecycle.LifecyclePredicateVisitor */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor.class */
public interface LifecyclePredicateVisitor {
    void visit(LifecycleAndOperator lifecycleAndOperator);

    void visit(LifecyclePrefixPredicate lifecyclePrefixPredicate);

    void visit(LifecycleTagPredicate lifecycleTagPredicate);
}
