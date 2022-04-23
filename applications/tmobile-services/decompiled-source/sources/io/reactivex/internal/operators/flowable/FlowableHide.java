package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableHide.class */
public final class FlowableHide<T> extends AbstractFlowableWithUpstream<T, T> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableHide$HideSubscriber.class */
    static final class HideSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f16058f;

        /* renamed from: g */
        Subscription f16059g;

        HideSubscriber(Subscriber<? super T> subscriber) {
            this.f16058f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16059g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16058f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16058f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16058f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16059g, subscription)) {
                this.f16059g = subscription;
                this.f16058f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16059g.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new HideSubscriber(subscriber));
    }
}
