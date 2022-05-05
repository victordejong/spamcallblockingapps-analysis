package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCount.class */
public final class FlowableCount<T> extends AbstractFlowableWithUpstream<T, Long> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber.class */
    static final class CountSubscriber extends DeferredScalarSubscription<Long> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 4973004223787171406L;

        /* renamed from: h */
        Subscription f15702h;

        /* renamed from: i */
        long f15703i;

        CountSubscriber(Subscriber<? super Long> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f15702h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            m3470d(Long.valueOf(this.f15703i));
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.f15703i++;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15702h, subscription)) {
                this.f15702h = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Long> subscriber) {
        this.f15411g.m4493v(new CountSubscriber(subscriber));
    }
}
