package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.flowables.GroupedFlowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy.class */
public final class FlowableGroupBy<T, K, V> extends AbstractFlowableWithUpstream<T, GroupedFlowable<K, V>> {
    final int bufferSize;
    final boolean delayError;
    final Function<? super T, ? extends K> keySelector;
    final Function<? super T, ? extends V> valueSelector;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber.class */
    public static final class GroupBySubscriber<T, K, V> extends BasicIntQueueSubscription<GroupedFlowable<K, V>> implements FlowableSubscriber<T> {
        static final Object NULL_KEY = new Object();
        private static final long serialVersionUID = -3688291656102519502L;
        final Subscriber<? super GroupedFlowable<K, V>> actual;
        final int bufferSize;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        final Function<? super T, ? extends K> keySelector;
        boolean outputFused;
        final SpscLinkedArrayQueue<GroupedFlowable<K, V>> queue;

        /* renamed from: s */
        Subscription f430s;
        final Function<? super T, ? extends V> valueSelector;
        final AtomicBoolean cancelled = new AtomicBoolean();
        final AtomicLong requested = new AtomicLong();
        final AtomicInteger groupCount = new AtomicInteger(1);
        final Map<Object, GroupedUnicast<K, V>> groups = new ConcurrentHashMap();

        public GroupBySubscriber(Subscriber<? super GroupedFlowable<K, V>> subscriber, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z) {
            this.actual = subscriber;
            this.keySelector = function;
            this.valueSelector = function2;
            this.bufferSize = i;
            this.delayError = z;
            this.queue = new SpscLinkedArrayQueue<>(i);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled.compareAndSet(false, true) && this.groupCount.decrementAndGet() == 0) {
                this.f430s.cancel();
            }
        }

        public void cancel(K k) {
            if (k == null) {
                k = (K) NULL_KEY;
            }
            this.groups.remove(k);
            if (this.groupCount.decrementAndGet() == 0) {
                this.f430s.cancel();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            if (this.cancelled.get()) {
                spscLinkedArrayQueue.clear();
                return true;
            } else if (this.delayError) {
                if (!z || !z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                    return true;
                }
                subscriber.onComplete();
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th2 = this.error;
                if (th2 != null) {
                    spscLinkedArrayQueue.clear();
                    subscriber.onError(th2);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.queue.clear();
        }

        void drain() {
            if (getAndIncrement() == 0) {
                if (this.outputFused) {
                    drainFused();
                } else {
                    drainNormal();
                }
            }
        }

        void drainFused() {
            Throwable th;
            SpscLinkedArrayQueue<GroupedFlowable<K, V>> spscLinkedArrayQueue = this.queue;
            Subscriber<? super GroupedFlowable<K, V>> subscriber = this.actual;
            int i = 1;
            while (!this.cancelled.get()) {
                boolean z = this.done;
                if (!z || this.delayError || (th = this.error) == null) {
                    subscriber.onNext(null);
                    if (z) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            subscriber.onError(th2);
                            return;
                        } else {
                            subscriber.onComplete();
                            return;
                        }
                    } else {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    }
                } else {
                    spscLinkedArrayQueue.clear();
                    subscriber.onError(th);
                    return;
                }
            }
            spscLinkedArrayQueue.clear();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
            if (r0 != 0) goto L_0x007f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
            if (checkTerminated(r6.done, r0.isEmpty(), r0, r0) == false) goto L_0x007f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
            if (r0 == 0) goto L_0x00a5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x009a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
            r6.requested.addAndGet(-r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x009a, code lost:
            r6.f430s.request(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a5, code lost:
            r0 = addAndGet(-r9);
            r9 = r0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drainNormal() {
            /*
                r6 = this;
                r0 = r6
                io.reactivex.internal.queue.SpscLinkedArrayQueue<io.reactivex.flowables.GroupedFlowable<K, V>> r0 = r0.queue
                r7 = r0
                r0 = r6
                org.reactivestreams.Subscriber<? super io.reactivex.flowables.GroupedFlowable<K, V>> r0 = r0.actual
                r8 = r0
                r0 = 1
                r9 = r0
            L_0x000c:
                r0 = r6
                java.util.concurrent.atomic.AtomicLong r0 = r0.requested
                long r0 = r0.get()
                r10 = r0
                r0 = 0
                r12 = r0
            L_0x0018:
                r0 = r12
                r1 = r10
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r14 = r0
                r0 = r14
                if (r0 == 0) goto L_0x0068
                r0 = r6
                boolean r0 = r0.done
                r15 = r0
                r0 = r7
                java.lang.Object r0 = r0.poll()
                io.reactivex.flowables.GroupedFlowable r0 = (io.reactivex.flowables.GroupedFlowable) r0
                r16 = r0
                r0 = r16
                if (r0 != 0) goto L_0x003e
                r0 = 1
                r17 = r0
                goto L_0x0041
            L_0x003e:
                r0 = 0
                r17 = r0
            L_0x0041:
                r0 = r6
                r1 = r15
                r2 = r17
                r3 = r8
                r4 = r7
                boolean r0 = r0.checkTerminated(r1, r2, r3, r4)
                if (r0 == 0) goto L_0x004f
                return
            L_0x004f:
                r0 = r17
                if (r0 == 0) goto L_0x0057
                goto L_0x0068
            L_0x0057:
                r0 = r8
                r1 = r16
                r0.onNext(r1)
                r0 = r12
                r1 = 1
                long r0 = r0 + r1
                r12 = r0
                goto L_0x0018
            L_0x0068:
                r0 = r14
                if (r0 != 0) goto L_0x007f
                r0 = r6
                r1 = r6
                boolean r1 = r1.done
                r2 = r7
                boolean r2 = r2.isEmpty()
                r3 = r8
                r4 = r7
                boolean r0 = r0.checkTerminated(r1, r2, r3, r4)
                if (r0 == 0) goto L_0x007f
                return
            L_0x007f:
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x00a5
                r0 = r10
                r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x009a
                r0 = r6
                java.util.concurrent.atomic.AtomicLong r0 = r0.requested
                r1 = r12
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
            L_0x009a:
                r0 = r6
                org.reactivestreams.Subscription r0 = r0.f430s
                r1 = r12
                r0.request(r1)
            L_0x00a5:
                r0 = r6
                r1 = r9
                int r1 = -r1
                int r0 = r0.addAndGet(r1)
                r14 = r0
                r0 = r14
                r9 = r0
                r0 = r14
                if (r0 != 0) goto L_0x000c
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableGroupBy.GroupBySubscriber.drainNormal():void");
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                for (GroupedUnicast<K, V> groupedUnicast : this.groups.values()) {
                    groupedUnicast.onComplete();
                }
                this.groups.clear();
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
            for (GroupedUnicast<K, V> groupedUnicast : this.groups.values()) {
                groupedUnicast.onError(th);
            }
            this.groups.clear();
            this.error = th;
            this.done = true;
            drain();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.done) {
                SpscLinkedArrayQueue<GroupedFlowable<K, V>> spscLinkedArrayQueue = this.queue;
                try {
                    Object apply = this.keySelector.apply(t);
                    boolean z = false;
                    Object obj = apply != null ? apply : NULL_KEY;
                    GroupedUnicast<K, V> groupedUnicast = this.groups.get(obj);
                    GroupedUnicast groupedUnicast2 = groupedUnicast;
                    if (groupedUnicast == null) {
                        if (!this.cancelled.get()) {
                            groupedUnicast2 = GroupedUnicast.createWith(apply, this.bufferSize, this, this.delayError);
                            this.groups.put(obj, groupedUnicast2);
                            this.groupCount.getAndIncrement();
                            z = true;
                        } else {
                            return;
                        }
                    }
                    try {
                        groupedUnicast2.onNext(ObjectHelper.requireNonNull(this.valueSelector.apply(t), "The valueSelector returned null"));
                        if (z) {
                            spscLinkedArrayQueue.offer(groupedUnicast2);
                            drain();
                        }
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        this.f430s.cancel();
                        onError(th);
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    this.f430s.cancel();
                    onError(th2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f430s, subscription)) {
                this.f430s = subscription;
                this.actual.onSubscribe(this);
                subscription.request(this.bufferSize);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public GroupedFlowable<K, V> poll() {
            return this.queue.poll();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast.class */
    public static final class GroupedUnicast<K, T> extends GroupedFlowable<K, T> {
        final State<T, K> state;

        protected GroupedUnicast(K k, State<T, K> state) {
            super(k);
            this.state = state;
        }

        public static <T, K> GroupedUnicast<K, T> createWith(K k, int i, GroupBySubscriber<?, K, T> groupBySubscriber, boolean z) {
            return new GroupedUnicast<>(k, new State(i, groupBySubscriber, k, z));
        }

        public void onComplete() {
            this.state.onComplete();
        }

        public void onError(Throwable th) {
            this.state.onError(th);
        }

        public void onNext(T t) {
            this.state.onNext(t);
        }

        @Override // io.reactivex.Flowable
        protected void subscribeActual(Subscriber<? super T> subscriber) {
            this.state.subscribe(subscriber);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$State.class */
    public static final class State<T, K> extends BasicIntQueueSubscription<T> implements Publisher<T> {
        private static final long serialVersionUID = -3852313036005250360L;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        final K key;
        boolean outputFused;
        final GroupBySubscriber<?, K, T> parent;
        int produced;
        final SpscLinkedArrayQueue<T> queue;
        final AtomicLong requested = new AtomicLong();
        final AtomicBoolean cancelled = new AtomicBoolean();
        final AtomicReference<Subscriber<? super T>> actual = new AtomicReference<>();
        final AtomicBoolean once = new AtomicBoolean();

        State(int i, GroupBySubscriber<?, K, T> groupBySubscriber, K k, boolean z) {
            this.queue = new SpscLinkedArrayQueue<>(i);
            this.parent = groupBySubscriber;
            this.key = k;
            this.delayError = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled.compareAndSet(false, true)) {
                this.parent.cancel(this.key);
            }
        }

        boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber, boolean z3) {
            if (this.cancelled.get()) {
                this.queue.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!z3) {
                    Throwable th = this.error;
                    if (th != null) {
                        this.queue.clear();
                        subscriber.onError(th);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        subscriber.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        subscriber.onError(th2);
                        return true;
                    }
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.queue.clear();
        }

        void drain() {
            if (getAndIncrement() == 0) {
                if (this.outputFused) {
                    drainFused();
                } else {
                    drainNormal();
                }
            }
        }

        void drainFused() {
            Throwable th;
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.queue;
            Subscriber<? super T> subscriber = this.actual.get();
            int i = 1;
            while (true) {
                if (subscriber != null) {
                    if (this.cancelled.get()) {
                        spscLinkedArrayQueue.clear();
                        return;
                    }
                    boolean z = this.done;
                    if (!z || this.delayError || (th = this.error) == null) {
                        subscriber.onNext(null);
                        if (z) {
                            Throwable th2 = this.error;
                            if (th2 != null) {
                                subscriber.onError(th2);
                                return;
                            } else {
                                subscriber.onComplete();
                                return;
                            }
                        }
                    } else {
                        spscLinkedArrayQueue.clear();
                        subscriber.onError(th);
                        return;
                    }
                }
                int addAndGet = addAndGet(-i);
                if (addAndGet != 0) {
                    i = addAndGet;
                    if (subscriber == null) {
                        subscriber = this.actual.get();
                        i = addAndGet;
                    }
                } else {
                    return;
                }
            }
        }

        void drainNormal() {
            int i;
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.queue;
            boolean z = this.delayError;
            Subscriber<? super T> subscriber = this.actual.get();
            int i2 = 1;
            while (true) {
                if (subscriber != null) {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (true) {
                        i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                        if (i == 0) {
                            break;
                        }
                        boolean z2 = this.done;
                        Object obj = (T) spscLinkedArrayQueue.poll();
                        boolean z3 = obj == null;
                        if (!checkTerminated(z2, z3, subscriber, z)) {
                            if (z3) {
                                break;
                            }
                            subscriber.onNext(obj);
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (i == 0 && checkTerminated(this.done, spscLinkedArrayQueue.isEmpty(), subscriber, z)) {
                        return;
                    }
                    if (j2 != 0) {
                        if (j != Long.MAX_VALUE) {
                            this.requested.addAndGet(-j2);
                        }
                        this.parent.f430s.request(j2);
                    }
                }
                int addAndGet = addAndGet(-i2);
                if (addAndGet != 0) {
                    i2 = addAndGet;
                    if (subscriber == null) {
                        subscriber = this.actual.get();
                        i2 = addAndGet;
                    }
                } else {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        public void onComplete() {
            this.done = true;
            drain();
        }

        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            T poll = this.queue.poll();
            if (poll != null) {
                this.produced++;
                return poll;
            }
            int i = this.produced;
            if (i == 0) {
                return null;
            }
            this.produced = 0;
            this.parent.f430s.request(i);
            return null;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> subscriber) {
            if (this.once.compareAndSet(false, true)) {
                subscriber.onSubscribe(this);
                this.actual.lazySet(subscriber);
                drain();
                return;
            }
            EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), subscriber);
        }
    }

    public FlowableGroupBy(Flowable<T> flowable, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z) {
        super(flowable);
        this.keySelector = function;
        this.valueSelector = function2;
        this.bufferSize = i;
        this.delayError = z;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super GroupedFlowable<K, V>> subscriber) {
        this.source.subscribe((FlowableSubscriber) new GroupBySubscriber(subscriber, this.keySelector, this.valueSelector, this.bufferSize, this.delayError));
    }
}
