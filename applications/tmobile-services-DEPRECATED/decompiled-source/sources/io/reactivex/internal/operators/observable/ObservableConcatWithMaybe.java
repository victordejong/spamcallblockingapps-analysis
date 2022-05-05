package io.reactivex.internal.operators.observable;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithMaybe.class */
public final class ObservableConcatWithMaybe<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final MaybeSource<? extends T> f17749g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver.class */
    static final class ConcatWithObserver<T> extends AtomicReference<Disposable> implements Observer<T>, MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: f */
        final Observer<? super T> f17750f;

        /* renamed from: g */
        MaybeSource<? extends T> f17751g;

        /* renamed from: h */
        boolean f17752h;

        ConcatWithObserver(Observer<? super T> observer, MaybeSource<? extends T> maybeSource) {
            this.f17750f = observer;
            this.f17751g = maybeSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f17752h) {
                this.f17750f.onComplete();
                return;
            }
            this.f17752h = true;
            DisposableHelper.replace(this, null);
            MaybeSource<? extends T> maybeSource = this.f17751g;
            this.f17751g = null;
            maybeSource.mo4485b(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17750f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17750f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable) && !this.f17752h) {
                this.f17750f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17750f.onNext(t);
            this.f17750f.onComplete();
        }
    }

    public ObservableConcatWithMaybe(Observable<T> observable, MaybeSource<? extends T> maybeSource) {
        super(observable);
        this.f17749g = maybeSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new ConcatWithObserver(observer, this.f17749g));
    }
}
