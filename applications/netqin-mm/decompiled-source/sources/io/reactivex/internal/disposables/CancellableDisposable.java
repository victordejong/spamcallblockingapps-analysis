package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p542a0.AbstractC9643f;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/disposables/CancellableDisposable.class */
public final class CancellableDisposable extends AtomicReference<AbstractC9643f> implements AbstractC9861b {
    public static final long serialVersionUID = 5718521705281392066L;

    public CancellableDisposable(AbstractC9643f fVar) {
        super(fVar);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        AbstractC9643f andSet;
        if (get() != null && (andSet = getAndSet(null)) != null) {
            try {
                andSet.cancel();
            } catch (Exception e) {
                C9863a.m1822b(e);
                C9815a.m1923b(e);
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == null;
    }
}
