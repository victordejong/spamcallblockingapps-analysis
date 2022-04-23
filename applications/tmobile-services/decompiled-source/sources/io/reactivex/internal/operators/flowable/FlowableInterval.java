package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInterval.class */
public final class FlowableInterval extends Flowable<Long> {

    /* renamed from: g */
    final Scheduler f16091g;

    /* renamed from: h */
    final long f16092h;

    /* renamed from: i */
    final long f16093i;

    /* renamed from: j */
    final TimeUnit f16094j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber.class */
    static final class IntervalSubscriber extends AtomicLong implements Subscription, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: f */
        final Subscriber<? super Long> f16095f;

        /* renamed from: g */
        long f16096g;

        /* renamed from: h */
        final AtomicReference<Disposable> f16097h = new AtomicReference<>();

        IntervalSubscriber(Subscriber<? super Long> subscriber) {
            this.f16095f = subscriber;
        }

        /* renamed from: a */
        public void m4181a(Disposable disposable) {
            DisposableHelper.setOnce(this.f16097h, disposable);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            DisposableHelper.dispose(this.f16097h);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16097h.get() == DisposableHelper.DISPOSED) {
                return;
            }
            if (get() != 0) {
                Subscriber<? super Long> subscriber = this.f16095f;
                long j = this.f16096g;
                this.f16096g = j + 1;
                subscriber.onNext(Long.valueOf(j));
                BackpressureHelper.m3450e(this, 1L);
                return;
            }
            Subscriber<? super Long> subscriber2 = this.f16095f;
            subscriber2.onError(new MissingBackpressureException("Can't deliver value " + this.f16096g + " due to lack of requests"));
            DisposableHelper.dispose(this.f16097h);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super Long> subscriber) {
        IntervalSubscriber intervalSubscriber = new IntervalSubscriber(subscriber);
        subscriber.onSubscribe(intervalSubscriber);
        Scheduler scheduler = this.f16091g;
        if (scheduler instanceof TrampolineScheduler) {
            Scheduler.Worker b = scheduler.mo3232b();
            intervalSubscriber.m4181a(b);
            b.mo3531d(intervalSubscriber, this.f16092h, this.f16093i, this.f16094j);
            return;
        }
        intervalSubscriber.m4181a(scheduler.mo3501f(intervalSubscriber, this.f16092h, this.f16093i, this.f16094j));
    }
}
