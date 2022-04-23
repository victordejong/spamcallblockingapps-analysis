package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9748k;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable.class */
public final class ObservableJoin$JoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements AbstractC9861b, AbstractC9748k {
    public static final long serialVersionUID = -6071216598687999801L;
    public final AbstractC9844r<? super R> actual;
    public volatile boolean cancelled;
    public final AbstractC9645h<? super TLeft, ? extends AbstractC9843q<TLeftEnd>> leftEnd;
    public int leftIndex;
    public final AbstractC9640c<? super TLeft, ? super TRight, ? extends R> resultSelector;
    public final AbstractC9645h<? super TRight, ? extends AbstractC9843q<TRightEnd>> rightEnd;
    public int rightIndex;
    public static final Integer LEFT_VALUE = 1;
    public static final Integer RIGHT_VALUE = 2;
    public static final Integer LEFT_CLOSE = 3;
    public static final Integer RIGHT_CLOSE = 4;
    public final C9860a disposables = new C9860a();
    public final C9772a<Object> queue = new C9772a<>(AbstractC9840o.m1870a());
    public final Map<Integer, TLeft> lefts = new LinkedHashMap();
    public final Map<Integer, TRight> rights = new LinkedHashMap();
    public final AtomicReference<Throwable> error = new AtomicReference<>();
    public final AtomicInteger active = new AtomicInteger(2);

    public ObservableJoin$JoinDisposable(AbstractC9844r<? super R> rVar, AbstractC9645h<? super TLeft, ? extends AbstractC9843q<TLeftEnd>> hVar, AbstractC9645h<? super TRight, ? extends AbstractC9843q<TRightEnd>> hVar2, AbstractC9640c<? super TLeft, ? super TRight, ? extends R> cVar) {
        this.actual = rVar;
        this.leftEnd = hVar;
        this.rightEnd = hVar2;
        this.resultSelector = cVar;
    }

    public void cancelAll() {
        this.disposables.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drain() {
        if (getAndIncrement() == 0) {
            C9772a<?> aVar = this.queue;
            AbstractC9844r<? super R> rVar = this.actual;
            int i = 1;
            while (!this.cancelled) {
                if (this.error.get() != null) {
                    aVar.clear();
                    cancelAll();
                    errorAll(rVar);
                    return;
                }
                boolean z = this.active.get() == 0;
                Integer num = (Integer) aVar.poll();
                boolean z2 = num == null;
                if (z && z2) {
                    this.lefts.clear();
                    this.rights.clear();
                    this.disposables.dispose();
                    rVar.onComplete();
                    return;
                } else if (z2) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    Object poll = aVar.poll();
                    if (num == LEFT_VALUE) {
                        int i2 = this.leftIndex;
                        this.leftIndex = i2 + 1;
                        this.lefts.put(Integer.valueOf(i2), poll);
                        try {
                            Object apply = this.leftEnd.apply(poll);
                            C9650a.m2095a(apply, "The leftEnd returned a null ObservableSource");
                            AbstractC9843q qVar = (AbstractC9843q) apply;
                            ObservableGroupJoin$LeftRightEndObserver observableGroupJoin$LeftRightEndObserver = new ObservableGroupJoin$LeftRightEndObserver(this, true, i2);
                            this.disposables.mo1828b(observableGroupJoin$LeftRightEndObserver);
                            qVar.subscribe(observableGroupJoin$LeftRightEndObserver);
                            if (this.error.get() != null) {
                                aVar.clear();
                                cancelAll();
                                errorAll(rVar);
                                return;
                            }
                            for (TRight tright : this.rights.values()) {
                                try {
                                    Object obj = (Object) this.resultSelector.apply(poll, tright);
                                    C9650a.m2095a(obj, "The resultSelector returned a null value");
                                    rVar.onNext(obj);
                                } catch (Throwable th) {
                                    fail(th, rVar, aVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th2) {
                            fail(th2, rVar, aVar);
                            return;
                        }
                    } else if (num == RIGHT_VALUE) {
                        int i3 = this.rightIndex;
                        this.rightIndex = i3 + 1;
                        this.rights.put(Integer.valueOf(i3), poll);
                        try {
                            Object apply2 = this.rightEnd.apply(poll);
                            C9650a.m2095a(apply2, "The rightEnd returned a null ObservableSource");
                            AbstractC9843q qVar2 = (AbstractC9843q) apply2;
                            ObservableGroupJoin$LeftRightEndObserver observableGroupJoin$LeftRightEndObserver2 = new ObservableGroupJoin$LeftRightEndObserver(this, false, i3);
                            this.disposables.mo1828b(observableGroupJoin$LeftRightEndObserver2);
                            qVar2.subscribe(observableGroupJoin$LeftRightEndObserver2);
                            if (this.error.get() != null) {
                                aVar.clear();
                                cancelAll();
                                errorAll(rVar);
                                return;
                            }
                            for (TLeft tleft : this.lefts.values()) {
                                try {
                                    Object obj2 = (Object) this.resultSelector.apply(tleft, poll);
                                    C9650a.m2095a(obj2, "The resultSelector returned a null value");
                                    rVar.onNext(obj2);
                                } catch (Throwable th3) {
                                    fail(th3, rVar, aVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th4) {
                            fail(th4, rVar, aVar);
                            return;
                        }
                    } else if (num == LEFT_CLOSE) {
                        ObservableGroupJoin$LeftRightEndObserver observableGroupJoin$LeftRightEndObserver3 = (ObservableGroupJoin$LeftRightEndObserver) poll;
                        this.lefts.remove(Integer.valueOf(observableGroupJoin$LeftRightEndObserver3.index));
                        this.disposables.mo1829a(observableGroupJoin$LeftRightEndObserver3);
                    } else {
                        ObservableGroupJoin$LeftRightEndObserver observableGroupJoin$LeftRightEndObserver4 = (ObservableGroupJoin$LeftRightEndObserver) poll;
                        this.rights.remove(Integer.valueOf(observableGroupJoin$LeftRightEndObserver4.index));
                        this.disposables.mo1829a(observableGroupJoin$LeftRightEndObserver4);
                    }
                }
            }
            aVar.clear();
        }
    }

    public void errorAll(AbstractC9844r<?> rVar) {
        Throwable a = ExceptionHelper.m224a(this.error);
        this.lefts.clear();
        this.rights.clear();
        rVar.onError(a);
    }

    public void fail(Throwable th, AbstractC9844r<?> rVar, C9772a<?> aVar) {
        C9863a.m1822b(th);
        ExceptionHelper.m223a(this.error, th);
        aVar.clear();
        cancelAll();
        errorAll(rVar);
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9748k
    public void innerClose(boolean z, ObservableGroupJoin$LeftRightEndObserver observableGroupJoin$LeftRightEndObserver) {
        synchronized (this) {
            this.queue.m2065a(z ? LEFT_CLOSE : RIGHT_CLOSE, (Integer) observableGroupJoin$LeftRightEndObserver);
        }
        drain();
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9748k
    public void innerCloseError(Throwable th) {
        if (ExceptionHelper.m223a(this.error, th)) {
            drain();
        } else {
            C9815a.m1923b(th);
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9748k
    public void innerComplete(ObservableGroupJoin$LeftRightObserver observableGroupJoin$LeftRightObserver) {
        this.disposables.mo1827c(observableGroupJoin$LeftRightObserver);
        this.active.decrementAndGet();
        drain();
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9748k
    public void innerError(Throwable th) {
        if (ExceptionHelper.m223a(this.error, th)) {
            this.active.decrementAndGet();
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9748k
    public void innerValue(boolean z, Object obj) {
        synchronized (this) {
            this.queue.m2065a(z ? LEFT_VALUE : RIGHT_VALUE, (Integer) obj);
        }
        drain();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }
}
