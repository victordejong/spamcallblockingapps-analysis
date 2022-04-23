package io.reactivex.internal.subscriptions;

import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/DeferredScalarSubscription.class */
public class DeferredScalarSubscription<T> extends BasicIntQueueSubscription<T> {
    public static final int CANCELLED = 4;
    public static final int FUSED_CONSUMED = 32;
    public static final int FUSED_EMPTY = 8;
    public static final int FUSED_READY = 16;
    public static final int HAS_REQUEST_HAS_VALUE = 3;
    public static final int HAS_REQUEST_NO_VALUE = 2;
    public static final int NO_REQUEST_HAS_VALUE = 1;
    public static final int NO_REQUEST_NO_VALUE = 0;
    public static final long serialVersionUID = -2151279923272604993L;
    public final AbstractC10433c<? super T> actual;
    public T value;

    public DeferredScalarSubscription(AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
    }

    public void cancel() {
        set(4);
        this.value = null;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete(T t) {
        int i = get();
        while (i != 8) {
            if ((i & (-3)) == 0) {
                if (i == 2) {
                    lazySet(3);
                    AbstractC10433c<? super T> cVar = this.actual;
                    cVar.onNext(t);
                    if (get() != 4) {
                        cVar.onComplete();
                        return;
                    }
                    return;
                }
                this.value = t;
                if (!compareAndSet(0, 1)) {
                    int i2 = get();
                    i = i2;
                    if (i2 == 4) {
                        this.value = null;
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.value = t;
        lazySet(16);
        AbstractC10433c<? super T> cVar2 = this.actual;
        cVar2.onNext(t);
        if (get() != 4) {
            cVar2.onComplete();
        }
    }

    public final boolean isCancelled() {
        return get() == 4;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        T t = this.value;
        this.value = null;
        return t;
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void request(long j) {
        T t;
        if (SubscriptionHelper.validate(j)) {
            do {
                int i = get();
                if ((i & (-2)) == 0) {
                    if (i == 1) {
                        if (compareAndSet(1, 3) && (t = this.value) != null) {
                            this.value = null;
                            AbstractC10433c<? super T> cVar = this.actual;
                            cVar.onNext(t);
                            if (get() != 4) {
                                cVar.onComplete();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public final int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final boolean tryCancel() {
        return getAndSet(4) != 4;
    }
}
