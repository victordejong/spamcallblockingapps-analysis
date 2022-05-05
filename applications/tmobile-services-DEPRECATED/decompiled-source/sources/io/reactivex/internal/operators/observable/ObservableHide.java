package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableHide.class */
public final class ObservableHide<T> extends AbstractObservableWithUpstream<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableHide$HideDisposable.class */
    static final class HideDisposable<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18044f;

        /* renamed from: g */
        Disposable f18045g;

        HideDisposable(Observer<? super T> observer) {
            this.f18044f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18045g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18045g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18044f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18044f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18044f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18045g, disposable)) {
                this.f18045g = disposable;
                this.f18044f.onSubscribe(this);
            }
        }
    }

    public ObservableHide(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new HideDisposable(observer));
    }
}
