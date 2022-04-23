package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestInnerObserver.class */
public final class ObservableWithLatestFromMany$WithLatestInnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9844r<Object> {
    public static final long serialVersionUID = 3256684027868224024L;
    public boolean hasValue;
    public final int index;
    public final ObservableWithLatestFromMany$WithLatestFromObserver<?, ?> parent;

    public ObservableWithLatestFromMany$WithLatestInnerObserver(ObservableWithLatestFromMany$WithLatestFromObserver<?, ?> observableWithLatestFromMany$WithLatestFromObserver, int i) {
        this.parent = observableWithLatestFromMany$WithLatestFromObserver;
        this.index = i;
    }

    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.parent.innerComplete(this.index, this.hasValue);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.parent.innerError(this.index, th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(Object obj) {
        if (!this.hasValue) {
            this.hasValue = true;
        }
        this.parent.innerNext(this.index, obj);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
