package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/DeferredScalarObserver.class */
public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements Observer<T> {
    private static final long serialVersionUID = -266195175408988651L;

    /* renamed from: h */
    protected Disposable f15190h;

    @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.Disposable
    public void dispose() {
        super.dispose();
        this.f15190h.dispose();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        T t = this.f15189g;
        if (t != null) {
            this.f15189g = null;
            m4350b(t);
            return;
        }
        m4351a();
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.f15189g = null;
        m4349c(th);
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.f15190h, disposable)) {
            this.f15190h = disposable;
            this.f15188f.onSubscribe(this);
        }
    }
}
