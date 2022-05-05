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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAllSingle.class */
public final class ObservableAllSingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: f */
    final ObservableSource<T> f17529f;

    /* renamed from: g */
    final Predicate<? super T> f17530g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver.class */
    static final class AllObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Boolean> f17531f;

        /* renamed from: g */
        final Predicate<? super T> f17532g;

        /* renamed from: h */
        Disposable f17533h;

        /* renamed from: i */
        boolean f17534i;

        AllObserver(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f17531f = singleObserver;
            this.f17532g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17533h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17533h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17534i) {
                this.f17534i = true;
                this.f17531f.onSuccess(Boolean.TRUE);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17534i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17534i = true;
            this.f17531f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17534i) {
                try {
                    if (!this.f17532g.mo3191a(t)) {
                        this.f17534i = true;
                        this.f17533h.dispose();
                        this.f17531f.onSuccess(Boolean.FALSE);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17533h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17533h, disposable)) {
                this.f17533h = disposable;
                this.f17531f.onSubscribe(this);
            }
        }
    }

    public ObservableAllSingle(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        this.f17529f = observableSource;
        this.f17530g = predicate;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<Boolean> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableAll(this.f17529f, this.f17530g));
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        this.f17529f.subscribe(new AllObserver(singleObserver, this.f17530g));
    }
}
