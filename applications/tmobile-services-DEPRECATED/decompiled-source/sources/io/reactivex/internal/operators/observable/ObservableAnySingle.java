package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAnySingle.class */
public final class ObservableAnySingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: f */
    final ObservableSource<T> f17549f;

    /* renamed from: g */
    final Predicate<? super T> f17550g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAnySingle$AnyObserver.class */
    static final class AnyObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Boolean> f17551f;

        /* renamed from: g */
        final Predicate<? super T> f17552g;

        /* renamed from: h */
        Disposable f17553h;

        /* renamed from: i */
        boolean f17554i;

        AnyObserver(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f17551f = singleObserver;
            this.f17552g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17553h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17553h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17554i) {
                this.f17554i = true;
                this.f17551f.onSuccess(Boolean.FALSE);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17554i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17554i = true;
            this.f17551f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17554i) {
                try {
                    if (this.f17552g.mo3191a(t)) {
                        this.f17554i = true;
                        this.f17553h.dispose();
                        this.f17551f.onSuccess(Boolean.TRUE);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17553h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17553h, disposable)) {
                this.f17553h = disposable;
                this.f17551f.onSubscribe(this);
            }
        }
    }

    public ObservableAnySingle(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        this.f17549f = observableSource;
        this.f17550g = predicate;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<Boolean> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableAny(this.f17549f, this.f17550g));
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        this.f17549f.subscribe(new AnyObserver(singleObserver, this.f17550g));
    }
}
