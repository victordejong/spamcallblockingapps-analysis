package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.CountDownLatch;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BlockingBaseSubscriber.class */
public abstract class BlockingBaseSubscriber<T> extends CountDownLatch implements FlowableSubscriber<T> {

    /* renamed from: f */
    T f19353f;

    /* renamed from: g */
    Subscription f19354g;

    /* renamed from: h */
    volatile boolean f19355h;

    public BlockingBaseSubscriber() {
        super(1);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.f19354g, subscription)) {
            this.f19354g = subscription;
            if (!this.f19355h) {
                subscription.request(Long.MAX_VALUE);
                if (this.f19355h) {
                    this.f19354g = SubscriptionHelper.CANCELLED;
                    subscription.cancel();
                }
            }
        }
    }
}
