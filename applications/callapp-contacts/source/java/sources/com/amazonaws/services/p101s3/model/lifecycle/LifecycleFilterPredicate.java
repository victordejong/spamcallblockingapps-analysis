package com.amazonaws.services.p101s3.model.lifecycle;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.lifecycle.LifecycleFilterPredicate */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate.class */
public abstract class LifecycleFilterPredicate implements Serializable {
    public abstract void accept(LifecyclePredicateVisitor lifecyclePredicateVisitor);
}
