package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAt.class */
public final class FlowableElementAt<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f15830h;

    /* renamed from: i */
    final T f15831i;

    /* renamed from: j */
    final boolean f15832j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber.class */
    static final class ElementAtSubscriber<T> extends DeferredScalarSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 4066607327284737757L;

        /* renamed from: h */
        final long f15833h;

        /* renamed from: i */
        final T f15834i;

        /* renamed from: j */
        final boolean f15835j;

        /* renamed from: k */
        Subscription f15836k;

        /* renamed from: l */
        long f15837l;

        /* renamed from: m */
        boolean f15838m;

        ElementAtSubscriber(Subscriber<? super T> subscriber, long j, T t, boolean z) {
            super(subscriber);
            this.f15833h = j;
            this.f15834i = t;
            this.f15835j = z;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f15836k.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15838m) {
                this.f15838m = true;
                T t = this.f15834i;
                if (t != null) {
                    m3470d(t);
                } else if (this.f15835j) {
                    this.f19405f.onError(new NoSuchElementException());
                } else {
                    this.f19405f.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15838m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15838m = true;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15838m) {
                long j = this.f15837l;
                if (j == this.f15833h) {
                    this.f15838m = true;
                    this.f15836k.cancel();
                    m3470d(t);
                    return;
                }
                this.f15837l = j + 1;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15836k, subscription)) {
                this.f15836k = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new ElementAtSubscriber(subscriber, this.f15830h, this.f15831i, this.f15832j));
    }
}
