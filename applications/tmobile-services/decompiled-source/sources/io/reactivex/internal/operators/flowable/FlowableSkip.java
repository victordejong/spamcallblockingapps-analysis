package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkip.class */
public final class FlowableSkip<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16550h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber.class */
    static final class SkipSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f16551f;

        /* renamed from: g */
        long f16552g;

        /* renamed from: h */
        Subscription f16553h;

        SkipSubscriber(Subscriber<? super T> subscriber, long j) {
            this.f16551f = subscriber;
            this.f16552g = j;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16553h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16551f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16551f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f16552g;
            if (j != 0) {
                this.f16552g = j - 1;
            } else {
                this.f16551f.onNext(t);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16553h, subscription)) {
                long j = this.f16552g;
                this.f16553h = subscription;
                this.f16551f.onSubscribe(this);
                subscription.request(j);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16553h.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new SkipSubscriber(subscriber, this.f16550h));
    }
}
