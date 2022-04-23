package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver.class */
public abstract class ObservableSampleTimed$SampleTimedObserver<T> extends AtomicReference<T> implements AbstractC9844r<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = -3517602651313910099L;
    public final AbstractC9844r<? super T> actual;
    public final long period;

    /* renamed from: s */
    public AbstractC9861b f38515s;
    public final AbstractC9845s scheduler;
    public final AtomicReference<AbstractC9861b> timer = new AtomicReference<>();
    public final TimeUnit unit;

    public ObservableSampleTimed$SampleTimedObserver(AbstractC9844r<? super T> rVar, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
        this.actual = rVar;
        this.period = j;
        this.unit = timeUnit;
        this.scheduler = sVar;
    }

    public void cancelTimer() {
        DisposableHelper.dispose(this.timer);
    }

    public abstract void complete();

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        cancelTimer();
        this.f38515s.dispose();
    }

    public void emit() {
        T andSet = getAndSet(null);
        if (andSet != null) {
            this.actual.onNext(andSet);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38515s.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        cancelTimer();
        complete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        cancelTimer();
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        lazySet(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38515s, bVar)) {
            this.f38515s = bVar;
            this.actual.onSubscribe(this);
            AbstractC9845s sVar = this.scheduler;
            long j = this.period;
            DisposableHelper.replace(this.timer, sVar.mo1853a(this, j, j, this.unit));
        }
    }
}
