package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber.class */
public abstract class FlowableSampleTimed$SampleTimedSubscriber<T> extends AtomicReference<T> implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final long serialVersionUID = -3517602651313910099L;
    public final AbstractC10433c<? super T> actual;
    public final long period;

    /* renamed from: s */
    public AbstractC10434d f38417s;
    public final AbstractC9845s scheduler;
    public final TimeUnit unit;
    public final AtomicLong requested = new AtomicLong();
    public final SequentialDisposable timer = new SequentialDisposable();

    public FlowableSampleTimed$SampleTimedSubscriber(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
        this.actual = cVar;
        this.period = j;
        this.unit = timeUnit;
        this.scheduler = sVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        cancelTimer();
        this.f38417s.cancel();
    }

    public void cancelTimer() {
        DisposableHelper.dispose(this.timer);
    }

    public abstract void complete();

    public void emit() {
        T andSet = getAndSet(null);
        if (andSet == null) {
            return;
        }
        if (this.requested.get() != 0) {
            this.actual.onNext(andSet);
            C9800b.m2009c(this.requested, 1L);
            return;
        }
        cancel();
        this.actual.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        cancelTimer();
        complete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        cancelTimer();
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        lazySet(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38417s, dVar)) {
            this.f38417s = dVar;
            this.actual.onSubscribe(this);
            SequentialDisposable sequentialDisposable = this.timer;
            AbstractC9845s sVar = this.scheduler;
            long j = this.period;
            sequentialDisposable.replace(sVar.mo1853a(this, j, j, this.unit));
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
        }
    }
}
