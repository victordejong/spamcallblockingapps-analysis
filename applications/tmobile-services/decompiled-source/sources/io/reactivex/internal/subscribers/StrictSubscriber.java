package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/StrictSubscriber.class */
public class StrictSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
    private static final long serialVersionUID = -4945028590049415624L;

    /* renamed from: f */
    final Subscriber<? super T> f19395f;

    /* renamed from: g */
    final AtomicThrowable f19396g = new AtomicThrowable();

    /* renamed from: h */
    final AtomicLong f19397h = new AtomicLong();

    /* renamed from: i */
    final AtomicReference<Subscription> f19398i = new AtomicReference<>();

    /* renamed from: j */
    final AtomicBoolean f19399j = new AtomicBoolean();

    /* renamed from: k */
    volatile boolean f19400k;

    public StrictSubscriber(Subscriber<? super T> subscriber) {
        this.f19395f = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        if (!this.f19400k) {
            SubscriptionHelper.cancel(this.f19398i);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        this.f19400k = true;
        HalfSerializer.m3432b(this.f19395f, this, this.f19396g);
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        this.f19400k = true;
        HalfSerializer.m3430d(this.f19395f, th, this, this.f19396g);
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        HalfSerializer.m3428f(this.f19395f, t, this, this.f19396g);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f19399j.compareAndSet(false, true)) {
            this.f19395f.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.f19398i, this.f19397h, subscription);
            return;
        }
        subscription.cancel();
        cancel();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        if (j <= 0) {
            cancel();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + j));
            return;
        }
        SubscriptionHelper.deferredRequest(this.f19398i, this.f19397h, j);
    }
}
