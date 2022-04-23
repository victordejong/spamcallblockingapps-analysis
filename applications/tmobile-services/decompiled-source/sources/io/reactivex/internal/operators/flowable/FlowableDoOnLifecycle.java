package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.LongConsumer;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoOnLifecycle.class */
public final class FlowableDoOnLifecycle<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    private final Consumer<? super Subscription> f15822h;

    /* renamed from: i */
    private final LongConsumer f15823i;

    /* renamed from: j */
    private final Action f15824j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoOnLifecycle$SubscriptionLambdaSubscriber.class */
    static final class SubscriptionLambdaSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f15825f;

        /* renamed from: g */
        final Consumer<? super Subscription> f15826g;

        /* renamed from: h */
        final LongConsumer f15827h;

        /* renamed from: i */
        final Action f15828i;

        /* renamed from: j */
        Subscription f15829j;

        SubscriptionLambdaSubscriber(Subscriber<? super T> subscriber, Consumer<? super Subscription> consumer, LongConsumer longConsumer, Action action) {
            this.f15825f = subscriber;
            this.f15826g = consumer;
            this.f15828i = action;
            this.f15827h = longConsumer;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Subscription subscription = this.f15829j;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                this.f15829j = subscriptionHelper;
                try {
                    this.f15828i.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
                subscription.cancel();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f15829j != SubscriptionHelper.CANCELLED) {
                this.f15825f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15829j != SubscriptionHelper.CANCELLED) {
                this.f15825f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15825f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            try {
                this.f15826g.accept(subscription);
                if (SubscriptionHelper.validate(this.f15829j, subscription)) {
                    this.f15829j = subscription;
                    this.f15825f.onSubscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                subscription.cancel();
                this.f15829j = SubscriptionHelper.CANCELLED;
                EmptySubscription.error(th, this.f15825f);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            try {
                this.f15827h.mo4378a(j);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
            this.f15829j.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new SubscriptionLambdaSubscriber(subscriber, this.f15822h, this.f15823i, this.f15824j));
    }
}
