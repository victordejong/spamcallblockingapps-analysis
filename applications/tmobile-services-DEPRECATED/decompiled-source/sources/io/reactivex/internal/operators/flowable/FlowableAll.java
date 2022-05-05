package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAll.class */
public final class FlowableAll<T> extends AbstractFlowableWithUpstream<T, Boolean> {

    /* renamed from: h */
    final Predicate<? super T> f15441h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAll$AllSubscriber.class */
    static final class AllSubscriber<T> extends DeferredScalarSubscription<Boolean> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -3521127104134758517L;

        /* renamed from: h */
        final Predicate<? super T> f15442h;

        /* renamed from: i */
        Subscription f15443i;

        /* renamed from: j */
        boolean f15444j;

        AllSubscriber(Subscriber<? super Boolean> subscriber, Predicate<? super T> predicate) {
            super(subscriber);
            this.f15442h = predicate;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f15443i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15444j) {
                this.f15444j = true;
                m3470d(Boolean.TRUE);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15444j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15444j = true;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15444j) {
                try {
                    if (!this.f15442h.mo3191a(t)) {
                        this.f15444j = true;
                        this.f15443i.cancel();
                        m3470d(Boolean.FALSE);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15443i.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15443i, subscription)) {
                this.f15443i = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Boolean> subscriber) {
        this.f15411g.m4493v(new AllSubscriber(subscriber, this.f15441h));
    }
}
