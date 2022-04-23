package io.reactivex.internal.operators.single;

import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9645h;
import p611j.p612a.AbstractC10432b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable.class */
public enum SingleInternalHelper$ToFlowable implements AbstractC9645h<AbstractC9852v, AbstractC10432b> {
    INSTANCE;

    public AbstractC10432b apply(AbstractC9852v vVar) {
        return new SingleToFlowable(vVar);
    }
}
