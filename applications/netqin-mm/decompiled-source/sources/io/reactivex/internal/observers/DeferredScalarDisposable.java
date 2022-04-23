package io.reactivex.internal.observers;

import p530d.p541c.AbstractC9844r;
import p530d.p541c.p560e0.C9815a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/DeferredScalarDisposable.class */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {
    public static final int DISPOSED = 4;
    public static final int FUSED_CONSUMED = 32;
    public static final int FUSED_EMPTY = 8;
    public static final int FUSED_READY = 16;
    public static final int TERMINATED = 2;
    public static final long serialVersionUID = -5502432239815349361L;
    public final AbstractC9844r<? super T> actual;
    public T value;

    public DeferredScalarDisposable(AbstractC9844r<? super T> rVar) {
        this.actual = rVar;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete() {
        if ((get() & 54) == 0) {
            lazySet(2);
            this.actual.onComplete();
        }
    }

    public final void complete(T t) {
        int i = get();
        if ((i & 54) == 0) {
            AbstractC9844r<? super T> rVar = this.actual;
            if (i == 8) {
                this.value = t;
                lazySet(16);
                rVar.onNext(null);
            } else {
                lazySet(2);
                rVar.onNext(t);
            }
            if (get() != 4) {
                rVar.onComplete();
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        set(4);
        this.value = null;
    }

    public final void error(Throwable th) {
        if ((get() & 54) != 0) {
            C9815a.m1923b(th);
            return;
        }
        lazySet(2);
        this.actual.onError(th);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final T poll() throws Exception {
        if (get() != 16) {
            return null;
        }
        T t = this.value;
        this.value = null;
        lazySet(32);
        return t;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public final int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final boolean tryDispose() {
        return getAndSet(4) != 4;
    }
}
