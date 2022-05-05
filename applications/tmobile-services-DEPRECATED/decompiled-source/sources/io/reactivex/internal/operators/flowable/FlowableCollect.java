package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCollect.class */
public final class FlowableCollect<T, U> extends AbstractFlowableWithUpstream<T, U> {

    /* renamed from: h */
    final Callable<? extends U> f15594h;

    /* renamed from: i */
    final BiConsumer<? super U, ? super T> f15595i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCollect$CollectSubscriber.class */
    static final class CollectSubscriber<T, U> extends DeferredScalarSubscription<U> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -3589550218733891694L;

        /* renamed from: h */
        final BiConsumer<? super U, ? super T> f15596h;

        /* renamed from: i */
        final U f15597i;

        /* renamed from: j */
        Subscription f15598j;

        /* renamed from: k */
        boolean f15599k;

        CollectSubscriber(Subscriber<? super U> subscriber, U u, BiConsumer<? super U, ? super T> biConsumer) {
            super(subscriber);
            this.f15596h = biConsumer;
            this.f15597i = u;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f15598j.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15599k) {
                this.f15599k = true;
                m3470d(this.f15597i);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15599k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15599k = true;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15599k) {
                try {
                    this.f15596h.mo4369a((U) this.f15597i, t);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15598j.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15598j, subscription)) {
                this.f15598j = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super U> subscriber) {
        try {
            Object call = this.f15594h.call();
            ObjectHelper.m4363e(call, "The initial value supplied is null");
            this.f15411g.m4493v(new CollectSubscriber(subscriber, call, this.f15595i));
        } catch (Throwable th) {
            EmptySubscription.error(th, subscriber);
        }
    }
}
