package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver.class */
public final class SingleZipArray$ZipSingleObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T> {
    public static final long serialVersionUID = 3323743579927613702L;
    public final int index;
    public final SingleZipArray$ZipCoordinator<T, ?> parent;

    public SingleZipArray$ZipSingleObserver(SingleZipArray$ZipCoordinator<T, ?> singleZipArray$ZipCoordinator, int i) {
        this.parent = singleZipArray$ZipCoordinator;
        this.index = i;
    }

    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.parent.innerError(th, this.index);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.parent.innerSuccess(t, this.index);
    }
}
