package io.reactivex.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/DisposableCompletableObserver.class */
public abstract class DisposableCompletableObserver implements CompletableObserver, Disposable {

    /* renamed from: f */
    final AtomicReference<Disposable> f19446f = new AtomicReference<>();

    /* renamed from: a */
    protected void m3390a() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this.f19446f);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f19446f.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.CompletableObserver
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.m3442c(this.f19446f, disposable, DisposableCompletableObserver.class)) {
            m3390a();
        }
    }
}
