package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator.class */
public final class FlowableCombineLatest$CombineLatestCoordinator<T, R> extends BasicIntQueueSubscription<R> {
    public static final long serialVersionUID = -5082275438355852221L;
    public final AbstractC10433c<? super R> actual;
    public volatile boolean cancelled;
    public final AbstractC9645h<? super Object[], ? extends R> combiner;
    public int completedSources;
    public final boolean delayErrors;
    public volatile boolean done;
    public final AtomicReference<Throwable> error;
    public final Object[] latest;
    public int nonEmptySources;
    public boolean outputFused;
    public final C9772a<Object> queue;
    public final AtomicLong requested;
    public final FlowableCombineLatest$CombineLatestInnerSubscriber<T>[] subscribers;

    public FlowableCombineLatest$CombineLatestCoordinator(AbstractC10433c<? super R> cVar, AbstractC9645h<? super Object[], ? extends R> hVar, int i, int i2, boolean z) {
        this.actual = cVar;
        this.combiner = hVar;
        FlowableCombineLatest$CombineLatestInnerSubscriber<T>[] flowableCombineLatest$CombineLatestInnerSubscriberArr = new FlowableCombineLatest$CombineLatestInnerSubscriber[i];
        for (int i3 = 0; i3 < i; i3++) {
            flowableCombineLatest$CombineLatestInnerSubscriberArr[i3] = new FlowableCombineLatest$CombineLatestInnerSubscriber<>(this, i3, i2);
        }
        this.subscribers = flowableCombineLatest$CombineLatestInnerSubscriberArr;
        this.latest = new Object[i];
        this.queue = new C9772a<>(i2);
        this.requested = new AtomicLong();
        this.error = new AtomicReference<>();
        this.delayErrors = z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        cancelAll();
    }

    public void cancelAll() {
        for (FlowableCombineLatest$CombineLatestInnerSubscriber<T> flowableCombineLatest$CombineLatestInnerSubscriber : this.subscribers) {
            flowableCombineLatest$CombineLatestInnerSubscriber.cancel();
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<?> cVar, C9772a<?> aVar) {
        if (this.cancelled) {
            cancelAll();
            aVar.clear();
            return true;
        } else if (!z) {
            return false;
        } else {
            if (!this.delayErrors) {
                Throwable a = ExceptionHelper.m224a(this.error);
                if (a != null && a != ExceptionHelper.f38570a) {
                    cancelAll();
                    aVar.clear();
                    cVar.onError(a);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    cancelAll();
                    cVar.onComplete();
                    return true;
                }
            } else if (!z2) {
                return false;
            } else {
                cancelAll();
                Throwable a2 = ExceptionHelper.m224a(this.error);
                if (a2 == null || a2 == ExceptionHelper.f38570a) {
                    cVar.onComplete();
                    return true;
                }
                cVar.onError(a2);
                return true;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.queue.clear();
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            if (this.outputFused) {
                drainOutput();
            } else {
                drainAsync();
            }
        }
    }

    public void drainAsync() {
        int addAndGet;
        AbstractC10433c<? super R> cVar = this.actual;
        C9772a<?> aVar = this.queue;
        int i = 1;
        do {
            long j = this.requested.get();
            long j2 = 0;
            while (j2 != j) {
                boolean z = this.done;
                Object poll = aVar.poll();
                boolean z2 = poll == null;
                if (!checkTerminated(z, z2, cVar, aVar)) {
                    if (z2) {
                        break;
                    }
                    try {
                        Object obj = (Object) this.combiner.apply((Object[]) aVar.poll());
                        C9650a.m2095a(obj, "The combiner returned a null value");
                        cVar.onNext(obj);
                        ((FlowableCombineLatest$CombineLatestInnerSubscriber) poll).requestOne();
                        j2++;
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        cancelAll();
                        ExceptionHelper.m223a(this.error, th);
                        cVar.onError(ExceptionHelper.m224a(this.error));
                        return;
                    }
                } else {
                    return;
                }
            }
            if (j2 != j || !checkTerminated(this.done, aVar.isEmpty(), cVar, aVar)) {
                if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                    this.requested.addAndGet(-j2);
                }
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } else {
                return;
            }
        } while (addAndGet != 0);
    }

    public void drainOutput() {
        AbstractC10433c<? super R> cVar = this.actual;
        C9772a<Object> aVar = this.queue;
        int i = 1;
        while (!this.cancelled) {
            Throwable th = this.error.get();
            if (th != null) {
                aVar.clear();
                cVar.onError(th);
                return;
            }
            boolean z = this.done;
            boolean isEmpty = aVar.isEmpty();
            if (!isEmpty) {
                cVar.onNext(null);
            }
            if (!z || !isEmpty) {
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                cVar.onComplete();
                return;
            }
        }
        aVar.clear();
    }

    public void innerComplete(int i) {
        synchronized (this) {
            Object[] objArr = this.latest;
            if (objArr[i] != null) {
                int i2 = this.completedSources + 1;
                if (i2 == objArr.length) {
                    this.done = true;
                } else {
                    this.completedSources = i2;
                    return;
                }
            } else {
                this.done = true;
            }
            drain();
        }
    }

    public void innerError(int i, Throwable th) {
        if (!ExceptionHelper.m223a(this.error, th)) {
            C9815a.m1923b(th);
        } else if (!this.delayErrors) {
            cancelAll();
            this.done = true;
            drain();
        } else {
            innerComplete(i);
        }
    }

    public void innerValue(int i, T t) {
        boolean z;
        synchronized (this) {
            Object[] objArr = this.latest;
            int i2 = this.nonEmptySources;
            int i3 = i2;
            if (objArr[i] == null) {
                i3 = i2 + 1;
                this.nonEmptySources = i3;
            }
            objArr[i] = t;
            if (objArr.length == i3) {
                this.queue.m2065a(this.subscribers[i], (FlowableCombineLatest$CombineLatestInnerSubscriber<T>) objArr.clone());
                z = false;
            } else {
                z = true;
            }
        }
        if (z) {
            this.subscribers[i].requestOne();
        } else {
            drain();
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public R poll() throws Exception {
        Object poll = this.queue.poll();
        if (poll == null) {
            return null;
        }
        R r = (R) this.combiner.apply((Object[]) this.queue.poll());
        C9650a.m2095a(r, "The combiner returned a null value");
        ((FlowableCombineLatest$CombineLatestInnerSubscriber) poll).requestOne();
        return r;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        boolean z = false;
        if ((i & 4) != 0) {
            return 0;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            z = true;
        }
        this.outputFused = z;
        return i2;
    }

    public void subscribe(AbstractC10432b<? extends T>[] bVarArr, int i) {
        FlowableCombineLatest$CombineLatestInnerSubscriber<T>[] flowableCombineLatest$CombineLatestInnerSubscriberArr = this.subscribers;
        for (int i2 = 0; i2 < i && !this.done && !this.cancelled; i2++) {
            bVarArr[i2].subscribe(flowableCombineLatest$CombineLatestInnerSubscriberArr[i2]);
        }
    }
}
