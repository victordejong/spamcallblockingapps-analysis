package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/ScalarSubscription.class */
public final class ScalarSubscription<T> extends AtomicInteger implements AbstractC9658g<T> {
    public static final int CANCELLED = 2;
    public static final int NO_REQUEST = 0;
    public static final int REQUESTED = 1;
    public static final long serialVersionUID = -3830916580126663321L;
    public final AbstractC10433c<? super T> subscriber;
    public final T value;

    public ScalarSubscription(AbstractC10433c<? super T> cVar, T t) {
        this.subscriber = cVar;
        this.value = t;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        lazySet(2);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        lazySet(1);
    }

    public boolean isCancelled() {
        return get() == 2;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.value;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j) && compareAndSet(0, 1)) {
            AbstractC10433c<? super T> cVar = this.subscriber;
            cVar.onNext((T) this.value);
            if (get() != 2) {
                cVar.onComplete();
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        return i & 1;
    }
}
