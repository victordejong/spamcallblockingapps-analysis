package io.reactivex.observers;

import io.reactivex.SingleObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ListCompositeDisposable;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/ResourceSingleObserver.class */
public abstract class ResourceSingleObserver<T> implements SingleObserver<T>, Disposable {

    /* renamed from: f */
    private final AtomicReference<Disposable> f19456f = new AtomicReference<>();

    /* renamed from: g */
    private final ListCompositeDisposable f19457g = new ListCompositeDisposable();

    /* renamed from: a */
    protected void m3383a() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (DisposableHelper.dispose(this.f19456f)) {
            this.f19457g.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f19456f.get());
    }

    @Override // io.reactivex.SingleObserver
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.m3442c(this.f19456f, disposable, ResourceSingleObserver.class)) {
            m3383a();
        }
    }
}
