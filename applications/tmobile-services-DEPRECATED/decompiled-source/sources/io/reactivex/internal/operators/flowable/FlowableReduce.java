package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduce.class */
public final class FlowableReduce<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final BiFunction<T, T, T> f16343h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber.class */
    static final class ReduceSubscriber<T> extends DeferredScalarSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -4663883003264602070L;

        /* renamed from: h */
        final BiFunction<T, T, T> f16344h;

        /* renamed from: i */
        Subscription f16345i;

        ReduceSubscriber(Subscriber<? super T> subscriber, BiFunction<T, T, T> biFunction) {
            super(subscriber);
            this.f16344h = biFunction;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f16345i.cancel();
            this.f16345i = SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = this.f16345i;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                this.f16345i = subscriptionHelper;
                T t = this.f19406g;
                if (t != null) {
                    m3470d(t);
                } else {
                    this.f19405f.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscription subscription = this.f16345i;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription == subscriptionHelper) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16345i = subscriptionHelper;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16345i != SubscriptionHelper.CANCELLED) {
                T t2 = this.f19406g;
                if (t2 == null) {
                    this.f19406g = t;
                    return;
                }
                try {
                    T apply = this.f16344h.apply(t2, t);
                    ObjectHelper.m4363e(apply, "The reducer returned a null value");
                    this.f19406g = apply;
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16345i.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16345i, subscription)) {
                this.f16345i = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new ReduceSubscriber(subscriber, this.f16343h));
    }
}
