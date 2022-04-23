package io.reactivex.disposables;

import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/disposables/ReferenceDisposable.class */
public abstract class ReferenceDisposable<T> extends AtomicReference<T> implements AbstractC9861b {
    public static final long serialVersionUID = 6537757548749041217L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReferenceDisposable(T t) {
        super(t);
        C9650a.m2095a((Object) t, "value is null");
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final void dispose() {
        T andSet;
        if (get() != null && (andSet = getAndSet(null)) != null) {
            onDisposed(andSet);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final boolean isDisposed() {
        return get() == null;
    }

    public abstract void onDisposed(T t);
}
