package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay.class */
public final class FlowableDelay<T> extends AbstractFlowableWithUpstream<T, T> {
    final long delay;
    final boolean delayError;
    final Scheduler scheduler;
    final TimeUnit unit;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber.class */
    static final class DelaySubscriber<T> implements FlowableSubscriber<T>, Subscription {
        final Subscriber<? super T> actual;
        final long delay;
        final boolean delayError;

        /* renamed from: s */
        Subscription f405s;
        final TimeUnit unit;

        /* renamed from: w */
        final Scheduler.Worker f406w;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnComplete.class */
        final class OnComplete implements Runnable {
            OnComplete() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelaySubscriber.this.actual.onComplete();
                } finally {
                    DelaySubscriber.this.f406w.dispose();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnError.class */
        final class OnError implements Runnable {

            /* renamed from: t */
            private final Throwable f407t;

            OnError(Throwable th) {
                this.f407t = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelaySubscriber.this.actual.onError(this.f407t);
                } finally {
                    DelaySubscriber.this.f406w.dispose();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnNext.class */
        final class OnNext implements Runnable {

            /* renamed from: t */
            private final T f408t;

            OnNext(T t) {
                this.f408t = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                DelaySubscriber.this.actual.onNext((T) this.f408t);
            }
        }

        DelaySubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.actual = subscriber;
            this.delay = j;
            this.unit = timeUnit;
            this.f406w = worker;
            this.delayError = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f405s.cancel();
            this.f406w.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f406w.schedule(new OnComplete(), this.delay, this.unit);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f406w.schedule(new OnError(th), this.delayError ? this.delay : 0L, this.unit);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f406w.schedule(new OnNext(t), this.delay, this.unit);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f405s, subscription)) {
                this.f405s = subscription;
                this.actual.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f405s.request(j);
        }
    }

    public FlowableDelay(Flowable<T> flowable, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(flowable);
        this.delay = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.delayError = z;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        if (!this.delayError) {
            subscriber = new SerializedSubscriber<>(subscriber);
        }
        this.source.subscribe((FlowableSubscriber) new DelaySubscriber(subscriber, this.delay, this.unit, this.scheduler.createWorker(), this.delayError));
    }
}
