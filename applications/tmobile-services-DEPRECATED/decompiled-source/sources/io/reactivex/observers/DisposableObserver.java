package io.reactivex.observers;

import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/DisposableObserver.class */
public abstract class DisposableObserver<T> implements Observer<T>, Disposable {

    /* renamed from: f */
    final AtomicReference<Disposable> f19448f = new AtomicReference<>();

    /* renamed from: a */
    protected void m3388a() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this.f19448f);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f19448f.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.m3442c(this.f19448f, disposable, getClass())) {
            m3388a();
        }
    }
}
