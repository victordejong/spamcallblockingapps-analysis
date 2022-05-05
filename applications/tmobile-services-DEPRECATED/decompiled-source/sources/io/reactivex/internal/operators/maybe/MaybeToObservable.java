package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
import io.reactivex.internal.observers.DeferredScalarDisposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToObservable.class */
public final class MaybeToObservable<T> extends Observable<T> implements HasUpstreamMaybeSource<T> {

    /* renamed from: f */
    final MaybeSource<T> f17251f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver.class */
    public static final class MaybeToObservableObserver<T> extends DeferredScalarDisposable<T> implements MaybeObserver<T> {
        private static final long serialVersionUID = 7603343402964826922L;

        /* renamed from: h */
        Disposable f17252h;

        MaybeToObservableObserver(Observer<? super T> observer) {
            super(observer);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.Disposable
        public void dispose() {
            super.dispose();
            this.f17252h.dispose();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            m4351a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            m4349c(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17252h, disposable)) {
                this.f17252h = disposable;
                this.f15188f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            m4350b(t);
        }
    }

    /* renamed from: d */
    public static <T> MaybeObserver<T> m3975d(Observer<? super T> observer) {
        return new MaybeToObservableObserver(observer);
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17251f.mo4485b(m3975d(observer));
    }
}
