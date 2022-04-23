package io.reactivex.internal.operators.observable;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObserverResourceWrapper.class */
public final class ObserverResourceWrapper<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
    private static final long serialVersionUID = -8612022020200669122L;

    /* renamed from: f */
    final Observer<? super T> f18794f;

    /* renamed from: g */
    final AtomicReference<Disposable> f18795g = new AtomicReference<>();

    public ObserverResourceWrapper(Observer<? super T> observer) {
        this.f18794f = observer;
    }

    /* renamed from: a */
    public void m3624a(Disposable disposable) {
        DisposableHelper.set(this, disposable);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this.f18795g);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f18795g.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        dispose();
        this.f18794f.onComplete();
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        dispose();
        this.f18794f.onError(th);
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.f18794f.onNext(t);
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.setOnce(this.f18795g, disposable)) {
            this.f18794f.onSubscribe(this);
        }
    }
}
