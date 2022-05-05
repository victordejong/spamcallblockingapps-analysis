package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnErrorNext.class */
public final class FlowableOnErrorNext<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super Throwable, ? extends Publisher<? extends T>> f16260h;

    /* renamed from: i */
    final boolean f16261i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber.class */
    static final class OnErrorNextSubscriber<T> extends SubscriptionArbiter implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 4063763155303814625L;

        /* renamed from: n */
        final Subscriber<? super T> f16262n;

        /* renamed from: o */
        final Function<? super Throwable, ? extends Publisher<? extends T>> f16263o;

        /* renamed from: p */
        final boolean f16264p;

        /* renamed from: q */
        boolean f16265q;

        /* renamed from: r */
        boolean f16266r;

        /* renamed from: s */
        long f16267s;

        OnErrorNextSubscriber(Subscriber<? super T> subscriber, Function<? super Throwable, ? extends Publisher<? extends T>> function, boolean z) {
            super(false);
            this.f16262n = subscriber;
            this.f16263o = function;
            this.f16264p = z;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16266r) {
                this.f16266r = true;
                this.f16265q = true;
                this.f16262n.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f16265q) {
                this.f16265q = true;
                if (!this.f16264p || (th instanceof Exception)) {
                    try {
                        Object apply = this.f16263o.apply(th);
                        ObjectHelper.m4363e(apply, "The nextSupplier returned a null Publisher");
                        Publisher publisher = (Publisher) apply;
                        long j = this.f16267s;
                        if (j != 0) {
                            m3463g(j);
                        }
                        publisher.mo5c(this);
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        this.f16262n.onError(new CompositeException(th, th2));
                    }
                } else {
                    this.f16262n.onError(th);
                }
            } else if (this.f16266r) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f16262n.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16266r) {
                if (!this.f16265q) {
                    this.f16267s++;
                }
                this.f16262n.onNext(t);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            m3462h(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        OnErrorNextSubscriber onErrorNextSubscriber = new OnErrorNextSubscriber(subscriber, this.f16260h, this.f16261i);
        subscriber.onSubscribe(onErrorNextSubscriber);
        this.f15411g.m4493v(onErrorNextSubscriber);
    }
}
