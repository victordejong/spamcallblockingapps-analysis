package io.reactivex.internal.observers;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/CallbackCompletableObserver.class */
public final class CallbackCompletableObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b, AbstractC9644g<Throwable> {
    public static final long serialVersionUID = -4361286194466301354L;
    public final AbstractC9638a onComplete;
    public final AbstractC9644g<? super Throwable> onError;

    public CallbackCompletableObserver(AbstractC9638a aVar) {
        this.onError = this;
        this.onComplete = aVar;
    }

    public CallbackCompletableObserver(AbstractC9644g<? super Throwable> gVar, AbstractC9638a aVar) {
        this.onError = gVar;
        this.onComplete = aVar;
    }

    public void accept(Throwable th) {
        C9815a.m1923b(new OnErrorNotImplementedException(th));
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != this;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            C9863a.m1822b(th);
            C9815a.m1923b(th);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            C9815a.m1923b(th2);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
