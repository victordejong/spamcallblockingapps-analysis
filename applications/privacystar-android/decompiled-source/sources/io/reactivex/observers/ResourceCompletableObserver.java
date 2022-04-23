package io.reactivex.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ListCompositeDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/ResourceCompletableObserver.class */
public abstract class ResourceCompletableObserver implements CompletableObserver, Disposable {

    /* renamed from: s */
    private final AtomicReference<Disposable> f735s = new AtomicReference<>();
    private final ListCompositeDisposable resources = new ListCompositeDisposable();

    public final void add(@NonNull Disposable disposable) {
        ObjectHelper.requireNonNull(disposable, "resource is null");
        this.resources.add(disposable);
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (DisposableHelper.dispose(this.f735s)) {
            this.resources.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f735s.get());
    }

    protected void onStart() {
    }

    @Override // io.reactivex.CompletableObserver
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.setOnce(this.f735s, disposable, getClass())) {
            onStart();
        }
    }
}
