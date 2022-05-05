package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureError.class */
public final class FlowableOnBackpressureError<T> extends AbstractFlowableWithUpstream<T, T> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber.class */
    static final class BackpressureErrorSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -3176480756392482682L;

        /* renamed from: f */
        final Subscriber<? super T> f16250f;

        /* renamed from: g */
        Subscription f16251g;

        /* renamed from: h */
        boolean f16252h;

        BackpressureErrorSubscriber(Subscriber<? super T> subscriber) {
            this.f16250f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16251g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16252h) {
                this.f16252h = true;
                this.f16250f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16252h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16252h = true;
            this.f16250f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16252h) {
                if (get() != 0) {
                    this.f16250f.onNext(t);
                    BackpressureHelper.m3450e(this, 1L);
                    return;
                }
                this.f16251g.cancel();
                onError(new MissingBackpressureException("could not emit value due to lack of requests"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16251g, subscription)) {
                this.f16251g = subscription;
                this.f16250f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
            }
        }
    }

    public FlowableOnBackpressureError(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new BackpressureErrorSubscriber(subscriber));
    }
}
