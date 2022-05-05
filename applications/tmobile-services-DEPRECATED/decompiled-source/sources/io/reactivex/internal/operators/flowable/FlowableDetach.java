package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDetach.class */
public final class FlowableDetach<T> extends AbstractFlowableWithUpstream<T, T> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber.class */
    static final class DetachSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        Subscriber<? super T> f15780f;

        /* renamed from: g */
        Subscription f15781g;

        DetachSubscriber(Subscriber<? super T> subscriber) {
            this.f15780f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Subscription subscription = this.f15781g;
            this.f15781g = EmptyComponent.INSTANCE;
            this.f15780f = EmptyComponent.asSubscriber();
            subscription.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscriber<? super T> subscriber = this.f15780f;
            this.f15781g = EmptyComponent.INSTANCE;
            this.f15780f = EmptyComponent.asSubscriber();
            subscriber.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscriber<? super T> subscriber = this.f15780f;
            this.f15781g = EmptyComponent.INSTANCE;
            this.f15780f = EmptyComponent.asSubscriber();
            subscriber.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15780f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15781g, subscription)) {
                this.f15781g = subscription;
                this.f15780f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15781g.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new DetachSubscriber(subscriber));
    }
}
