package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BlockingSubscriber.class */
public final class BlockingSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {

    /* renamed from: g */
    public static final Object f19356g = new Object();
    private static final long serialVersionUID = -4875965440900746268L;

    /* renamed from: f */
    final Queue<Object> f19357f;

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.f19357f.offer(f19356g);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        this.f19357f.offer(NotificationLite.complete());
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        this.f19357f.offer(NotificationLite.error(th));
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        this.f19357f.offer(NotificationLite.next(t));
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this, subscription)) {
            this.f19357f.offer(NotificationLite.subscription(this));
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        get().request(j);
    }
}
