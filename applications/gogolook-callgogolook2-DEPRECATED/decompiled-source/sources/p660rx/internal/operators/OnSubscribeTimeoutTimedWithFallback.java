package p660rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.internal.producers.ProducerArbiter;
import p660rx.internal.subscriptions.SequentialSubscription;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.OnSubscribeTimeoutTimedWithFallback */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeTimeoutTimedWithFallback.class */
public final class OnSubscribeTimeoutTimedWithFallback<T> implements Observable.OnSubscribe<T> {
    public final Observable<? extends T> fallback;
    public final Scheduler scheduler;
    public final Observable<T> source;
    public final long timeout;
    public final TimeUnit unit;

    /* renamed from: rx.internal.operators.OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber.class */
    public static final class FallbackSubscriber<T> extends Subscriber<T> {
        public final Subscriber<? super T> actual;
        public final ProducerArbiter arbiter;

        public FallbackSubscriber(Subscriber<? super T> subscriber, ProducerArbiter producerArbiter) {
            this.actual = subscriber;
            this.arbiter = producerArbiter;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            this.actual.onCompleted();
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            this.actual.onNext(t);
        }

        @Override // p660rx.Subscriber
        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber.class */
    public static final class TimeoutMainSubscriber<T> extends Subscriber<T> {
        public final Subscriber<? super T> actual;
        public long consumed;
        public final Observable<? extends T> fallback;
        public final long timeout;
        public final TimeUnit unit;
        public final Scheduler.Worker worker;
        public final ProducerArbiter arbiter = new ProducerArbiter();
        public final AtomicLong index = new AtomicLong();
        public final SequentialSubscription task = new SequentialSubscription();
        public final SequentialSubscription upstream = new SequentialSubscription(this);

        /* renamed from: rx.internal.operators.OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask */
        /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask.class */
        public final class TimeoutTask implements Action0 {
            public final long idx;

            public TimeoutTask(long j) {
                this.idx = j;
            }

            @Override // p660rx.functions.Action0
            public void call() {
                TimeoutMainSubscriber.this.onTimeout(this.idx);
            }
        }

        public TimeoutMainSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker, Observable<? extends T> observable) {
            this.actual = subscriber;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = worker;
            this.fallback = observable;
            add(worker);
            add(this.task);
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.unsubscribe();
                this.actual.onCompleted();
                this.worker.unsubscribe();
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.unsubscribe();
                this.actual.onError(th);
                this.worker.unsubscribe();
                return;
            }
            RxJavaHooks.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            long j = this.index.get();
            if (j != Long.MAX_VALUE) {
                long j2 = j + 1;
                if (this.index.compareAndSet(j, j2)) {
                    Subscription subscription = this.task.get();
                    if (subscription != null) {
                        subscription.unsubscribe();
                    }
                    this.consumed++;
                    this.actual.onNext(t);
                    startTimeout(j2);
                }
            }
        }

        public void onTimeout(long j) {
            if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
                unsubscribe();
                if (this.fallback == null) {
                    this.actual.onError(new TimeoutException());
                    return;
                }
                long j2 = this.consumed;
                if (j2 != 0) {
                    this.arbiter.produced(j2);
                }
                FallbackSubscriber fallbackSubscriber = new FallbackSubscriber(this.actual, this.arbiter);
                if (this.upstream.replace(fallbackSubscriber)) {
                    this.fallback.subscribe((Subscriber<? super Object>) fallbackSubscriber);
                }
            }
        }

        @Override // p660rx.Subscriber
        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }

        public void startTimeout(long j) {
            this.task.replace(this.worker.schedule(new TimeoutTask(j), this.timeout, this.unit));
        }
    }

    public OnSubscribeTimeoutTimedWithFallback(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler, Observable<? extends T> observable2) {
        this.source = observable;
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.fallback = observable2;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(Subscriber<? super T> subscriber) {
        TimeoutMainSubscriber timeoutMainSubscriber = new TimeoutMainSubscriber(subscriber, this.timeout, this.unit, this.scheduler.createWorker(), this.fallback);
        subscriber.add(timeoutMainSubscriber.upstream);
        subscriber.setProducer(timeoutMainSubscriber.arbiter);
        timeoutMainSubscriber.startTimeout(0L);
        this.source.subscribe((Subscriber) timeoutMainSubscriber);
    }
}
