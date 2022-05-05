package io.reactivex.disposables;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/disposables/SerialDisposable.class */
public final class SerialDisposable implements Disposable {

    /* renamed from: f */
    final AtomicReference<Disposable> f15120f = new AtomicReference<>();

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this.f15120f);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f15120f.get());
    }
}
