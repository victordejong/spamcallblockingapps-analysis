package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber.class */
public final class ParallelReduceFull$ParallelReduceFullMainSubscriber<T> extends DeferredScalarSubscription<T> {
    public static final long serialVersionUID = -5370107872170712765L;
    public final AbstractC9640c<T, T, T> reducer;
    public final ParallelReduceFull$ParallelReduceFullInnerSubscriber<T>[] subscribers;
    public final AtomicReference<ParallelReduceFull$SlotPair<T>> current = new AtomicReference<>();
    public final AtomicInteger remaining = new AtomicInteger();
    public final AtomicReference<Throwable> error = new AtomicReference<>();

    public ParallelReduceFull$ParallelReduceFullMainSubscriber(AbstractC10433c<? super T> cVar, int i, AbstractC9640c<T, T, T> cVar2) {
        super(cVar);
        ParallelReduceFull$ParallelReduceFullInnerSubscriber<T>[] parallelReduceFull$ParallelReduceFullInnerSubscriberArr = new ParallelReduceFull$ParallelReduceFullInnerSubscriber[i];
        for (int i2 = 0; i2 < i; i2++) {
            parallelReduceFull$ParallelReduceFullInnerSubscriberArr[i2] = new ParallelReduceFull$ParallelReduceFullInnerSubscriber<>(this, cVar2);
        }
        this.subscribers = parallelReduceFull$ParallelReduceFullInnerSubscriberArr;
        this.reducer = cVar2;
        this.remaining.lazySet(i);
    }

    public ParallelReduceFull$SlotPair<T> addValue(T t) {
        ParallelReduceFull$SlotPair<T> parallelReduceFull$SlotPair;
        int tryAcquireSlot;
        while (true) {
            ParallelReduceFull$SlotPair<T> parallelReduceFull$SlotPair2 = this.current.get();
            parallelReduceFull$SlotPair = parallelReduceFull$SlotPair2;
            if (parallelReduceFull$SlotPair2 == null) {
                ParallelReduceFull$SlotPair<T> parallelReduceFull$SlotPair3 = new ParallelReduceFull$SlotPair<>();
                parallelReduceFull$SlotPair = parallelReduceFull$SlotPair3;
                if (!this.current.compareAndSet(null, parallelReduceFull$SlotPair3)) {
                    continue;
                }
            }
            tryAcquireSlot = parallelReduceFull$SlotPair.tryAcquireSlot();
            if (tryAcquireSlot >= 0) {
                break;
            }
            this.current.compareAndSet(parallelReduceFull$SlotPair, null);
        }
        if (tryAcquireSlot == 0) {
            parallelReduceFull$SlotPair.first = t;
        } else {
            parallelReduceFull$SlotPair.second = t;
        }
        if (!parallelReduceFull$SlotPair.releaseSlot()) {
            return null;
        }
        this.current.compareAndSet(parallelReduceFull$SlotPair, null);
        return parallelReduceFull$SlotPair;
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        for (ParallelReduceFull$ParallelReduceFullInnerSubscriber<T> parallelReduceFull$ParallelReduceFullInnerSubscriber : this.subscribers) {
            parallelReduceFull$ParallelReduceFullInnerSubscriber.cancel();
        }
    }

    public void innerComplete(T t) {
        if (t != null) {
            while (true) {
                ParallelReduceFull$SlotPair<T> addValue = addValue(t);
                if (addValue == null) {
                    break;
                }
                try {
                    t = this.reducer.apply(addValue.first, addValue.second);
                    C9650a.m2095a((Object) t, "The reducer returned a null value");
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    innerError(th);
                    return;
                }
            }
        }
        if (this.remaining.decrementAndGet() == 0) {
            ParallelReduceFull$SlotPair<T> parallelReduceFull$SlotPair = this.current.get();
            this.current.lazySet(null);
            if (parallelReduceFull$SlotPair != null) {
                complete(parallelReduceFull$SlotPair.first);
            } else {
                this.actual.onComplete();
            }
        }
    }

    public void innerError(Throwable th) {
        if (this.error.compareAndSet(null, th)) {
            cancel();
            this.actual.onError(th);
        } else if (th != this.error.get()) {
            C9815a.m1923b(th);
        }
    }
}
