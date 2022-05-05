package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableLastSingle.class */
public final class ObservableLastSingle<T> extends Single<T> {

    /* renamed from: f */
    final ObservableSource<T> f18118f;

    /* renamed from: g */
    final T f18119g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver.class */
    static final class LastObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f18120f;

        /* renamed from: g */
        final T f18121g;

        /* renamed from: h */
        Disposable f18122h;

        /* renamed from: i */
        T f18123i;

        LastObserver(SingleObserver<? super T> singleObserver, T t) {
            this.f18120f = singleObserver;
            this.f18121g = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18122h.dispose();
            this.f18122h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18122h == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18122h = DisposableHelper.DISPOSED;
            T t = this.f18123i;
            if (t != null) {
                this.f18123i = null;
                this.f18120f.onSuccess(t);
                return;
            }
            T t2 = this.f18121g;
            if (t2 != null) {
                this.f18120f.onSuccess(t2);
            } else {
                this.f18120f.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18122h = DisposableHelper.DISPOSED;
            this.f18123i = null;
            this.f18120f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18123i = t;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18122h, disposable)) {
                this.f18122h = disposable;
                this.f18120f.onSubscribe(this);
            }
        }
    }

    public ObservableLastSingle(ObservableSource<T> observableSource, T t) {
        this.f18118f = observableSource;
        this.f18119g = t;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f18118f.subscribe(new LastObserver(singleObserver, this.f18119g));
    }
}
