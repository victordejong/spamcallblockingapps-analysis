package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.processors.UnicastProcessor;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow.class */
public final class FlowableWindow<T> extends AbstractFlowableWithUpstream<T, Flowable<T>> {
    final int bufferSize;
    final long size;
    final long skip;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber.class */
    static final class WindowExactSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -2365647875069161133L;
        final Subscriber<? super Flowable<T>> actual;
        final int bufferSize;
        long index;
        final AtomicBoolean once = new AtomicBoolean();

        /* renamed from: s */
        Subscription f488s;
        final long size;
        UnicastProcessor<T> window;

        WindowExactSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, int i) {
            super(1);
            this.actual = subscriber;
            this.size = j;
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.once.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            UnicastProcessor<T> unicastProcessor = this.window;
            if (unicastProcessor != null) {
                this.window = null;
                unicastProcessor.onComplete();
            }
            this.actual.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            UnicastProcessor<T> unicastProcessor = this.window;
            if (unicastProcessor != null) {
                this.window = null;
                unicastProcessor.onError(th);
            }
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.index;
            UnicastProcessor<T> unicastProcessor = this.window;
            if (j == 0) {
                getAndIncrement();
                unicastProcessor = UnicastProcessor.create(this.bufferSize, this);
                this.window = unicastProcessor;
                this.actual.onNext(unicastProcessor);
            }
            long j2 = j + 1;
            unicastProcessor.onNext(t);
            if (j2 == this.size) {
                this.index = 0L;
                this.window = null;
                unicastProcessor.onComplete();
                return;
            }
            this.index = j2;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f488s, subscription)) {
                this.f488s = subscription;
                this.actual.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.f488s.request(BackpressureHelper.multiplyCap(this.size, j));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f488s.cancel();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber.class */
    static final class WindowOverlapSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 2428527070996323976L;
        final Subscriber<? super Flowable<T>> actual;
        final int bufferSize;
        volatile boolean cancelled;
        volatile boolean done;
        Throwable error;
        long index;
        long produced;
        final SpscLinkedArrayQueue<UnicastProcessor<T>> queue;

        /* renamed from: s */
        Subscription f489s;
        final long size;
        final long skip;
        final ArrayDeque<UnicastProcessor<T>> windows = new ArrayDeque<>();
        final AtomicBoolean once = new AtomicBoolean();
        final AtomicBoolean firstRequest = new AtomicBoolean();
        final AtomicLong requested = new AtomicLong();
        final AtomicInteger wip = new AtomicInteger();

        WindowOverlapSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, long j2, int i) {
            super(1);
            this.actual = subscriber;
            this.size = j;
            this.skip = j2;
            this.queue = new SpscLinkedArrayQueue<>(i);
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            if (this.once.compareAndSet(false, true)) {
                run();
            }
        }

        boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            if (this.cancelled) {
                spscLinkedArrayQueue.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th = this.error;
                if (th != null) {
                    spscLinkedArrayQueue.clear();
                    subscriber.onError(th);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        void drain() {
            int i;
            int addAndGet;
            if (this.wip.getAndIncrement() == 0) {
                Subscriber<? super Flowable<T>> subscriber = this.actual;
                SpscLinkedArrayQueue<UnicastProcessor<T>> spscLinkedArrayQueue = this.queue;
                int i2 = 1;
                do {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (true) {
                        i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                        if (i == 0) {
                            break;
                        }
                        boolean z = this.done;
                        UnicastProcessor<T> poll = spscLinkedArrayQueue.poll();
                        boolean z2 = poll == null;
                        if (!checkTerminated(z, z2, subscriber, spscLinkedArrayQueue)) {
                            if (z2) {
                                break;
                            }
                            subscriber.onNext(poll);
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (i != 0 || !checkTerminated(this.done, spscLinkedArrayQueue.isEmpty(), subscriber, spscLinkedArrayQueue)) {
                        if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                            this.requested.addAndGet(-j2);
                        }
                        addAndGet = this.wip.addAndGet(-i2);
                        i2 = addAndGet;
                    } else {
                        return;
                    }
                } while (addAndGet != 0);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                Iterator<UnicastProcessor<T>> it = this.windows.iterator();
                while (it.hasNext()) {
                    it.next().onComplete();
                }
                this.windows.clear();
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            Iterator<UnicastProcessor<T>> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onError(th);
            }
            this.windows.clear();
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.done) {
                long j = this.index;
                if (j == 0 && !this.cancelled) {
                    getAndIncrement();
                    UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize, this);
                    this.windows.offer(create);
                    this.queue.offer(create);
                    drain();
                }
                long j2 = j + 1;
                Iterator<UnicastProcessor<T>> it = this.windows.iterator();
                while (it.hasNext()) {
                    it.next().onNext(t);
                }
                long j3 = this.produced + 1;
                if (j3 == this.size) {
                    this.produced = j3 - this.skip;
                    UnicastProcessor<T> poll = this.windows.poll();
                    if (poll != null) {
                        poll.onComplete();
                    }
                } else {
                    this.produced = j3;
                }
                if (j2 == this.skip) {
                    this.index = 0L;
                } else {
                    this.index = j2;
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f489s, subscription)) {
                this.f489s = subscription;
                this.actual.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                    this.f489s.request(BackpressureHelper.multiplyCap(this.skip, j));
                } else {
                    this.f489s.request(BackpressureHelper.addCap(this.size, BackpressureHelper.multiplyCap(this.skip, j - 1)));
                }
                drain();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f489s.cancel();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber.class */
    static final class WindowSkipSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -8792836352386833856L;
        final Subscriber<? super Flowable<T>> actual;
        final int bufferSize;
        long index;

        /* renamed from: s */
        Subscription f490s;
        final long size;
        final long skip;
        UnicastProcessor<T> window;
        final AtomicBoolean once = new AtomicBoolean();
        final AtomicBoolean firstRequest = new AtomicBoolean();

        WindowSkipSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, long j2, int i) {
            super(1);
            this.actual = subscriber;
            this.size = j;
            this.skip = j2;
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.once.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            UnicastProcessor<T> unicastProcessor = this.window;
            if (unicastProcessor != null) {
                this.window = null;
                unicastProcessor.onComplete();
            }
            this.actual.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            UnicastProcessor<T> unicastProcessor = this.window;
            if (unicastProcessor != null) {
                this.window = null;
                unicastProcessor.onError(th);
            }
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.index;
            UnicastProcessor<T> unicastProcessor = this.window;
            if (j == 0) {
                getAndIncrement();
                unicastProcessor = UnicastProcessor.create(this.bufferSize, this);
                this.window = unicastProcessor;
                this.actual.onNext(unicastProcessor);
            }
            long j2 = j + 1;
            if (unicastProcessor != null) {
                unicastProcessor.onNext(t);
            }
            if (j2 == this.size) {
                this.window = null;
                unicastProcessor.onComplete();
            }
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f490s, subscription)) {
                this.f490s = subscription;
                this.actual.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (!SubscriptionHelper.validate(j)) {
                return;
            }
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.f490s.request(BackpressureHelper.multiplyCap(this.skip, j));
                return;
            }
            this.f490s.request(BackpressureHelper.addCap(BackpressureHelper.multiplyCap(this.size, j), BackpressureHelper.multiplyCap(this.skip - this.size, j - 1)));
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f490s.cancel();
            }
        }
    }

    public FlowableWindow(Flowable<T> flowable, long j, long j2, int i) {
        super(flowable);
        this.size = j;
        this.skip = j2;
        this.bufferSize = i;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super Flowable<T>> subscriber) {
        if (this.skip == this.size) {
            this.source.subscribe((FlowableSubscriber) new WindowExactSubscriber(subscriber, this.size, this.bufferSize));
        } else if (this.skip > this.size) {
            this.source.subscribe((FlowableSubscriber) new WindowSkipSubscriber(subscriber, this.size, this.skip, this.bufferSize));
        } else {
            this.source.subscribe((FlowableSubscriber) new WindowOverlapSubscriber(subscriber, this.size, this.skip, this.bufferSize));
        }
    }
}
