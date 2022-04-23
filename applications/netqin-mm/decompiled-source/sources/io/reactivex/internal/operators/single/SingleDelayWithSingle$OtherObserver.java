package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p543b0.p547d.C9665d;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithSingle$OtherObserver.class */
public final class SingleDelayWithSingle$OtherObserver<T, U> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<U>, AbstractC9861b {
    public static final long serialVersionUID = -8565274649390031272L;
    public final AbstractC9851u<? super T> actual;
    public final AbstractC9852v<T> source;

    public SingleDelayWithSingle$OtherObserver(AbstractC9851u<? super T> uVar, AbstractC9852v<T> vVar) {
        this.actual = uVar;
        this.source = vVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(U u) {
        this.source.mo1841a(new C9665d(this, this.actual));
    }
}
