package io.reactivex.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ListCompositeDisposable;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/ResourceObserver.class */
public abstract class ResourceObserver<T> implements Observer<T>, Disposable {

    /* renamed from: f */
    private final AtomicReference<Disposable> f19454f = new AtomicReference<>();

    /* renamed from: g */
    private final ListCompositeDisposable f19455g = new ListCompositeDisposable();

    /* renamed from: a */
    protected void m3384a() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (DisposableHelper.dispose(this.f19454f)) {
            this.f19455g.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f19454f.get());
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(Disposable disposable) {
        if (EndConsumerHelper.m3442c(this.f19454f, disposable, ResourceObserver.class)) {
            m3384a();
        }
    }
}
