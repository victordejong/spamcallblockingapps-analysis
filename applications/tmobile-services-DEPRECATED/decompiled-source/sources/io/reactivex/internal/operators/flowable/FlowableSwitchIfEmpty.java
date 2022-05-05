package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty.class */
public final class FlowableSwitchIfEmpty<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Publisher<? extends T> f16597h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber.class */
    static final class SwitchIfEmptySubscriber<T> implements FlowableSubscriber<T> {

        /* renamed from: f */
        final Subscriber<? super T> f16598f;

        /* renamed from: g */
        final Publisher<? extends T> f16599g;

        /* renamed from: i */
        boolean f16601i = true;

        /* renamed from: h */
        final SubscriptionArbiter f16600h = new SubscriptionArbiter(false);

        SwitchIfEmptySubscriber(Subscriber<? super T> subscriber, Publisher<? extends T> publisher) {
            this.f16598f = subscriber;
            this.f16599g = publisher;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f16601i) {
                this.f16601i = false;
                this.f16599g.mo5c(this);
                return;
            }
            this.f16598f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16598f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16601i) {
                this.f16601i = false;
            }
            this.f16598f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f16600h.m3462h(subscription);
        }
    }

    public FlowableSwitchIfEmpty(Flowable<T> flowable, Publisher<? extends T> publisher) {
        super(flowable);
        this.f16597h = publisher;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        SwitchIfEmptySubscriber switchIfEmptySubscriber = new SwitchIfEmptySubscriber(subscriber, this.f16597h);
        subscriber.onSubscribe(switchIfEmptySubscriber.f16600h);
        this.f15411g.m4493v(switchIfEmptySubscriber);
    }
}
