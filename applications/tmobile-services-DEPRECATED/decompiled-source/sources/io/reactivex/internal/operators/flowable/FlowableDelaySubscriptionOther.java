package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther.class */
public final class FlowableDelaySubscriptionOther<T, U> extends Flowable<T> {

    /* renamed from: g */
    final Publisher<? extends T> f15768g;

    /* renamed from: h */
    final Publisher<U> f15769h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$MainSubscriber.class */
    static final class MainSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 2259811067697317255L;

        /* renamed from: f */
        final Subscriber<? super T> f15770f;

        /* renamed from: g */
        final Publisher<? extends T> f15771g;

        /* renamed from: h */
        final MainSubscriber<T>.OtherSubscriber f15772h = new OtherSubscriber();

        /* renamed from: i */
        final AtomicReference<Subscription> f15773i = new AtomicReference<>();

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$MainSubscriber$OtherSubscriber.class */
        final class OtherSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
            private static final long serialVersionUID = -3892798459447644106L;

            OtherSubscriber() {
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                if (get() != SubscriptionHelper.CANCELLED) {
                    MainSubscriber.this.m4254a();
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                if (get() != SubscriptionHelper.CANCELLED) {
                    MainSubscriber.this.f15770f.onError(th);
                } else {
                    RxJavaPlugins.m3354t(th);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                Subscription subscription = get();
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (subscription != subscriptionHelper) {
                    lazySet(subscriptionHelper);
                    subscription.cancel();
                    MainSubscriber.this.m4254a();
                }
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                if (SubscriptionHelper.setOnce(this, subscription)) {
                    subscription.request(Long.MAX_VALUE);
                }
            }
        }

        MainSubscriber(Subscriber<? super T> subscriber, Publisher<? extends T> publisher) {
            this.f15770f = subscriber;
            this.f15771g = publisher;
        }

        /* renamed from: a */
        void m4254a() {
            this.f15771g.mo5c(this);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f15772h);
            SubscriptionHelper.cancel(this.f15773i);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15770f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15770f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15770f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f15773i, this, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                SubscriptionHelper.deferredRequest(this.f15773i, this, j);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        MainSubscriber mainSubscriber = new MainSubscriber(subscriber, this.f15768g);
        subscriber.onSubscribe(mainSubscriber);
        this.f15769h.mo5c(mainSubscriber.f15772h);
    }
}
