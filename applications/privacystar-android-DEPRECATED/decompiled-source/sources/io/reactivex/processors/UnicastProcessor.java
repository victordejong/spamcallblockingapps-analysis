package io.reactivex.processors;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.Experimental;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/UnicastProcessor.class */
public final class UnicastProcessor<T> extends FlowableProcessor<T> {
    final AtomicReference<Subscriber<? super T>> actual;
    volatile boolean cancelled;
    final boolean delayError;
    volatile boolean done;
    boolean enableOperatorFusion;
    Throwable error;
    final AtomicReference<Runnable> onTerminate;
    final AtomicBoolean once;
    final SpscLinkedArrayQueue<T> queue;
    final AtomicLong requested;
    final BasicIntQueueSubscription<T> wip;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/UnicastProcessor$UnicastQueueSubscription.class */
    final class UnicastQueueSubscription extends BasicIntQueueSubscription<T> {
        private static final long serialVersionUID = -4896760517184205454L;

        UnicastQueueSubscription() {
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!UnicastProcessor.this.cancelled) {
                UnicastProcessor.this.cancelled = true;
                UnicastProcessor.this.doTerminate();
                if (!UnicastProcessor.this.enableOperatorFusion && UnicastProcessor.this.wip.getAndIncrement() == 0) {
                    UnicastProcessor.this.queue.clear();
                    UnicastProcessor.this.actual.lazySet(null);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            UnicastProcessor.this.queue.clear();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return UnicastProcessor.this.queue.isEmpty();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            return UnicastProcessor.this.queue.poll();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(UnicastProcessor.this.requested, j);
                UnicastProcessor.this.drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastProcessor.this.enableOperatorFusion = true;
            return 2;
        }
    }

    UnicastProcessor(int i) {
        this(i, null, true);
    }

    UnicastProcessor(int i, Runnable runnable) {
        this(i, runnable, true);
    }

    UnicastProcessor(int i, Runnable runnable, boolean z) {
        this.queue = new SpscLinkedArrayQueue<>(ObjectHelper.verifyPositive(i, "capacityHint"));
        this.onTerminate = new AtomicReference<>(runnable);
        this.delayError = z;
        this.actual = new AtomicReference<>();
        this.once = new AtomicBoolean();
        this.wip = new UnicastQueueSubscription();
        this.requested = new AtomicLong();
    }

    @CheckReturnValue
    public static <T> UnicastProcessor<T> create() {
        return new UnicastProcessor<>(bufferSize());
    }

    @CheckReturnValue
    public static <T> UnicastProcessor<T> create(int i) {
        return new UnicastProcessor<>(i);
    }

    @CheckReturnValue
    public static <T> UnicastProcessor<T> create(int i, Runnable runnable) {
        ObjectHelper.requireNonNull(runnable, "onTerminate");
        return new UnicastProcessor<>(i, runnable);
    }

    @CheckReturnValue
    @Experimental
    public static <T> UnicastProcessor<T> create(int i, Runnable runnable, boolean z) {
        ObjectHelper.requireNonNull(runnable, "onTerminate");
        return new UnicastProcessor<>(i, runnable, z);
    }

    @CheckReturnValue
    @Experimental
    public static <T> UnicastProcessor<T> create(boolean z) {
        return new UnicastProcessor<>(bufferSize(), null, z);
    }

    boolean checkTerminated(boolean z, boolean z2, boolean z3, Subscriber<? super T> subscriber, SpscLinkedArrayQueue<T> spscLinkedArrayQueue) {
        if (this.cancelled) {
            spscLinkedArrayQueue.clear();
            this.actual.lazySet(null);
            return true;
        } else if (!z2) {
            return false;
        } else {
            if (z && this.error != null) {
                spscLinkedArrayQueue.clear();
                this.actual.lazySet(null);
                subscriber.onError(this.error);
                return true;
            } else if (!z3) {
                return false;
            } else {
                Throwable th = this.error;
                this.actual.lazySet(null);
                if (th != null) {
                    subscriber.onError(th);
                    return true;
                }
                subscriber.onComplete();
                return true;
            }
        }
    }

    void doTerminate() {
        Runnable runnable = this.onTerminate.get();
        if (runnable != null && this.onTerminate.compareAndSet(runnable, null)) {
            runnable.run();
        }
    }

    void drain() {
        if (this.wip.getAndIncrement() == 0) {
            int i = 1;
            Subscriber<? super T> subscriber = this.actual.get();
            while (true) {
                Subscriber<? super T> subscriber2 = subscriber;
                if (subscriber2 == null) {
                    i = this.wip.addAndGet(-i);
                    if (i != 0) {
                        subscriber = this.actual.get();
                    } else {
                        return;
                    }
                } else if (this.enableOperatorFusion) {
                    drainFused(subscriber2);
                    return;
                } else {
                    drainRegular(subscriber2);
                    return;
                }
            }
        }
    }

    void drainFused(Subscriber<? super T> subscriber) {
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.queue;
        boolean z = this.delayError;
        int i = 1;
        while (!this.cancelled) {
            boolean z2 = this.done;
            if (!(!z) || !z2 || this.error == null) {
                subscriber.onNext(null);
                if (z2) {
                    this.actual.lazySet(null);
                    Throwable th = this.error;
                    if (th != null) {
                        subscriber.onError(th);
                        return;
                    } else {
                        subscriber.onComplete();
                        return;
                    }
                } else {
                    int addAndGet = this.wip.addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            } else {
                spscLinkedArrayQueue.clear();
                this.actual.lazySet(null);
                subscriber.onError(this.error);
                return;
            }
        }
        spscLinkedArrayQueue.clear();
        this.actual.lazySet(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
        if (r0 != 0) goto L_0x0081;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
        if (checkTerminated(r0, r7.done, r0.isEmpty(), r8, r0) == false) goto L_0x0081;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
        if (r0 == 0) goto L_0x009c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008e, code lost:
        if (r0 == Long.MAX_VALUE) goto L_0x009c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0091, code lost:
        r7.requested.addAndGet(-r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
        r11 = r7.wip.addAndGet(-r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void drainRegular(org.reactivestreams.Subscriber<? super T> r8) {
        /*
            r7 = this;
            r0 = r7
            io.reactivex.internal.queue.SpscLinkedArrayQueue<T> r0 = r0.queue
            r9 = r0
            r0 = r7
            boolean r0 = r0.delayError
            r1 = 1
            r0 = r0 ^ r1
            r10 = r0
            r0 = 1
            r11 = r0
        L_0x000f:
            r0 = r7
            java.util.concurrent.atomic.AtomicLong r0 = r0.requested
            long r0 = r0.get()
            r12 = r0
            r0 = 0
            r14 = r0
        L_0x001b:
            r0 = r12
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L_0x0069
            r0 = r7
            boolean r0 = r0.done
            r17 = r0
            r0 = r9
            java.lang.Object r0 = r0.poll()
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L_0x003e
            r0 = 1
            r19 = r0
            goto L_0x0041
        L_0x003e:
            r0 = 0
            r19 = r0
        L_0x0041:
            r0 = r7
            r1 = r10
            r2 = r17
            r3 = r19
            r4 = r8
            r5 = r9
            boolean r0 = r0.checkTerminated(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L_0x0050
            return
        L_0x0050:
            r0 = r19
            if (r0 == 0) goto L_0x0058
            goto L_0x0069
        L_0x0058:
            r0 = r8
            r1 = r18
            r0.onNext(r1)
            r0 = 1
            r1 = r14
            long r0 = r0 + r1
            r14 = r0
            goto L_0x001b
        L_0x0069:
            r0 = r16
            if (r0 != 0) goto L_0x0081
            r0 = r7
            r1 = r10
            r2 = r7
            boolean r2 = r2.done
            r3 = r9
            boolean r3 = r3.isEmpty()
            r4 = r8
            r5 = r9
            boolean r0 = r0.checkTerminated(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L_0x0081
            return
        L_0x0081:
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x009c
            r0 = r12
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x009c
            r0 = r7
            java.util.concurrent.atomic.AtomicLong r0 = r0.requested
            r1 = r14
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
        L_0x009c:
            r0 = r7
            io.reactivex.internal.subscriptions.BasicIntQueueSubscription<T> r0 = r0.wip
            r1 = r11
            int r1 = -r1
            int r0 = r0.addAndGet(r1)
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x00ae
            return
        L_0x00ae:
            goto L_0x000f
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.processors.UnicastProcessor.drainRegular(org.reactivestreams.Subscriber):void");
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public Throwable getThrowable() {
        if (this.done) {
            return this.error;
        }
        return null;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasComplete() {
        return this.done && this.error == null;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasSubscribers() {
        return this.actual.get() != null;
    }

    @Override // io.reactivex.processors.FlowableProcessor
    public boolean hasThrowable() {
        return this.done && this.error != null;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.done && !this.cancelled) {
            this.done = true;
            doTerminate();
            drain();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.done || this.cancelled) {
            RxJavaPlugins.onError(th);
            return;
        }
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        this.error = th2;
        this.done = true;
        doTerminate();
        drain();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.done && !this.cancelled) {
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.queue.offer(t);
            drain();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.done || this.cancelled) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        if (this.once.get() || !this.once.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), subscriber);
            return;
        }
        subscriber.onSubscribe(this.wip);
        this.actual.set(subscriber);
        if (this.cancelled) {
            this.actual.lazySet(null);
        } else {
            drain();
        }
    }
}
