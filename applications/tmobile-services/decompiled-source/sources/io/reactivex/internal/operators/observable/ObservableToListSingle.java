package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableToListSingle.class */
public final class ObservableToListSingle<T, U extends Collection<? super T>> extends Single<U> implements FuseToObservable<U> {

    /* renamed from: f */
    final ObservableSource<T> f18617f;

    /* renamed from: g */
    final Callable<U> f18618g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver.class */
    static final class ToListObserver<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super U> f18619f;

        /* renamed from: g */
        U f18620g;

        /* renamed from: h */
        Disposable f18621h;

        ToListObserver(SingleObserver<? super U> singleObserver, U u) {
            this.f18619f = singleObserver;
            this.f18620g = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18621h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18621h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u = this.f18620g;
            this.f18620g = null;
            this.f18619f.onSuccess(u);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18620g = null;
            this.f18619f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18620g.add(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18621h, disposable)) {
                this.f18621h = disposable;
                this.f18619f.onSubscribe(this);
            }
        }
    }

    public ObservableToListSingle(ObservableSource<T> observableSource, int i) {
        this.f18617f = observableSource;
        this.f18618g = Functions.m4410e(i);
    }

    public ObservableToListSingle(ObservableSource<T> observableSource, Callable<U> callable) {
        this.f18617f = observableSource;
        this.f18618g = callable;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<U> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableToList(this.f18617f, this.f18618g));
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    public void mo3189k(SingleObserver<? super U> singleObserver) {
        try {
            U call = this.f18618g.call();
            ObjectHelper.m4363e(call, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f18617f.subscribe(new ToListObserver(singleObserver, call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
