package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed.class */
public final class FlowableSampleTimed<T> extends AbstractFlowableWithUpstream<T, T> {
    final boolean emitLast;
    final long period;
    final Scheduler scheduler;
    final TimeUnit unit;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedEmitLast.class */
    static final class SampleTimedEmitLast<T> extends SampleTimedSubscriber<T> {
        private static final long serialVersionUID = -7139995637533111443L;
        final AtomicInteger wip = new AtomicInteger(1);

        SampleTimedEmitLast(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(subscriber, j, timeUnit, scheduler);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed.SampleTimedSubscriber
        void complete() {
            emit();
            if (this.wip.decrementAndGet() == 0) {
                this.actual.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.wip.incrementAndGet() == 2) {
                emit();
                if (this.wip.decrementAndGet() == 0) {
                    this.actual.onComplete();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedNoLast.class */
    static final class SampleTimedNoLast<T> extends SampleTimedSubscriber<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        SampleTimedNoLast(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(subscriber, j, timeUnit, scheduler);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSampleTimed.SampleTimedSubscriber
        void complete() {
            this.actual.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            emit();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber.class */
    static abstract class SampleTimedSubscriber<T> extends AtomicReference<T> implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;
        final Subscriber<? super T> actual;
        final long period;

        /* renamed from: s */
        Subscription f456s;
        final Scheduler scheduler;
        final TimeUnit unit;
        final AtomicLong requested = new AtomicLong();
        final SequentialDisposable timer = new SequentialDisposable();

        SampleTimedSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.actual = subscriber;
            this.period = j;
            this.unit = timeUnit;
            this.scheduler = scheduler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            cancelTimer();
            this.f456s.cancel();
        }

        void cancelTimer() {
            DisposableHelper.dispose(this.timer);
        }

        abstract void complete();

        void emit() {
            T andSet = getAndSet(null);
            if (andSet == null) {
                return;
            }
            if (this.requested.get() != 0) {
                this.actual.onNext(andSet);
                BackpressureHelper.produced(this.requested, 1L);
                return;
            }
            cancel();
            this.actual.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            cancelTimer();
            complete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            cancelTimer();
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f456s, subscription)) {
                this.f456s = subscription;
                this.actual.onSubscribe(this);
                this.timer.replace(this.scheduler.schedulePeriodicallyDirect(this, this.period, this.period, this.unit));
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
            }
        }
    }

    public FlowableSampleTimed(Flowable<T> flowable, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(flowable);
        this.period = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.emitLast = z;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        if (this.emitLast) {
            this.source.subscribe((FlowableSubscriber) new SampleTimedEmitLast(serializedSubscriber, this.period, this.unit, this.scheduler));
        } else {
            this.source.subscribe((FlowableSubscriber) new SampleTimedNoLast(serializedSubscriber, this.period, this.unit, this.scheduler));
        }
    }
}
