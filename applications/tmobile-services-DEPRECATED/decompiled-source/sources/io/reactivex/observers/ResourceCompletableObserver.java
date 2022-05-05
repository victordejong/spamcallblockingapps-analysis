package io.reactivex.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ListCompositeDisposable;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/ResourceCompletableObserver.class */
public abstract class ResourceCompletableObserver implements CompletableObserver, Disposable {

    /* renamed from: f */
    private final AtomicReference<Disposable> f19450f = new AtomicReference<>();

    /* renamed from: g */
    private final ListCompositeDisposable f19451g = new ListCompositeDisposable();

    /* renamed from: a */
    protected void m3386a() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (DisposableHelper.dispose(this.f19450f)) {
            this.f19451g.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f19450f.get());
    }

    @Override // io.reactivex.CompletableObserver
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.m3442c(this.f19450f, disposable, ResourceCompletableObserver.class)) {
            m3386a();
        }
    }
}
