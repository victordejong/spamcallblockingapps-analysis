package io.reactivex.internal.operators.flowable;

import p530d.p541c.p542a0.AbstractC9644g;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax.class */
public enum FlowableInternalHelper$RequestMax implements AbstractC9644g<AbstractC10434d> {
    INSTANCE;

    public void accept(AbstractC10434d dVar) throws Exception {
        dVar.request(Long.MAX_VALUE);
    }
}
