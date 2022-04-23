package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver.class */
public final class ObservablePublishSelector$TargetObserver<T, R> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<R>, AbstractC9861b {
    public static final long serialVersionUID = 854110278590336484L;
    public final AbstractC9844r<? super R> actual;

    /* renamed from: d */
    public AbstractC9861b f38508d;

    public ObservablePublishSelector$TargetObserver(AbstractC9844r<? super R> rVar) {
        this.actual = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38508d.dispose();
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38508d.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        DisposableHelper.dispose(this);
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(R r) {
        this.actual.onNext(r);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38508d, bVar)) {
            this.f38508d = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
