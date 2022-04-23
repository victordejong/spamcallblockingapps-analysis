package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed.class */
public final class FlowableWindowTimed<T> extends AbstractFlowableWithUpstream<T, Flowable<T>> {
    final int bufferSize;
    final long maxSize;
    final boolean restartTimerOnMaxSize;
    final Scheduler scheduler;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber.class */
    static final class WindowExactBoundedSubscriber<T> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements Subscription {
        final int bufferSize;
        long count;
        final long maxSize;
        long producerIndex;
        final boolean restartTimerOnMaxSize;

        /* renamed from: s */
        Subscription f497s;
        final Scheduler scheduler;
        volatile boolean terminated;
        final SequentialDisposable timer = new SequentialDisposable();
        final long timespan;
        final TimeUnit unit;
        UnicastProcessor<T> window;
        final Scheduler.Worker worker;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder.class */
        public static final class ConsumerIndexHolder implements Runnable {
            final long index;
            final WindowExactBoundedSubscriber<?> parent;

            ConsumerIndexHolder(long j, WindowExactBoundedSubscriber<?> windowExactBoundedSubscriber) {
                this.index = j;
                this.parent = windowExactBoundedSubscriber;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowExactBoundedSubscriber<?> windowExactBoundedSubscriber = this.parent;
                if (!((WindowExactBoundedSubscriber) windowExactBoundedSubscriber).cancelled) {
                    ((WindowExactBoundedSubscriber) windowExactBoundedSubscriber).queue.offer(this);
                } else {
                    windowExactBoundedSubscriber.terminated = true;
                    windowExactBoundedSubscriber.dispose();
                }
                if (windowExactBoundedSubscriber.enter()) {
                    windowExactBoundedSubscriber.drainLoop();
                }
            }
        }

        WindowExactBoundedSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler, int i, long j2, boolean z) {
            super(subscriber, new MpscLinkedQueue());
            this.timespan = j;
            this.unit = timeUnit;
            this.scheduler = scheduler;
            this.bufferSize = i;
            this.maxSize = j2;
            this.restartTimerOnMaxSize = z;
            if (z) {
                this.worker = scheduler.createWorker();
            } else {
                this.worker = null;
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
        }

        public void dispose() {
            DisposableHelper.dispose(this.timer);
            Scheduler.Worker worker = this.worker;
            if (worker != null) {
                worker.dispose();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00bf, code lost:
            if (r8.producerIndex == r0.index) goto L_0x00cb;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drainLoop() {
            /*
                Method dump skipped, instructions count: 550
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableWindowTimed.WindowExactBoundedSubscriber.drainLoop():void");
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            if (enter()) {
                drainLoop();
            }
            this.actual.onComplete();
            dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            if (enter()) {
                drainLoop();
            }
            this.actual.onError(th);
            dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.terminated) {
                if (fastEnter()) {
                    UnicastProcessor<T> unicastProcessor = this.window;
                    unicastProcessor.onNext(t);
                    long j = this.count + 1;
                    if (j >= this.maxSize) {
                        this.producerIndex++;
                        this.count = 0L;
                        unicastProcessor.onComplete();
                        long requested = requested();
                        if (requested != 0) {
                            UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize);
                            this.window = create;
                            this.actual.onNext(create);
                            if (requested != Long.MAX_VALUE) {
                                produced(1L);
                            }
                            if (this.restartTimerOnMaxSize) {
                                Disposable disposable = this.timer.get();
                                disposable.dispose();
                                Disposable schedulePeriodically = this.worker.schedulePeriodically(new ConsumerIndexHolder(this.producerIndex, this), this.timespan, this.timespan, this.unit);
                                if (!this.timer.compareAndSet(disposable, schedulePeriodically)) {
                                    schedulePeriodically.dispose();
                                }
                            }
                        } else {
                            this.window = null;
                            this.f497s.cancel();
                            this.actual.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                            dispose();
                            return;
                        }
                    } else {
                        this.count = j;
                    }
                    if (leave(-1) == 0) {
                        return;
                    }
                } else {
                    this.queue.offer(NotificationLite.next(t));
                    if (!enter()) {
                        return;
                    }
                }
                drainLoop();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f497s, subscription)) {
                this.f497s = subscription;
                Subscriber<? super V> subscriber = this.actual;
                subscriber.onSubscribe(this);
                if (!this.cancelled) {
                    UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize);
                    this.window = create;
                    long requested = requested();
                    if (requested != 0) {
                        subscriber.onNext(create);
                        if (requested != Long.MAX_VALUE) {
                            produced(1L);
                        }
                        ConsumerIndexHolder consumerIndexHolder = new ConsumerIndexHolder(this.producerIndex, this);
                        if (this.timer.replace(this.restartTimerOnMaxSize ? this.worker.schedulePeriodically(consumerIndexHolder, this.timespan, this.timespan, this.unit) : this.scheduler.schedulePeriodicallyDirect(consumerIndexHolder, this.timespan, this.timespan, this.unit))) {
                            subscription.request(Long.MAX_VALUE);
                            return;
                        }
                        return;
                    }
                    this.cancelled = true;
                    subscription.cancel();
                    subscriber.onError(new MissingBackpressureException("Could not deliver initial window due to lack of requests."));
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            requested(j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactUnboundedSubscriber.class */
    static final class WindowExactUnboundedSubscriber<T> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements FlowableSubscriber<T>, Subscription, Runnable {
        static final Object NEXT = new Object();
        final int bufferSize;

        /* renamed from: s */
        Subscription f498s;
        final Scheduler scheduler;
        volatile boolean terminated;
        final SequentialDisposable timer = new SequentialDisposable();
        final long timespan;
        final TimeUnit unit;
        UnicastProcessor<T> window;

        WindowExactUnboundedSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
            super(subscriber, new MpscLinkedQueue());
            this.timespan = j;
            this.unit = timeUnit;
            this.scheduler = scheduler;
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
        }

        public void dispose() {
            DisposableHelper.dispose(this.timer);
        }

        void drainLoop() {
            SimpleQueue simpleQueue = this.queue;
            Subscriber<? super V> subscriber = this.actual;
            UnicastProcessor<T> unicastProcessor = this.window;
            int i = 1;
            while (true) {
                boolean z = this.terminated;
                boolean z2 = this.done;
                Object poll = simpleQueue.poll();
                if (!z2 || !(poll == null || poll == NEXT)) {
                    if (poll == null) {
                        int leave = leave(-i);
                        i = leave;
                        if (leave == 0) {
                            return;
                        }
                    } else if (poll == NEXT) {
                        unicastProcessor.onComplete();
                        if (!z) {
                            UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize);
                            this.window = create;
                            long requested = requested();
                            if (requested != 0) {
                                subscriber.onNext(create);
                                unicastProcessor = create;
                                if (requested != Long.MAX_VALUE) {
                                    produced(1L);
                                    unicastProcessor = create;
                                }
                            } else {
                                this.window = null;
                                this.queue.clear();
                                this.f498s.cancel();
                                dispose();
                                subscriber.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                                return;
                            }
                        } else {
                            this.f498s.cancel();
                        }
                    } else {
                        unicastProcessor.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
            this.window = null;
            simpleQueue.clear();
            dispose();
            Throwable th = this.error;
            if (th != null) {
                unicastProcessor.onError(th);
            } else {
                unicastProcessor.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            if (enter()) {
                drainLoop();
            }
            this.actual.onComplete();
            dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            if (enter()) {
                drainLoop();
            }
            this.actual.onError(th);
            dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.terminated) {
                if (fastEnter()) {
                    this.window.onNext(t);
                    if (leave(-1) == 0) {
                        return;
                    }
                } else {
                    this.queue.offer(NotificationLite.next(t));
                    if (!enter()) {
                        return;
                    }
                }
                drainLoop();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f498s, subscription)) {
                this.f498s = subscription;
                this.window = UnicastProcessor.create(this.bufferSize);
                Subscriber<? super V> subscriber = this.actual;
                subscriber.onSubscribe(this);
                long requested = requested();
                if (requested != 0) {
                    subscriber.onNext(this.window);
                    if (requested != Long.MAX_VALUE) {
                        produced(1L);
                    }
                    if (!this.cancelled && this.timer.replace(this.scheduler.schedulePeriodicallyDirect(this, this.timespan, this.timespan, this.unit))) {
                        subscription.request(Long.MAX_VALUE);
                        return;
                    }
                    return;
                }
                this.cancelled = true;
                subscription.cancel();
                subscriber.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            requested(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.cancelled) {
                this.terminated = true;
                dispose();
            }
            this.queue.offer(NEXT);
            if (enter()) {
                drainLoop();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber.class */
    static final class WindowSkipSubscriber<T> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements Subscription, Runnable {
        final int bufferSize;

        /* renamed from: s */
        Subscription f499s;
        volatile boolean terminated;
        final long timeskip;
        final long timespan;
        final TimeUnit unit;
        final List<UnicastProcessor<T>> windows = new LinkedList();
        final Scheduler.Worker worker;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion.class */
        public final class Completion implements Runnable {
            private final UnicastProcessor<T> processor;

            Completion(UnicastProcessor<T> unicastProcessor) {
                this.processor = unicastProcessor;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowSkipSubscriber.this.complete(this.processor);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork.class */
        public static final class SubjectWork<T> {
            final boolean open;

            /* renamed from: w */
            final UnicastProcessor<T> f500w;

            SubjectWork(UnicastProcessor<T> unicastProcessor, boolean z) {
                this.f500w = unicastProcessor;
                this.open = z;
            }
        }

        WindowSkipSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker, int i) {
            super(subscriber, new MpscLinkedQueue());
            this.timespan = j;
            this.timeskip = j2;
            this.unit = timeUnit;
            this.worker = worker;
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
        }

        void complete(UnicastProcessor<T> unicastProcessor) {
            this.queue.offer(new SubjectWork(unicastProcessor, false));
            if (enter()) {
                drainLoop();
            }
        }

        public void dispose() {
            this.worker.dispose();
        }

        void drainLoop() {
            SimpleQueue simpleQueue = this.queue;
            Subscriber<? super V> subscriber = this.actual;
            List<UnicastProcessor<T>> list = this.windows;
            int i = 1;
            while (!this.terminated) {
                boolean z = this.done;
                T t = (T) simpleQueue.poll();
                boolean z2 = t == null;
                boolean z3 = t instanceof SubjectWork;
                if (z && (z2 || z3)) {
                    simpleQueue.clear();
                    Throwable th = this.error;
                    if (th != null) {
                        for (UnicastProcessor<T> unicastProcessor : list) {
                            unicastProcessor.onError(th);
                        }
                    } else {
                        for (UnicastProcessor<T> unicastProcessor2 : list) {
                            unicastProcessor2.onComplete();
                        }
                    }
                    list.clear();
                    dispose();
                    return;
                } else if (z2) {
                    int leave = leave(-i);
                    i = leave;
                    if (leave == 0) {
                        return;
                    }
                } else if (z3) {
                    SubjectWork subjectWork = (SubjectWork) t;
                    if (!subjectWork.open) {
                        list.remove(subjectWork.f500w);
                        subjectWork.f500w.onComplete();
                        if (list.isEmpty() && this.cancelled) {
                            this.terminated = true;
                        }
                    } else if (!this.cancelled) {
                        long requested = requested();
                        if (requested != 0) {
                            UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize);
                            list.add(create);
                            subscriber.onNext(create);
                            if (requested != Long.MAX_VALUE) {
                                produced(1L);
                            }
                            this.worker.schedule(new Completion(create), this.timespan, this.unit);
                        } else {
                            subscriber.onError(new MissingBackpressureException("Can't emit window due to lack of requests"));
                        }
                    }
                } else {
                    for (UnicastProcessor<T> unicastProcessor3 : list) {
                        unicastProcessor3.onNext(t);
                    }
                }
            }
            this.f499s.cancel();
            dispose();
            simpleQueue.clear();
            list.clear();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            if (enter()) {
                drainLoop();
            }
            this.actual.onComplete();
            dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            if (enter()) {
                drainLoop();
            }
            this.actual.onError(th);
            dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (fastEnter()) {
                for (UnicastProcessor<T> unicastProcessor : this.windows) {
                    unicastProcessor.onNext(t);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.queue.offer(t);
                if (!enter()) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f499s, subscription)) {
                this.f499s = subscription;
                this.actual.onSubscribe(this);
                if (!this.cancelled) {
                    long requested = requested();
                    if (requested != 0) {
                        UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize);
                        this.windows.add(create);
                        this.actual.onNext(create);
                        if (requested != Long.MAX_VALUE) {
                            produced(1L);
                        }
                        this.worker.schedule(new Completion(create), this.timespan, this.unit);
                        this.worker.schedulePeriodically(this, this.timeskip, this.timeskip, this.unit);
                        subscription.request(Long.MAX_VALUE);
                        return;
                    }
                    subscription.cancel();
                    this.actual.onError(new MissingBackpressureException("Could not emit the first window due to lack of requests"));
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            requested(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            SubjectWork subjectWork = new SubjectWork(UnicastProcessor.create(this.bufferSize), true);
            if (!this.cancelled) {
                this.queue.offer(subjectWork);
            }
            if (enter()) {
                drainLoop();
            }
        }
    }

    public FlowableWindowTimed(Flowable<T> flowable, long j, long j2, TimeUnit timeUnit, Scheduler scheduler, long j3, int i, boolean z) {
        super(flowable);
        this.timespan = j;
        this.timeskip = j2;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.maxSize = j3;
        this.bufferSize = i;
        this.restartTimerOnMaxSize = z;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super Flowable<T>> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        if (this.timespan != this.timeskip) {
            this.source.subscribe((FlowableSubscriber) new WindowSkipSubscriber(serializedSubscriber, this.timespan, this.timeskip, this.unit, this.scheduler.createWorker(), this.bufferSize));
        } else if (this.maxSize == Long.MAX_VALUE) {
            this.source.subscribe((FlowableSubscriber) new WindowExactUnboundedSubscriber(serializedSubscriber, this.timespan, this.unit, this.scheduler, this.bufferSize));
        } else {
            this.source.subscribe((FlowableSubscriber) new WindowExactBoundedSubscriber(serializedSubscriber, this.timespan, this.unit, this.scheduler, this.bufferSize, this.maxSize, this.restartTimerOnMaxSize));
        }
    }
}
