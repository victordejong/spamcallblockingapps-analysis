package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/DeferredScalarSubscriber.class */
public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements FlowableSubscriber<T> {
    private static final long serialVersionUID = 2984505488220891551L;

    /* renamed from: h */
    protected Subscription f19364h;

    /* renamed from: i */
    protected boolean f19365i;

    public DeferredScalarSubscriber(Subscriber<? super R> subscriber) {
        super(subscriber);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
    public void cancel() {
        super.cancel();
        this.f19364h.cancel();
    }

    public void onComplete() {
        if (this.f19365i) {
            m3470d(this.f19406g);
        } else {
            this.f19405f.onComplete();
        }
    }

    public void onError(Throwable th) {
        this.f19406g = null;
        this.f19405f.onError(th);
    }

    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.f19364h, subscription)) {
            this.f19364h = subscription;
            this.f19405f.onSubscribe(this);
            subscription.request(Long.MAX_VALUE);
        }
    }
}
