package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9842p;
import p530d.p541c.p542a0.AbstractC9643f;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter.class */
public final class ObservableCreate$SerializedEmitter<T> extends AtomicInteger implements AbstractC9842p<T> {
    public static final long serialVersionUID = 4883307006032401862L;
    public volatile boolean done;
    public final AbstractC9842p<T> emitter;
    public final AtomicThrowable error = new AtomicThrowable();
    public final C9772a<T> queue = new C9772a<>(16);

    public ObservableCreate$SerializedEmitter(AbstractC9842p<T> pVar) {
        this.emitter = pVar;
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    public void drainLoop() {
        AbstractC9842p<T> pVar = this.emitter;
        C9772a<T> aVar = this.queue;
        AtomicThrowable atomicThrowable = this.error;
        int i = 1;
        while (!pVar.isDisposed()) {
            if (atomicThrowable.get() != null) {
                aVar.clear();
                pVar.onError(atomicThrowable.terminate());
                return;
            }
            boolean z = this.done;
            T poll = aVar.poll();
            boolean z2 = poll == null;
            if (z && z2) {
                pVar.onComplete();
                return;
            } else if (z2) {
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                pVar.onNext(poll);
            }
        }
        aVar.clear();
    }

    @Override // p530d.p541c.AbstractC9842p, p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.emitter.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onComplete() {
        if (!this.emitter.isDisposed() && !this.done) {
            this.done = true;
            drain();
        }
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onError(Throwable th) {
        if (!tryOnError(th)) {
            C9815a.m1923b(th);
        }
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onNext(T t) {
        if (!this.emitter.isDisposed() && !this.done) {
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() != 0 || !compareAndSet(0, 1)) {
                C9772a<T> aVar = this.queue;
                synchronized (aVar) {
                    aVar.offer(t);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                this.emitter.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            drainLoop();
        }
    }

    public AbstractC9842p<T> serialize() {
        return this;
    }

    @Override // p530d.p541c.AbstractC9842p
    public void setCancellable(AbstractC9643f fVar) {
        this.emitter.setCancellable(fVar);
    }

    @Override // p530d.p541c.AbstractC9842p
    public void setDisposable(AbstractC9861b bVar) {
        this.emitter.setDisposable(bVar);
    }

    @Override // java.util.concurrent.atomic.AtomicInteger
    public String toString() {
        return this.emitter.toString();
    }

    public boolean tryOnError(Throwable th) {
        if (this.emitter.isDisposed() || this.done) {
            return false;
        }
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        if (!this.error.addThrowable(th2)) {
            return false;
        }
        this.done = true;
        drain();
        return true;
    }
}
