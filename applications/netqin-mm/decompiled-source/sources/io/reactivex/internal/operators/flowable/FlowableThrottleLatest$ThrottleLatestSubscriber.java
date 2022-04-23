package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber.class */
public final class FlowableThrottleLatest$ThrottleLatestSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final long serialVersionUID = -8296689127439125014L;
    public volatile boolean cancelled;
    public volatile boolean done;
    public final AbstractC10433c<? super T> downstream;
    public final boolean emitLast;
    public long emitted;
    public Throwable error;
    public final AtomicReference<T> latest = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();
    public final long timeout;
    public volatile boolean timerFired;
    public boolean timerRunning;
    public final TimeUnit unit;
    public AbstractC10434d upstream;
    public final AbstractC9845s.AbstractC9848c worker;

    public FlowableThrottleLatest$ThrottleLatestSubscriber(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s.AbstractC9848c cVar2, boolean z) {
        this.downstream = cVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = cVar2;
        this.emitLast = z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            this.latest.lazySet(null);
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AtomicReference<T> atomicReference = this.latest;
            AtomicLong atomicLong = this.requested;
            AbstractC10433c<? super T> cVar = this.downstream;
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                if (!z || this.error == null) {
                    boolean z2 = atomicReference.get() == null;
                    if (z) {
                        if (z2 || !this.emitLast) {
                            atomicReference.lazySet(null);
                            cVar.onComplete();
                        } else {
                            T andSet = atomicReference.getAndSet(null);
                            long j = this.emitted;
                            if (j != atomicLong.get()) {
                                this.emitted = j + 1;
                                cVar.onNext(andSet);
                                cVar.onComplete();
                            } else {
                                cVar.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                            }
                        }
                        this.worker.dispose();
                        return;
                    }
                    if (z2) {
                        if (this.timerFired) {
                            this.timerRunning = false;
                            this.timerFired = false;
                        }
                    } else if (!this.timerRunning || this.timerFired) {
                        T andSet2 = atomicReference.getAndSet(null);
                        long j2 = this.emitted;
                        if (j2 != atomicLong.get()) {
                            cVar.onNext(andSet2);
                            this.emitted = j2 + 1;
                            this.timerFired = false;
                            this.timerRunning = true;
                            this.worker.mo1832a(this, this.timeout, this.unit);
                        } else {
                            this.upstream.cancel();
                            cVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                            this.worker.dispose();
                            return;
                        }
                    }
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    atomicReference.lazySet(null);
                    cVar.onError(this.error);
                    this.worker.dispose();
                    return;
                }
            }
            atomicReference.lazySet(null);
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
        this.latest.set(t);
        drain();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.timerFired = true;
        drain();
    }
}
