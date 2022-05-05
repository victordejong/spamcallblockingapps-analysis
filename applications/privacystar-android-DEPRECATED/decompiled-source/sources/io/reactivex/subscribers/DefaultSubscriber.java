package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/DefaultSubscriber.class */
public abstract class DefaultSubscriber<T> implements FlowableSubscriber<T> {

    /* renamed from: s */
    private Subscription f743s;

    protected final void cancel() {
        Subscription subscription = this.f743s;
        this.f743s = SubscriptionHelper.CANCELLED;
        subscription.cancel();
    }

    protected void onStart() {
        request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (EndConsumerHelper.validate(this.f743s, subscription, getClass())) {
            this.f743s = subscription;
            onStart();
        }
    }

    protected final void request(long j) {
        Subscription subscription = this.f743s;
        if (subscription != null) {
            subscription.request(j);
        }
    }
}
