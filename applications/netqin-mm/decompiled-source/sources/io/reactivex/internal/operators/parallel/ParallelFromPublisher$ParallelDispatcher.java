package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher.class */
public final class ParallelFromPublisher$ParallelDispatcher<T> extends AtomicInteger implements AbstractC9829h<T> {
    public static final long serialVersionUID = -4470634016609963609L;
    public volatile boolean cancelled;
    public volatile boolean done;
    public final long[] emissions;
    public Throwable error;
    public int index;
    public final int limit;
    public final int prefetch;
    public int produced;
    public AbstractC9661j<T> queue;
    public final AtomicLongArray requests;

    /* renamed from: s */
    public AbstractC10434d f38538s;
    public int sourceMode;
    public final AtomicInteger subscriberCount = new AtomicInteger();
    public final AbstractC10433c<? super T>[] subscribers;

    /* renamed from: io.reactivex.internal.operators.parallel.ParallelFromPublisher$ParallelDispatcher$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$a.class */
    public final class C10419a implements AbstractC10434d {

        /* renamed from: a */
        public final int f38539a;

        /* renamed from: b */
        public final int f38540b;

        public C10419a(int i, int i2) {
            this.f38539a = i;
            this.f38540b = i2;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (ParallelFromPublisher$ParallelDispatcher.this.requests.compareAndSet(this.f38539a + this.f38540b, 0L, 1L)) {
                ParallelFromPublisher$ParallelDispatcher parallelFromPublisher$ParallelDispatcher = ParallelFromPublisher$ParallelDispatcher.this;
                int i = this.f38540b;
                parallelFromPublisher$ParallelDispatcher.cancel(i + i);
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            long j2;
            if (SubscriptionHelper.validate(j)) {
                AtomicLongArray atomicLongArray = ParallelFromPublisher$ParallelDispatcher.this.requests;
                do {
                    j2 = atomicLongArray.get(this.f38539a);
                    if (j2 != Long.MAX_VALUE) {
                    } else {
                        return;
                    }
                } while (!atomicLongArray.compareAndSet(this.f38539a, j2, C9800b.m2013a(j2, j)));
                if (ParallelFromPublisher$ParallelDispatcher.this.subscriberCount.get() == this.f38540b) {
                    ParallelFromPublisher$ParallelDispatcher.this.drain();
                }
            }
        }
    }

    public ParallelFromPublisher$ParallelDispatcher(AbstractC10433c<? super T>[] cVarArr, int i) {
        this.subscribers = cVarArr;
        this.prefetch = i;
        this.limit = i - (i >> 2);
        int length = cVarArr.length;
        int i2 = length + length;
        AtomicLongArray atomicLongArray = new AtomicLongArray(i2 + 1);
        this.requests = atomicLongArray;
        atomicLongArray.lazySet(i2, length);
        this.emissions = new long[length];
    }

    public void cancel(int i) {
        if (this.requests.decrementAndGet(i) == 0) {
            this.cancelled = true;
            this.f38538s.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            if (this.sourceMode == 1) {
                drainSync();
            } else {
                drainAsync();
            }
        }
    }

    public void drainAsync() {
        int i;
        int i2;
        int i3;
        Throwable th;
        AbstractC9661j<T> jVar = this.queue;
        AbstractC10433c<? super T>[] cVarArr = this.subscribers;
        AtomicLongArray atomicLongArray = this.requests;
        long[] jArr = this.emissions;
        int length = jArr.length;
        int i4 = this.index;
        int i5 = this.produced;
        int i6 = 1;
        while (true) {
            int i7 = 0;
            while (!this.cancelled) {
                boolean z = this.done;
                if (!z || (th = this.error) == null) {
                    boolean isEmpty = jVar.isEmpty();
                    if (!z || !isEmpty) {
                        if (isEmpty) {
                            i = i4;
                        } else {
                            long j = atomicLongArray.get(i4);
                            long j2 = jArr[i4];
                            if (j == j2 || atomicLongArray.get(length + i4) != 0) {
                                i2 = i7 + 1;
                                i3 = i5;
                            } else {
                                try {
                                    T poll = jVar.poll();
                                    if (poll == null) {
                                        i = i4;
                                    } else {
                                        cVarArr[i4].onNext(poll);
                                        jArr[i4] = j2 + 1;
                                        int i8 = i5 + 1;
                                        i3 = i8;
                                        if (i8 == this.limit) {
                                            this.f38538s.request(i8);
                                            i3 = 0;
                                        }
                                        i2 = 0;
                                    }
                                } catch (Throwable th2) {
                                    C9863a.m1822b(th2);
                                    this.f38538s.cancel();
                                    for (AbstractC10433c<? super T> cVar : cVarArr) {
                                        cVar.onError(th2);
                                    }
                                    return;
                                }
                            }
                            int i9 = i4 + 1;
                            i = i9;
                            if (i9 == length) {
                                i = 0;
                            }
                            i4 = i;
                            i5 = i3;
                            i7 = i2;
                            if (i2 == length) {
                                i5 = i3;
                            }
                        }
                        int i10 = get();
                        if (i10 == i6) {
                            this.index = i;
                            this.produced = i5;
                            int addAndGet = addAndGet(-i6);
                            i4 = i;
                            i6 = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            i6 = i10;
                            i4 = i;
                        }
                    } else {
                        for (AbstractC10433c<? super T> cVar2 : cVarArr) {
                            cVar2.onComplete();
                        }
                        return;
                    }
                } else {
                    jVar.clear();
                    for (AbstractC10433c<? super T> cVar3 : cVarArr) {
                        cVar3.onError(th);
                    }
                    return;
                }
            }
            jVar.clear();
            return;
        }
    }

    public void drainSync() {
        int i;
        AbstractC9661j<T> jVar = this.queue;
        AbstractC10433c<? super T>[] cVarArr = this.subscribers;
        AtomicLongArray atomicLongArray = this.requests;
        long[] jArr = this.emissions;
        int length = jArr.length;
        int i2 = this.index;
        int i3 = 1;
        while (true) {
            int i4 = 0;
            while (!this.cancelled) {
                if (jVar.isEmpty()) {
                    for (AbstractC10433c<? super T> cVar : cVarArr) {
                        cVar.onComplete();
                    }
                    return;
                }
                long j = atomicLongArray.get(i2);
                long j2 = jArr[i2];
                if (j == j2 || atomicLongArray.get(length + i2) != 0) {
                    i = i4 + 1;
                } else {
                    try {
                        T poll = jVar.poll();
                        if (poll == null) {
                            for (AbstractC10433c<? super T> cVar2 : cVarArr) {
                                cVar2.onComplete();
                            }
                            return;
                        }
                        cVarArr[i2].onNext(poll);
                        jArr[i2] = j2 + 1;
                        i = 0;
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        this.f38538s.cancel();
                        for (AbstractC10433c<? super T> cVar3 : cVarArr) {
                            cVar3.onError(th);
                        }
                        return;
                    }
                }
                int i5 = i2 + 1;
                i2 = i5;
                if (i5 == length) {
                    i2 = 0;
                }
                i2 = i2;
                i4 = i;
                if (i == length) {
                    int i6 = get();
                    if (i6 == i3) {
                        this.index = i2;
                        int addAndGet = addAndGet(-i3);
                        i3 = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        i3 = i6;
                    }
                }
            }
            jVar.clear();
            return;
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.sourceMode != 0 || this.queue.offer(t)) {
            drain();
            return;
        }
        this.f38538s.cancel();
        onError(new MissingBackpressureException("Queue is full?"));
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38538s, dVar)) {
            this.f38538s = dVar;
            if (dVar instanceof AbstractC9658g) {
                AbstractC9658g gVar = (AbstractC9658g) dVar;
                int requestFusion = gVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.sourceMode = requestFusion;
                    this.queue = gVar;
                    this.done = true;
                    setupSubscribers();
                    drain();
                    return;
                } else if (requestFusion == 2) {
                    this.sourceMode = requestFusion;
                    this.queue = gVar;
                    setupSubscribers();
                    dVar.request(this.prefetch);
                    return;
                }
            }
            this.queue = new SpscArrayQueue(this.prefetch);
            setupSubscribers();
            dVar.request(this.prefetch);
        }
    }

    public void setupSubscribers() {
        AbstractC10433c<? super T>[] cVarArr = this.subscribers;
        int length = cVarArr.length;
        int i = 0;
        while (i < length && !this.cancelled) {
            int i2 = i + 1;
            this.subscriberCount.lazySet(i2);
            cVarArr[i].onSubscribe(new C10419a(i, length));
            i = i2;
        }
    }
}
