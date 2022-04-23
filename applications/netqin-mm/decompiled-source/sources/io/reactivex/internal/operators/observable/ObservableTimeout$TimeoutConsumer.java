package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9759t;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer.class */
public final class ObservableTimeout$TimeoutConsumer extends AtomicReference<AbstractC9861b> implements AbstractC9844r<Object>, AbstractC9861b {
    public static final long serialVersionUID = 8708641127342403073L;
    public final long idx;
    public final AbstractC9759t parent;

    public ObservableTimeout$TimeoutConsumer(long j, AbstractC9759t tVar) {
        this.idx = j;
        this.parent = tVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper) {
            lazySet(disposableHelper);
            this.parent.onTimeout(this.idx);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper) {
            lazySet(disposableHelper);
            this.parent.onTimeoutError(this.idx, th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(Object obj) {
        AbstractC9861b bVar = get();
        if (bVar != DisposableHelper.DISPOSED) {
            bVar.dispose();
            lazySet(DisposableHelper.DISPOSED);
            this.parent.onTimeout(this.idx);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
