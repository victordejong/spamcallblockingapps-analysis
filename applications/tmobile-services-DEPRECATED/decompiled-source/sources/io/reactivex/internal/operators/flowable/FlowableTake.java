package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTake.class */
public final class FlowableTake<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16623h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTake$TakeSubscriber.class */
    static final class TakeSubscriber<T> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5636543848937116287L;

        /* renamed from: f */
        final Subscriber<? super T> f16624f;

        /* renamed from: g */
        final long f16625g;

        /* renamed from: h */
        boolean f16626h;

        /* renamed from: i */
        Subscription f16627i;

        /* renamed from: j */
        long f16628j;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TakeSubscriber(Subscriber<? super T> subscriber, long j) {
            this.f16624f = subscriber;
            this.f16625g = j;
            this.f16628j = j;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16627i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16626h) {
                this.f16626h = true;
                this.f16624f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f16626h) {
                this.f16626h = true;
                this.f16627i.cancel();
                this.f16624f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16626h) {
                long j = this.f16628j;
                long j2 = j - 1;
                this.f16628j = j2;
                if (j > 0) {
                    boolean z = j2 == 0;
                    this.f16624f.onNext(t);
                    if (z) {
                        this.f16627i.cancel();
                        onComplete();
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16627i, subscription)) {
                this.f16627i = subscription;
                if (this.f16625g == 0) {
                    subscription.cancel();
                    this.f16626h = true;
                    EmptySubscription.complete(this.f16624f);
                    return;
                }
                this.f16624f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                if (get() || !compareAndSet(false, true) || j < this.f16625g) {
                    this.f16627i.request(j);
                } else {
                    this.f16627i.request(Long.MAX_VALUE);
                }
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new TakeSubscriber(subscriber, this.f16623h));
    }
}
