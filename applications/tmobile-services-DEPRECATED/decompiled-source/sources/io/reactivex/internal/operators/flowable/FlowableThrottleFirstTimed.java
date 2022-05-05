package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed.class */
public final class FlowableThrottleFirstTimed<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16675h;

    /* renamed from: i */
    final TimeUnit f16676i;

    /* renamed from: j */
    final Scheduler f16677j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber.class */
    static final class DebounceTimedSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -9102637559663639004L;

        /* renamed from: f */
        final Subscriber<? super T> f16678f;

        /* renamed from: g */
        final long f16679g;

        /* renamed from: h */
        final TimeUnit f16680h;

        /* renamed from: i */
        final Scheduler.Worker f16681i;

        /* renamed from: j */
        Subscription f16682j;

        /* renamed from: k */
        final SequentialDisposable f16683k = new SequentialDisposable();

        /* renamed from: l */
        volatile boolean f16684l;

        /* renamed from: m */
        boolean f16685m;

        DebounceTimedSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.f16678f = subscriber;
            this.f16679g = j;
            this.f16680h = timeUnit;
            this.f16681i = worker;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16682j.cancel();
            this.f16681i.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16685m) {
                this.f16685m = true;
                this.f16678f.onComplete();
                this.f16681i.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16685m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16685m = true;
            this.f16678f.onError(th);
            this.f16681i.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16685m && !this.f16684l) {
                this.f16684l = true;
                if (get() != 0) {
                    this.f16678f.onNext(t);
                    BackpressureHelper.m3450e(this, 1L);
                    Disposable disposable = this.f16683k.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.f16683k.m4422a(this.f16681i.mo3228c(this, this.f16679g, this.f16680h));
                    return;
                }
                this.f16685m = true;
                cancel();
                this.f16678f.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16682j, subscription)) {
                this.f16682j = subscription;
                this.f16678f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16684l = false;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new DebounceTimedSubscriber(new SerializedSubscriber(subscriber), this.f16675h, this.f16676i, this.f16677j.mo3232b()));
    }
}
