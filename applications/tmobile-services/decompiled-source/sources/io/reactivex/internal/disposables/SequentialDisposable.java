package io.reactivex.internal.disposables;

import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/disposables/SequentialDisposable.class */
public final class SequentialDisposable extends AtomicReference<Disposable> implements Disposable {
    private static final long serialVersionUID = -754898800686245608L;

    public SequentialDisposable() {
    }

    public SequentialDisposable(Disposable disposable) {
        lazySet(disposable);
    }

    /* renamed from: a */
    public boolean m4422a(Disposable disposable) {
        return DisposableHelper.replace(this, disposable);
    }

    /* renamed from: b */
    public boolean m4421b(Disposable disposable) {
        return DisposableHelper.set(this, disposable);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }
}
