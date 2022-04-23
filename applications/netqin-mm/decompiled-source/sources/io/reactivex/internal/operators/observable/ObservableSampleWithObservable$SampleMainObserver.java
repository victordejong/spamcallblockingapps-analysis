package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.C9754p;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver.class */
public abstract class ObservableSampleWithObservable$SampleMainObserver<T> extends AtomicReference<T> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -3517602651313910099L;
    public final AbstractC9844r<? super T> actual;
    public final AtomicReference<AbstractC9861b> other = new AtomicReference<>();

    /* renamed from: s */
    public AbstractC9861b f38516s;
    public final AbstractC9843q<?> sampler;

    public ObservableSampleWithObservable$SampleMainObserver(AbstractC9844r<? super T> rVar, AbstractC9843q<?> qVar) {
        this.actual = rVar;
        this.sampler = qVar;
    }

    public void complete() {
        this.f38516s.dispose();
        completeOther();
    }

    public abstract void completeMain();

    public abstract void completeOther();

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.other);
        this.f38516s.dispose();
    }

    public void emit() {
        T andSet = getAndSet(null);
        if (andSet != null) {
            this.actual.onNext(andSet);
        }
    }

    public void error(Throwable th) {
        this.f38516s.dispose();
        this.actual.onError(th);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.other.get() == DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        DisposableHelper.dispose(this.other);
        completeMain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        DisposableHelper.dispose(this.other);
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        lazySet(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38516s, bVar)) {
            this.f38516s = bVar;
            this.actual.onSubscribe(this);
            if (this.other.get() == null) {
                this.sampler.subscribe(new C9754p(this));
            }
        }
    }

    public abstract void run();

    public boolean setOther(AbstractC9861b bVar) {
        return DisposableHelper.setOnce(this.other, bVar);
    }
}
