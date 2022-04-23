package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupBy$State.class */
public final class ObservableGroupBy$State<T, K> extends AtomicInteger implements AbstractC9861b, AbstractC9843q<T> {
    public static final long serialVersionUID = -3852313036005250360L;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public final K key;
    public final ObservableGroupBy$GroupByObserver<?, K, T> parent;
    public final C9772a<T> queue;
    public final AtomicBoolean cancelled = new AtomicBoolean();
    public final AtomicBoolean once = new AtomicBoolean();
    public final AtomicReference<AbstractC9844r<? super T>> actual = new AtomicReference<>();

    public ObservableGroupBy$State(int i, ObservableGroupBy$GroupByObserver<?, K, T> observableGroupBy$GroupByObserver, K k, boolean z) {
        this.queue = new C9772a<>(i);
        this.parent = observableGroupBy$GroupByObserver;
        this.key = k;
        this.delayError = z;
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC9844r<? super T> rVar, boolean z3) {
        if (this.cancelled.get()) {
            this.queue.clear();
            this.parent.cancel(this.key);
            this.actual.lazySet(null);
            return true;
        } else if (!z) {
            return false;
        } else {
            if (!z3) {
                Throwable th = this.error;
                if (th != null) {
                    this.queue.clear();
                    this.actual.lazySet(null);
                    rVar.onError(th);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    this.actual.lazySet(null);
                    rVar.onComplete();
                    return true;
                }
            } else if (!z2) {
                return false;
            } else {
                Throwable th2 = this.error;
                this.actual.lazySet(null);
                if (th2 != null) {
                    rVar.onError(th2);
                    return true;
                }
                rVar.onComplete();
                return true;
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (this.cancelled.compareAndSet(false, true) && getAndIncrement() == 0) {
            this.actual.lazySet(null);
            this.parent.cancel(this.key);
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            C9772a<T> aVar = this.queue;
            boolean z = this.delayError;
            AbstractC9844r<? super T> rVar = this.actual.get();
            int i = 1;
            while (true) {
                if (rVar != null) {
                    while (true) {
                        boolean z2 = this.done;
                        Object obj = (T) aVar.poll();
                        boolean z3 = obj == null;
                        if (!checkTerminated(z2, z3, rVar, z)) {
                            if (z3) {
                                break;
                            }
                            rVar.onNext(obj);
                        } else {
                            return;
                        }
                    }
                }
                int addAndGet = addAndGet(-i);
                if (addAndGet != 0) {
                    i = addAndGet;
                    if (rVar == null) {
                        rVar = this.actual.get();
                        i = addAndGet;
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled.get();
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

    @Override // p530d.p541c.AbstractC9843q
    public void subscribe(AbstractC9844r<? super T> rVar) {
        if (this.once.compareAndSet(false, true)) {
            rVar.onSubscribe(this);
            this.actual.lazySet(rVar);
            if (this.cancelled.get()) {
                this.actual.lazySet(null);
            } else {
                drain();
            }
        } else {
            EmptyDisposable.error(new IllegalStateException("Only one Observer allowed!"), rVar);
        }
    }
}
