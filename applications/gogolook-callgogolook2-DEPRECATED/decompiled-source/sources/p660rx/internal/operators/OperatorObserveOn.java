package p660rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.exceptions.MissingBackpressureException;
import p660rx.functions.Action0;
import p660rx.internal.schedulers.ImmediateScheduler;
import p660rx.internal.schedulers.TrampolineScheduler;
import p660rx.internal.util.RxRingBuffer;
import p660rx.internal.util.atomic.SpscAtomicArrayQueue;
import p660rx.internal.util.unsafe.SpscArrayQueue;
import p660rx.internal.util.unsafe.UnsafeAccess;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.OperatorObserveOn */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorObserveOn.class */
public final class OperatorObserveOn<T> implements Observable.Operator<T, T> {
    public final int bufferSize;
    public final boolean delayError;
    public final Scheduler scheduler;

    /* renamed from: rx.internal.operators.OperatorObserveOn$ObserveOnSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorObserveOn$ObserveOnSubscriber.class */
    public static final class ObserveOnSubscriber<T> extends Subscriber<T> implements Action0 {
        public final Subscriber<? super T> child;
        public final boolean delayError;
        public long emitted;
        public Throwable error;
        public volatile boolean finished;
        public final int limit;
        public final Queue<Object> queue;
        public final Scheduler.Worker recursiveScheduler;
        public final AtomicLong requested = new AtomicLong();
        public final AtomicLong counter = new AtomicLong();

        public ObserveOnSubscriber(Scheduler scheduler, Subscriber<? super T> subscriber, boolean z, int i) {
            this.child = subscriber;
            this.recursiveScheduler = scheduler.createWorker();
            this.delayError = z;
            i = i <= 0 ? RxRingBuffer.SIZE : i;
            this.limit = i - (i >> 2);
            if (UnsafeAccess.isUnsafeAvailable()) {
                this.queue = new SpscArrayQueue(i);
            } else {
                this.queue = new SpscAtomicArrayQueue(i);
            }
            request(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v33, types: [long] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r7v3 */
        /* JADX WARN: Type inference failed for: r7v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // p660rx.functions.Action0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void call() {
            /*
                r6 = this;
                r0 = r6
                long r0 = r0.emitted
                r7 = r0
                r0 = r6
                java.util.Queue<java.lang.Object> r0 = r0.queue
                r9 = r0
                r0 = r6
                rx.Subscriber<? super T> r0 = r0.child
                r10 = r0
                r0 = 1
                r11 = r0
            L_0x0013:
                r0 = r6
                java.util.concurrent.atomic.AtomicLong r0 = r0.requested
                long r0 = r0.get()
                r13 = r0
            L_0x001c:
                r0 = r13
                r1 = r7
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r15 = r0
                r0 = r15
                if (r0 == 0) goto L_0x008f
                r0 = r6
                boolean r0 = r0.finished
                r16 = r0
                r0 = r9
                java.lang.Object r0 = r0.poll()
                r17 = r0
                r0 = r17
                if (r0 != 0) goto L_0x0040
                r0 = 1
                r18 = r0
                goto L_0x0043
            L_0x0040:
                r0 = 0
                r18 = r0
            L_0x0043:
                r0 = r6
                r1 = r16
                r2 = r18
                r3 = r10
                r4 = r9
                boolean r0 = r0.checkTerminated(r1, r2, r3, r4)
                if (r0 == 0) goto L_0x0052
                return
            L_0x0052:
                r0 = r18
                if (r0 == 0) goto L_0x005a
                goto L_0x008f
            L_0x005a:
                r0 = r10
                r1 = r17
                java.lang.Object r1 = p660rx.internal.operators.NotificationLite.getValue(r1)
                r0.onNext(r1)
                r0 = r7
                r1 = 1
                long r0 = r0 + r1
                r19 = r0
                r0 = r19
                r7 = r0
                r0 = r19
                r1 = r6
                int r1 = r1.limit
                long r1 = (long) r1
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x001c
                r0 = r6
                java.util.concurrent.atomic.AtomicLong r0 = r0.requested
                r1 = r19
                long r0 = p660rx.internal.operators.BackpressureUtils.produced(r0, r1)
                r13 = r0
                r0 = r6
                r1 = r19
                r0.request(r1)
                r0 = 0
                r7 = r0
                goto L_0x001c
            L_0x008f:
                r0 = r15
                if (r0 != 0) goto L_0x00a9
                r0 = r6
                r1 = r6
                boolean r1 = r1.finished
                r2 = r9
                boolean r2 = r2.isEmpty()
                r3 = r10
                r4 = r9
                boolean r0 = r0.checkTerminated(r1, r2, r3, r4)
                if (r0 == 0) goto L_0x00a9
                return
            L_0x00a9:
                r0 = r6
                r1 = r7
                r0.emitted = r1
                r0 = r6
                java.util.concurrent.atomic.AtomicLong r0 = r0.counter
                r1 = r11
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r13 = r0
                r0 = r13
                r11 = r0
                r0 = r13
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0013
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.OperatorObserveOn.ObserveOnSubscriber.call():void");
        }

        /* JADX WARN: Finally extract failed */
        public boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber, Queue<Object> queue) {
            if (subscriber.isUnsubscribed()) {
                queue.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!this.delayError) {
                    Throwable th = this.error;
                    if (th != null) {
                        queue.clear();
                        try {
                            subscriber.onError(th);
                            this.recursiveScheduler.unsubscribe();
                            return true;
                        } finally {
                        }
                    } else if (!z2) {
                        return false;
                    } else {
                        try {
                            subscriber.onCompleted();
                            this.recursiveScheduler.unsubscribe();
                            return true;
                        } finally {
                        }
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = this.error;
                    try {
                        if (th2 != null) {
                            subscriber.onError(th2);
                        } else {
                            subscriber.onCompleted();
                        }
                        return false;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }

        public void init() {
            Subscriber<? super T> subscriber = this.child;
            subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OperatorObserveOn.ObserveOnSubscriber.1
                @Override // p660rx.Producer
                public void request(long j) {
                    if (j > 0) {
                        BackpressureUtils.getAndAddRequest(ObserveOnSubscriber.this.requested, j);
                        ObserveOnSubscriber.this.schedule();
                    }
                }
            });
            subscriber.add(this.recursiveScheduler);
            subscriber.add(this);
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            if (!isUnsubscribed() && !this.finished) {
                this.finished = true;
                schedule();
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            if (isUnsubscribed() || this.finished) {
                RxJavaHooks.onError(th);
                return;
            }
            this.error = th;
            this.finished = true;
            schedule();
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            if (!isUnsubscribed() && !this.finished) {
                if (!this.queue.offer(NotificationLite.next(t))) {
                    onError(new MissingBackpressureException());
                } else {
                    schedule();
                }
            }
        }

        public void schedule() {
            if (this.counter.getAndIncrement() == 0) {
                this.recursiveScheduler.schedule(this);
            }
        }
    }

    public OperatorObserveOn(Scheduler scheduler, boolean z, int i) {
        this.scheduler = scheduler;
        this.delayError = z;
        this.bufferSize = i <= 0 ? RxRingBuffer.SIZE : i;
    }

    @Override // p660rx.functions.Func1
    public /* bridge */ /* synthetic */ Object call(Object obj) {
        return call((Subscriber) ((Subscriber) obj));
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Scheduler scheduler = this.scheduler;
        if (!(scheduler instanceof ImmediateScheduler) && !(scheduler instanceof TrampolineScheduler)) {
            ObserveOnSubscriber observeOnSubscriber = new ObserveOnSubscriber(scheduler, subscriber, this.delayError, this.bufferSize);
            observeOnSubscriber.init();
            return observeOnSubscriber;
        }
        return subscriber;
    }
}
