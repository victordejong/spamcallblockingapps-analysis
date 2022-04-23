package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSingle.class */
public final class FlowableSingle<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final T f16532h;

    /* renamed from: i */
    final boolean f16533i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSingle$SingleElementSubscriber.class */
    static final class SingleElementSubscriber<T> extends DeferredScalarSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -5526049321428043809L;

        /* renamed from: h */
        final T f16534h;

        /* renamed from: i */
        final boolean f16535i;

        /* renamed from: j */
        Subscription f16536j;

        /* renamed from: k */
        boolean f16537k;

        SingleElementSubscriber(Subscriber<? super T> subscriber, T t, boolean z) {
            super(subscriber);
            this.f16534h = t;
            this.f16535i = z;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f16536j.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16537k) {
                this.f16537k = true;
                T t = this.f19406g;
                this.f19406g = null;
                T t2 = t;
                if (t == null) {
                    t2 = this.f16534h;
                }
                if (t2 != null) {
                    m3470d(t2);
                } else if (this.f16535i) {
                    this.f19405f.onError(new NoSuchElementException());
                } else {
                    this.f19405f.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16537k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16537k = true;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16537k) {
                if (this.f19406g != null) {
                    this.f16537k = true;
                    this.f16536j.cancel();
                    this.f19405f.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.f19406g = t;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16536j, subscription)) {
                this.f16536j = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new SingleElementSubscriber(subscriber, this.f16532h, this.f16533i));
    }
}
