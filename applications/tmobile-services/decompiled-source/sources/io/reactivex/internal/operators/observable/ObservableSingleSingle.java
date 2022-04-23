package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSingleSingle.class */
public final class ObservableSingleSingle<T> extends Single<T> {

    /* renamed from: f */
    final ObservableSource<? extends T> f18420f;

    /* renamed from: g */
    final T f18421g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver.class */
    static final class SingleElementObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f18422f;

        /* renamed from: g */
        final T f18423g;

        /* renamed from: h */
        Disposable f18424h;

        /* renamed from: i */
        T f18425i;

        /* renamed from: j */
        boolean f18426j;

        SingleElementObserver(SingleObserver<? super T> singleObserver, T t) {
            this.f18422f = singleObserver;
            this.f18423g = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18424h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18424h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18426j) {
                this.f18426j = true;
                T t = this.f18425i;
                this.f18425i = null;
                T t2 = t;
                if (t == null) {
                    t2 = this.f18423g;
                }
                if (t2 != null) {
                    this.f18422f.onSuccess(t2);
                } else {
                    this.f18422f.onError(new NoSuchElementException());
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18426j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18426j = true;
            this.f18422f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18426j) {
                if (this.f18425i != null) {
                    this.f18426j = true;
                    this.f18424h.dispose();
                    this.f18422f.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.f18425i = t;
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18424h, disposable)) {
                this.f18424h = disposable;
                this.f18422f.onSubscribe(this);
            }
        }
    }

    public ObservableSingleSingle(ObservableSource<? extends T> observableSource, T t) {
        this.f18420f = observableSource;
        this.f18421g = t;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    public void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f18420f.subscribe(new SingleElementObserver(singleObserver, this.f18421g));
    }
}
