package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver.class */
public final class FlowableMergeWithSingle$MergeWithObserver<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final int OTHER_STATE_CONSUMED_OR_EMPTY = 2;
    public static final int OTHER_STATE_HAS_VALUE = 1;
    public static final long serialVersionUID = -4592979584110982903L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public int consumed;
    public long emitted;
    public final int limit;
    public volatile boolean mainDone;
    public volatile int otherState;
    public final int prefetch;
    public volatile AbstractC9660i<T> queue;
    public T singleItem;
    public final AtomicReference<AbstractC10434d> mainSubscription = new AtomicReference<>();
    public final OtherObserver<T> otherObserver = new OtherObserver<>(this);
    public final AtomicThrowable error = new AtomicThrowable();
    public final AtomicLong requested = new AtomicLong();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver.class */
    public static final class OtherObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T> {
        public static final long serialVersionUID = -2935427570954647017L;
        public final FlowableMergeWithSingle$MergeWithObserver<T> parent;

        public OtherObserver(FlowableMergeWithSingle$MergeWithObserver<T> flowableMergeWithSingle$MergeWithObserver) {
            this.parent = flowableMergeWithSingle$MergeWithObserver;
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            this.parent.otherSuccess(t);
        }
    }

    public FlowableMergeWithSingle$MergeWithObserver(AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
        int g = AbstractC9814e.m1946g();
        this.prefetch = g;
        this.limit = g - (g >> 2);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        SubscriptionHelper.cancel(this.mainSubscription);
        DisposableHelper.dispose(this.otherObserver);
        if (getAndIncrement() == 0) {
            this.queue = null;
            this.singleItem = null;
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    public void drainLoop() {
        AbstractC10433c<? super T> cVar = this.actual;
        long j = this.emitted;
        int i = this.consumed;
        int i2 = this.limit;
        int i3 = 1;
        do {
            long j2 = this.requested.get();
            while (j != j2) {
                if (this.cancelled) {
                    this.singleItem = null;
                    this.queue = null;
                    return;
                } else if (this.error.get() != null) {
                    this.singleItem = null;
                    this.queue = null;
                    cVar.onError(this.error.terminate());
                    return;
                } else {
                    int i4 = this.otherState;
                    if (i4 == 1) {
                        this.singleItem = null;
                        this.otherState = 2;
                        cVar.onNext((T) this.singleItem);
                        j++;
                    } else {
                        boolean z = this.mainDone;
                        AbstractC9660i<T> iVar = this.queue;
                        T poll = iVar != null ? iVar.poll() : (Object) null;
                        boolean z2 = poll == null;
                        if (z && z2 && i4 == 2) {
                            this.queue = null;
                            cVar.onComplete();
                            return;
                        } else if (z2) {
                            break;
                        } else {
                            cVar.onNext(poll);
                            j++;
                            int i5 = i + 1;
                            i = i5;
                            if (i5 == i2) {
                                this.mainSubscription.get().request(i2);
                                i = 0;
                            }
                        }
                    }
                }
            }
            if (j == j2) {
                if (this.cancelled) {
                    this.singleItem = null;
                    this.queue = null;
                    return;
                } else if (this.error.get() != null) {
                    this.singleItem = null;
                    this.queue = null;
                    cVar.onError(this.error.terminate());
                    return;
                } else {
                    boolean z3 = this.mainDone;
                    AbstractC9660i<T> iVar2 = this.queue;
                    boolean z4 = iVar2 == null || iVar2.isEmpty();
                    if (z3 && z4 && this.otherState == 2) {
                        this.queue = null;
                        cVar.onComplete();
                        return;
                    }
                }
            }
            this.emitted = j;
            this.consumed = i;
            i3 = addAndGet(-i3);
        } while (i3 != 0);
    }

    public AbstractC9660i<T> getOrCreateQueue() {
        AbstractC9660i<T> iVar = this.queue;
        AbstractC9660i<T> iVar2 = iVar;
        if (iVar == null) {
            iVar2 = new SpscArrayQueue<>(AbstractC9814e.m1946g());
            this.queue = iVar2;
        }
        return iVar2;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.mainDone = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.error.addThrowable(th)) {
            SubscriptionHelper.cancel(this.mainSubscription);
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (compareAndSet(0, 1)) {
            long j = this.emitted;
            if (this.requested.get() != j) {
                AbstractC9660i<T> iVar = this.queue;
                if (iVar == null || iVar.isEmpty()) {
                    this.emitted = j + 1;
                    this.actual.onNext(t);
                    int i = this.consumed + 1;
                    if (i == this.limit) {
                        this.consumed = 0;
                        this.mainSubscription.get().request(i);
                    } else {
                        this.consumed = i;
                    }
                } else {
                    iVar.offer(t);
                }
            } else {
                getOrCreateQueue().offer(t);
            }
            if (decrementAndGet() == 0) {
                return;
            }
        } else {
            getOrCreateQueue().offer(t);
            if (getAndIncrement() != 0) {
                return;
            }
        }
        drainLoop();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this.mainSubscription, dVar, this.prefetch);
    }

    public void otherError(Throwable th) {
        if (this.error.addThrowable(th)) {
            SubscriptionHelper.cancel(this.mainSubscription);
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void otherSuccess(T t) {
        if (compareAndSet(0, 1)) {
            long j = this.emitted;
            if (this.requested.get() != j) {
                this.emitted = j + 1;
                this.actual.onNext(t);
                this.otherState = 2;
            } else {
                this.singleItem = t;
                this.otherState = 1;
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        } else {
            this.singleItem = t;
            this.otherState = 1;
            if (getAndIncrement() != 0) {
                return;
            }
        }
        drainLoop();
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        C9800b.m2012a(this.requested, j);
        drain();
    }
}
