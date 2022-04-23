package com.amazonaws.services.s3.model.lifecycle;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/lifecycle/LifecycleFilter.class */
public class LifecycleFilter implements Serializable {
    private LifecycleFilterPredicate predicate;

    public LifecycleFilter() {
    }

    public LifecycleFilter(LifecycleFilterPredicate lifecycleFilterPredicate) {
        this.predicate = lifecycleFilterPredicate;
    }

    public LifecycleFilterPredicate getPredicate() {
        return this.predicate;
    }

    public void setPredicate(LifecycleFilterPredicate lifecycleFilterPredicate) {
        this.predicate = lifecycleFilterPredicate;
    }

    public LifecycleFilter withPredicate(LifecycleFilterPredicate lifecycleFilterPredicate) {
        setPredicate(lifecycleFilterPredicate);
        return this;
    }
}
