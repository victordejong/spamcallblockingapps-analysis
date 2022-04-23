package io.reactivex.internal.subscriptions;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.QueueSubscription;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/ScalarSubscription.class */
public final class ScalarSubscription<T> extends AtomicInteger implements QueueSubscription<T> {
    private static final long serialVersionUID = -3830916580126663321L;

    /* renamed from: f */
    final T f19407f;

    /* renamed from: g */
    final Subscriber<? super T> f19408g;

    public ScalarSubscription(Subscriber<? super T> subscriber, T t) {
        this.f19408g = subscriber;
        this.f19407f = t;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        lazySet(2);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        lazySet(1);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.f19407f;
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        if (SubscriptionHelper.validate(j) && compareAndSet(0, 1)) {
            Subscriber<? super T> subscriber = this.f19408g;
            subscriber.onNext((T) this.f19407f);
            if (get() != 2) {
                subscriber.onComplete();
            }
        }
    }

    @Override // io.reactivex.internal.fuseable.QueueFuseable
    public int requestFusion(int i) {
        return i & 1;
    }
}
