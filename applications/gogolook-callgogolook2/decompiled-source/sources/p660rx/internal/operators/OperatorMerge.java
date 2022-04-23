package p660rx.internal.operators;

import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.CompositeException;
import p660rx.exceptions.MissingBackpressureException;
import p660rx.exceptions.OnErrorThrowable;
import p660rx.internal.util.RxRingBuffer;
import p660rx.internal.util.ScalarSynchronousObservable;
import p660rx.internal.util.atomic.SpscAtomicArrayQueue;
import p660rx.internal.util.atomic.SpscExactAtomicArrayQueue;
import p660rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue;
import p660rx.internal.util.unsafe.Pow2;
import p660rx.internal.util.unsafe.SpscArrayQueue;
import p660rx.internal.util.unsafe.UnsafeAccess;
import p660rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.operators.OperatorMerge */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorMerge.class */
public final class OperatorMerge<T> implements Observable.Operator<T, Observable<? extends T>> {
    public final boolean delayErrors;
    public final int maxConcurrent;

    /* renamed from: rx.internal.operators.OperatorMerge$HolderDelayErrors */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorMerge$HolderDelayErrors.class */
    public static final class HolderDelayErrors {
        public static final OperatorMerge<Object> INSTANCE = new OperatorMerge<>(true, Integer.MAX_VALUE);
    }

    /* renamed from: rx.internal.operators.OperatorMerge$HolderNoDelay */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorMerge$HolderNoDelay.class */
    public static final class HolderNoDelay {
        public static final OperatorMerge<Object> INSTANCE = new OperatorMerge<>(false, Integer.MAX_VALUE);
    }

    /* renamed from: rx.internal.operators.OperatorMerge$InnerSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorMerge$InnerSubscriber.class */
    public static final class InnerSubscriber<T> extends Subscriber<T> {
        public static final int LIMIT = RxRingBuffer.SIZE / 4;
        public volatile boolean done;

        /* renamed from: id */
        public final long f33467id;
        public int outstanding;
        public final MergeSubscriber<T> parent;
        public volatile RxRingBuffer queue;

        public InnerSubscriber(MergeSubscriber<T> mergeSubscriber, long j) {
            this.parent = mergeSubscriber;
            this.f33467id = j;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            this.done = true;
            this.parent.emit();
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.done = true;
            this.parent.getOrCreateErrorQueue().offer(th);
            this.parent.emit();
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            this.parent.tryEmit(this, t);
        }

        @Override // p660rx.Subscriber
        public void onStart() {
            int i = RxRingBuffer.SIZE;
            this.outstanding = i;
            request(i);
        }

        public void requestMore(long j) {
            int i = this.outstanding - ((int) j);
            if (i > LIMIT) {
                this.outstanding = i;
                return;
            }
            int i2 = RxRingBuffer.SIZE;
            this.outstanding = i2;
            int i3 = i2 - i;
            if (i3 > 0) {
                request(i3);
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorMerge$MergeProducer */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorMerge$MergeProducer.class */
    public static final class MergeProducer<T> extends AtomicLong implements Producer {
        public final MergeSubscriber<T> subscriber;

        public MergeProducer(MergeSubscriber<T> mergeSubscriber) {
            this.subscriber = mergeSubscriber;
        }

        public long produced(int i) {
            return addAndGet(-i);
        }

        @Override // p660rx.Producer
        public void request(long j) {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i > 0) {
                if (get() != Long.MAX_VALUE) {
                    BackpressureUtils.getAndAddRequest(this, j);
                    this.subscriber.emit();
                }
            } else if (i < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorMerge$MergeSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorMerge$MergeSubscriber.class */
    public static final class MergeSubscriber<T> extends Subscriber<Observable<? extends T>> {
        public static final InnerSubscriber<?>[] EMPTY = new InnerSubscriber[0];
        public final Subscriber<? super T> child;
        public final boolean delayErrors;
        public volatile boolean done;
        public boolean emitting;
        public volatile ConcurrentLinkedQueue<Throwable> errors;
        public final Object innerGuard = new Object();
        public volatile InnerSubscriber<?>[] innerSubscribers = EMPTY;
        public long lastId;
        public int lastIndex;
        public final int maxConcurrent;
        public boolean missed;
        public MergeProducer<T> producer;
        public volatile Queue<Object> queue;
        public int scalarEmissionCount;
        public final int scalarEmissionLimit;
        public volatile CompositeSubscription subscriptions;
        public long uniqueId;

        public MergeSubscriber(Subscriber<? super T> subscriber, boolean z, int i) {
            this.child = subscriber;
            this.delayErrors = z;
            this.maxConcurrent = i;
            if (i == Integer.MAX_VALUE) {
                this.scalarEmissionLimit = Integer.MAX_VALUE;
                request(Long.MAX_VALUE);
                return;
            }
            this.scalarEmissionLimit = Math.max(1, i >> 1);
            request(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void addInner(InnerSubscriber<T> innerSubscriber) {
            getOrCreateComposite().add(innerSubscriber);
            synchronized (this.innerGuard) {
                InnerSubscriber<?>[] innerSubscriberArr = this.innerSubscribers;
                int length = innerSubscriberArr.length;
                InnerSubscriber<?>[] innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
                this.innerSubscribers = innerSubscriberArr2;
            }
        }

        /* JADX WARN: Finally extract failed */
        public boolean checkTerminate() {
            if (this.child.isUnsubscribed()) {
                return true;
            }
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.errors;
            if (this.delayErrors || concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
                return false;
            }
            try {
                reportError();
                unsubscribe();
                return true;
            } catch (Throwable th) {
                unsubscribe();
                throw th;
            }
        }

        public void emit() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                emitLoop();
            }
        }

        public void emitEmpty() {
            int i = this.scalarEmissionCount + 1;
            if (i == this.scalarEmissionLimit) {
                this.scalarEmissionCount = 0;
                requestMore(i);
                return;
            }
            this.scalarEmissionCount = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:126:0x02c4, code lost:
            if (r0.isEmpty() != false) goto L_0x02c7;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:215:0x0314 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01db A[Catch: all -> 0x037a, TRY_ENTER, TryCatch #6 {all -> 0x037a, blocks: (B:2:0x0000, B:4:0x0006, B:7:0x000d, B:18:0x0049, B:23:0x0061, B:27:0x00a1, B:34:0x00bf, B:43:0x00f2, B:47:0x0113, B:51:0x0122, B:53:0x012d, B:56:0x013a, B:57:0x0141, B:61:0x014d, B:65:0x0163, B:74:0x018b, B:81:0x01b1, B:86:0x01db, B:93:0x01fe, B:96:0x0206, B:99:0x0216, B:102:0x0227, B:110:0x0263, B:112:0x0274, B:119:0x0297, B:125:0x02bf, B:128:0x02c8, B:140:0x0318, B:144:0x0335, B:148:0x0345, B:25:0x0069), top: B:192:0x0000 }] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r18v1 */
        /* JADX WARN: Type inference failed for: r18v10 */
        /* JADX WARN: Type inference failed for: r18v3, types: [long] */
        /* JADX WARN: Type inference failed for: r18v4 */
        /* JADX WARN: Type inference failed for: r5v0, types: [rx.internal.operators.OperatorMerge$MergeSubscriber<T>, rx.Subscriber, rx.internal.operators.OperatorMerge$MergeSubscriber] */
        /* JADX WARN: Type inference failed for: r8v0, types: [long] */
        /* JADX WARN: Type inference failed for: r8v13, types: [long] */
        /* JADX WARN: Type inference failed for: r8v15 */
        /* JADX WARN: Type inference failed for: r8v24 */
        /* JADX WARN: Type inference failed for: r8v25 */
        /* JADX WARN: Unknown variable types count: 4 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void emitLoop() {
            /*
                Method dump skipped, instructions count: 918
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.OperatorMerge.MergeSubscriber.emitLoop():void");
        }

        public void emitScalar(T t, long j) {
            try {
                this.child.onNext(t);
                if (j != Long.MAX_VALUE) {
                    try {
                        this.producer.produced(1);
                    }
                }
                int i = this.scalarEmissionCount + 1;
                if (i == this.scalarEmissionLimit) {
                    this.scalarEmissionCount = 0;
                    requestMore(i);
                } else {
                    this.scalarEmissionCount = i;
                }
                synchronized (this) {
                    if (!this.missed) {
                        this.emitting = false;
                        return;
                    }
                    this.missed = false;
                    emitLoop();
                }
            }
        }

        public void emitScalar(InnerSubscriber<T> innerSubscriber, T t, long j) {
            try {
                this.child.onNext(t);
                if (j != Long.MAX_VALUE) {
                    try {
                        this.producer.produced(1);
                    }
                }
                innerSubscriber.requestMore(1L);
                synchronized (this) {
                    if (!this.missed) {
                        this.emitting = false;
                        return;
                    }
                    this.missed = false;
                    emitLoop();
                }
            }
        }

        public CompositeSubscription getOrCreateComposite() {
            CompositeSubscription compositeSubscription = this.subscriptions;
            CompositeSubscription compositeSubscription2 = compositeSubscription;
            if (compositeSubscription == null) {
                boolean z = false;
                synchronized (this) {
                    CompositeSubscription compositeSubscription3 = this.subscriptions;
                    compositeSubscription2 = compositeSubscription3;
                    if (compositeSubscription3 == null) {
                        compositeSubscription2 = new CompositeSubscription();
                        this.subscriptions = compositeSubscription2;
                        z = true;
                    }
                }
                if (z) {
                    add(compositeSubscription2);
                }
            }
            return compositeSubscription2;
        }

        public Queue<Throwable> getOrCreateErrorQueue() {
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.errors;
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue2 = concurrentLinkedQueue;
            if (concurrentLinkedQueue == null) {
                synchronized (this) {
                    ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue3 = this.errors;
                    concurrentLinkedQueue2 = concurrentLinkedQueue3;
                    if (concurrentLinkedQueue3 == null) {
                        concurrentLinkedQueue2 = new ConcurrentLinkedQueue<>();
                        this.errors = concurrentLinkedQueue2;
                    }
                }
            }
            return concurrentLinkedQueue2;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            this.done = true;
            emit();
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            getOrCreateErrorQueue().offer(th);
            this.done = true;
            emit();
        }

        @Override // p660rx.Observer
        public /* bridge */ /* synthetic */ void onNext(Object obj) {
            onNext((Observable) ((Observable) obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onNext(Observable<? extends T> observable) {
            if (observable != null) {
                if (observable == Observable.empty()) {
                    emitEmpty();
                } else if (observable instanceof ScalarSynchronousObservable) {
                    tryEmit(((ScalarSynchronousObservable) observable).get());
                } else {
                    long j = this.uniqueId;
                    this.uniqueId = 1 + j;
                    InnerSubscriber innerSubscriber = new InnerSubscriber(this, j);
                    addInner(innerSubscriber);
                    observable.unsafeSubscribe(innerSubscriber);
                    emit();
                }
            }
        }

        public void queueScalar(T t) {
            Queue<Object> queue = this.queue;
            Queue<Object> queue2 = queue;
            if (queue == null) {
                int i = this.maxConcurrent;
                queue2 = i == Integer.MAX_VALUE ? new SpscUnboundedAtomicArrayQueue<>(RxRingBuffer.SIZE) : Pow2.isPowerOfTwo(i) ? UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue<>(i) : new SpscAtomicArrayQueue<>(i) : new SpscExactAtomicArrayQueue<>(i);
                this.queue = queue2;
            }
            if (!queue2.offer(NotificationLite.next(t))) {
                unsubscribe();
                onError(OnErrorThrowable.addValueAsLastCause(new MissingBackpressureException(), t));
            }
        }

        public void queueScalar(InnerSubscriber<T> innerSubscriber, T t) {
            RxRingBuffer rxRingBuffer = innerSubscriber.queue;
            RxRingBuffer rxRingBuffer2 = rxRingBuffer;
            if (rxRingBuffer == null) {
                rxRingBuffer2 = RxRingBuffer.getSpscInstance();
                innerSubscriber.add(rxRingBuffer2);
                innerSubscriber.queue = rxRingBuffer2;
            }
            try {
                rxRingBuffer2.onNext(NotificationLite.next(t));
            } catch (IllegalStateException e) {
                if (!innerSubscriber.isUnsubscribed()) {
                    innerSubscriber.unsubscribe();
                    innerSubscriber.onError(e);
                }
            } catch (MissingBackpressureException e2) {
                innerSubscriber.unsubscribe();
                innerSubscriber.onError(e2);
            }
        }

        public void removeInner(InnerSubscriber<T> innerSubscriber) {
            RxRingBuffer rxRingBuffer = innerSubscriber.queue;
            if (rxRingBuffer != null) {
                rxRingBuffer.release();
            }
            this.subscriptions.remove(innerSubscriber);
            synchronized (this.innerGuard) {
                InnerSubscriber<?>[] innerSubscriberArr = this.innerSubscribers;
                int length = innerSubscriberArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (innerSubscriber.equals(innerSubscriberArr[i2])) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        this.innerSubscribers = EMPTY;
                        return;
                    }
                    InnerSubscriber<?>[] innerSubscriberArr2 = new InnerSubscriber[length - 1];
                    System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, i);
                    System.arraycopy(innerSubscriberArr, i + 1, innerSubscriberArr2, i, (length - i) - 1);
                    this.innerSubscribers = innerSubscriberArr2;
                }
            }
        }

        public final void reportError() {
            ArrayList arrayList = new ArrayList(this.errors);
            if (arrayList.size() == 1) {
                this.child.onError((Throwable) arrayList.get(0));
            } else {
                this.child.onError(new CompositeException(arrayList));
            }
        }

        public void requestMore(long j) {
            request(j);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void tryEmit(T r6) {
            /*
                r5 = this;
                r0 = r5
                rx.internal.operators.OperatorMerge$MergeProducer<T> r0 = r0.producer
                long r0 = r0.get()
                r7 = r0
                r0 = 0
                r9 = r0
                r0 = 0
                r10 = r0
                r0 = r7
                r11 = r0
                r0 = r7
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x004a
                r0 = r5
                monitor-enter(r0)
                r0 = r5
                rx.internal.operators.OperatorMerge$MergeProducer<T> r0 = r0.producer     // Catch: all -> 0x0045
                long r0 = r0.get()     // Catch: all -> 0x0045
                r11 = r0
                r0 = r10
                r9 = r0
                r0 = r5
                boolean r0 = r0.emitting     // Catch: all -> 0x0045
                if (r0 != 0) goto L_0x0040
                r0 = r10
                r9 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0040
                r0 = r5
                r1 = 1
                r0.emitting = r1     // Catch: all -> 0x0045
                r0 = 1
                r9 = r0
            L_0x0040:
                r0 = r5
                monitor-exit(r0)     // Catch: all -> 0x0045
                goto L_0x004a
            L_0x0045:
                r6 = move-exception
                r0 = r5
                monitor-exit(r0)     // Catch: all -> 0x0045
                r0 = r6
                throw r0
            L_0x004a:
                r0 = r9
                if (r0 == 0) goto L_0x007d
                r0 = r5
                java.util.Queue<java.lang.Object> r0 = r0.queue
                r13 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0073
                r0 = r13
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L_0x0067
                goto L_0x0073
            L_0x0067:
                r0 = r5
                r1 = r6
                r0.queueScalar(r1)
                r0 = r5
                r0.emitLoop()
                goto L_0x0086
            L_0x0073:
                r0 = r5
                r1 = r6
                r2 = r11
                r0.emitScalar(r1, r2)
                goto L_0x0086
            L_0x007d:
                r0 = r5
                r1 = r6
                r0.queueScalar(r1)
                r0 = r5
                r0.emit()
            L_0x0086:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.OperatorMerge.MergeSubscriber.tryEmit(java.lang.Object):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void tryEmit(p660rx.internal.operators.OperatorMerge.InnerSubscriber<T> r7, T r8) {
            /*
                r6 = this;
                r0 = r6
                rx.internal.operators.OperatorMerge$MergeProducer<T> r0 = r0.producer
                long r0 = r0.get()
                r9 = r0
                r0 = 0
                r11 = r0
                r0 = 0
                r12 = r0
                r0 = r9
                r13 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x004a
                r0 = r6
                monitor-enter(r0)
                r0 = r6
                rx.internal.operators.OperatorMerge$MergeProducer<T> r0 = r0.producer     // Catch: all -> 0x0045
                long r0 = r0.get()     // Catch: all -> 0x0045
                r13 = r0
                r0 = r12
                r11 = r0
                r0 = r6
                boolean r0 = r0.emitting     // Catch: all -> 0x0045
                if (r0 != 0) goto L_0x0040
                r0 = r12
                r11 = r0
                r0 = r13
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0040
                r0 = r6
                r1 = 1
                r0.emitting = r1     // Catch: all -> 0x0045
                r0 = 1
                r11 = r0
            L_0x0040:
                r0 = r6
                monitor-exit(r0)     // Catch: all -> 0x0045
                goto L_0x004a
            L_0x0045:
                r7 = move-exception
                r0 = r6
                monitor-exit(r0)     // Catch: all -> 0x0045
                r0 = r7
                throw r0
            L_0x004a:
                r0 = r11
                if (r0 == 0) goto L_0x007d
                r0 = r7
                rx.internal.util.RxRingBuffer r0 = r0.queue
                r15 = r0
                r0 = r15
                if (r0 == 0) goto L_0x0072
                r0 = r15
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L_0x0065
                goto L_0x0072
            L_0x0065:
                r0 = r6
                r1 = r7
                r2 = r8
                r0.queueScalar(r1, r2)
                r0 = r6
                r0.emitLoop()
                goto L_0x0087
            L_0x0072:
                r0 = r6
                r1 = r7
                r2 = r8
                r3 = r13
                r0.emitScalar(r1, r2, r3)
                goto L_0x0087
            L_0x007d:
                r0 = r6
                r1 = r7
                r2 = r8
                r0.queueScalar(r1, r2)
                r0 = r6
                r0.emit()
            L_0x0087:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.OperatorMerge.MergeSubscriber.tryEmit(rx.internal.operators.OperatorMerge$InnerSubscriber, java.lang.Object):void");
        }
    }

    public OperatorMerge(boolean z, int i) {
        this.delayErrors = z;
        this.maxConcurrent = i;
    }

    public static <T> OperatorMerge<T> instance(boolean z) {
        return z ? (OperatorMerge<T>) HolderDelayErrors.INSTANCE : (OperatorMerge<T>) HolderNoDelay.INSTANCE;
    }

    @Override // p660rx.functions.Func1
    public /* bridge */ /* synthetic */ Object call(Object obj) {
        return call((Subscriber) ((Subscriber) obj));
    }

    public Subscriber<Observable<? extends T>> call(Subscriber<? super T> subscriber) {
        MergeSubscriber mergeSubscriber = new MergeSubscriber(subscriber, this.delayErrors, this.maxConcurrent);
        MergeProducer<T> mergeProducer = new MergeProducer<>(mergeSubscriber);
        mergeSubscriber.producer = mergeProducer;
        subscriber.add(mergeSubscriber);
        subscriber.setProducer(mergeProducer);
        return mergeSubscriber;
    }
}
