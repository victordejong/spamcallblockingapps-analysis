package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver.class */
public final class ObservableThrottleLatest$ThrottleLatestObserver<T> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = -8296689127439125014L;
    public volatile boolean cancelled;
    public volatile boolean done;
    public final AbstractC9844r<? super T> downstream;
    public final boolean emitLast;
    public Throwable error;
    public final AtomicReference<T> latest = new AtomicReference<>();
    public final long timeout;
    public volatile boolean timerFired;
    public boolean timerRunning;
    public final TimeUnit unit;
    public AbstractC9861b upstream;
    public final AbstractC9845s.AbstractC9848c worker;

    public ObservableThrottleLatest$ThrottleLatestObserver(AbstractC9844r<? super T> rVar, long j, TimeUnit timeUnit, AbstractC9845s.AbstractC9848c cVar, boolean z) {
        this.downstream = rVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = cVar;
        this.emitLast = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            this.latest.lazySet(null);
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AtomicReference<T> atomicReference = this.latest;
            AbstractC9844r<? super T> rVar = this.downstream;
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                if (!z || this.error == null) {
                    boolean z2 = atomicReference.get() == null;
                    if (z) {
                        T andSet = atomicReference.getAndSet(null);
                        if (!z2 && this.emitLast) {
                            rVar.onNext(andSet);
                        }
                        rVar.onComplete();
                        this.worker.dispose();
                        return;
                    }
                    if (z2) {
                        if (this.timerFired) {
                            this.timerRunning = false;
                            this.timerFired = false;
                        }
                    } else if (!this.timerRunning || this.timerFired) {
                        rVar.onNext(atomicReference.getAndSet(null));
                        this.timerFired = false;
                        this.timerRunning = true;
                        this.worker.mo1832a(this, this.timeout, this.unit);
                    }
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    atomicReference.lazySet(null);
                    rVar.onError(this.error);
                    this.worker.dispose();
                    return;
                }
            }
            atomicReference.lazySet(null);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.latest.set(t);
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.upstream, bVar)) {
            this.upstream = bVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.timerFired = true;
        drain();
    }
}
