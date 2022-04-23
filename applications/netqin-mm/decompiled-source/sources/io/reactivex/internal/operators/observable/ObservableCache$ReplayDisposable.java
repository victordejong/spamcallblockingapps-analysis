package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.C9740e;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable.class */
public final class ObservableCache$ReplayDisposable<T> extends AtomicInteger implements AbstractC9861b {
    public static final long serialVersionUID = 7058506693698832024L;
    public volatile boolean cancelled;
    public final AbstractC9844r<? super T> child;
    public Object[] currentBuffer;
    public int currentIndexInBuffer;
    public int index;
    public final C9740e<T> state;

    public ObservableCache$ReplayDisposable(AbstractC9844r<? super T> rVar, C9740e<T> eVar) {
        this.child = rVar;
        this.state = eVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.state.m2075a(this);
            throw null;
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    public void replay() {
        if (getAndIncrement() == 0 && !this.cancelled) {
            this.state.m1995a();
            throw null;
        }
    }
}
