package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed.class */
public final class FlowableSampleTimed<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16469h;

    /* renamed from: i */
    final TimeUnit f16470i;

    /* renamed from: j */
    final Scheduler f16471j;

    /* renamed from: k */
    final boolean f16472k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedEmitLast.class */
    static final class SampleTimedEmitLast<T> extends SampleTimedSubscriber<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        /* renamed from: m */
        final AtomicInteger f16473m = new AtomicInteger(1);

        SampleTimedEmitLast(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(subscriber, j, timeUnit, scheduler);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed.SampleTimedSubscriber
        /* renamed from: b */
        void mo4078b() {
            m4077c();
            if (this.f16473m.decrementAndGet() == 0) {
                this.f16474f.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16473m.incrementAndGet() == 2) {
                m4077c();
                if (this.f16473m.decrementAndGet() == 0) {
                    this.f16474f.onComplete();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedNoLast.class */
    static final class SampleTimedNoLast<T> extends SampleTimedSubscriber<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        SampleTimedNoLast(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(subscriber, j, timeUnit, scheduler);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed.SampleTimedSubscriber
        /* renamed from: b */
        void mo4078b() {
            this.f16474f.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            m4077c();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber.class */
    static abstract class SampleTimedSubscriber<T> extends AtomicReference<T> implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: f */
        final Subscriber<? super T> f16474f;

        /* renamed from: g */
        final long f16475g;

        /* renamed from: h */
        final TimeUnit f16476h;

        /* renamed from: i */
        final Scheduler f16477i;

        /* renamed from: j */
        final AtomicLong f16478j = new AtomicLong();

        /* renamed from: k */
        final SequentialDisposable f16479k = new SequentialDisposable();

        /* renamed from: l */
        Subscription f16480l;

        SampleTimedSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f16474f = subscriber;
            this.f16475g = j;
            this.f16476h = timeUnit;
            this.f16477i = scheduler;
        }

        /* renamed from: a */
        void m4079a() {
            DisposableHelper.dispose(this.f16479k);
        }

        /* renamed from: b */
        abstract void mo4078b();

        /* renamed from: c */
        void m4077c() {
            T andSet = getAndSet(null);
            if (andSet == null) {
                return;
            }
            if (this.f16478j.get() != 0) {
                this.f16474f.onNext(andSet);
                BackpressureHelper.m3450e(this.f16478j, 1L);
                return;
            }
            cancel();
            this.f16474f.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            m4079a();
            this.f16480l.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            m4079a();
            mo4078b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            m4079a();
            this.f16474f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16480l, subscription)) {
                this.f16480l = subscription;
                this.f16474f.onSubscribe(this);
                SequentialDisposable sequentialDisposable = this.f16479k;
                Scheduler scheduler = this.f16477i;
                long j = this.f16475g;
                sequentialDisposable.m4422a(scheduler.mo3501f(this, j, j, this.f16476h));
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16478j, j);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        if (this.f16472k) {
            this.f15411g.m4493v(new SampleTimedEmitLast(serializedSubscriber, this.f16469h, this.f16470i, this.f16471j));
        } else {
            this.f15411g.m4493v(new SampleTimedNoLast(serializedSubscriber, this.f16469h, this.f16470i, this.f16471j));
        }
    }
}
