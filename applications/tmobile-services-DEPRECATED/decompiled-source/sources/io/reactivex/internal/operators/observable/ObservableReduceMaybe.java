package io.reactivex.internal.operators.observable;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReduceMaybe.class */
public final class ObservableReduceMaybe<T> extends Maybe<T> {

    /* renamed from: f */
    final ObservableSource<T> f18231f;

    /* renamed from: g */
    final BiFunction<T, T, T> f18232g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver.class */
    static final class ReduceObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f18233f;

        /* renamed from: g */
        final BiFunction<T, T, T> f18234g;

        /* renamed from: h */
        boolean f18235h;

        /* renamed from: i */
        T f18236i;

        /* renamed from: j */
        Disposable f18237j;

        ReduceObserver(MaybeObserver<? super T> maybeObserver, BiFunction<T, T, T> biFunction) {
            this.f18233f = maybeObserver;
            this.f18234g = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18237j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18237j.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18235h) {
                this.f18235h = true;
                T t = this.f18236i;
                this.f18236i = null;
                if (t != null) {
                    this.f18233f.onSuccess(t);
                } else {
                    this.f18233f.onComplete();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18235h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18235h = true;
            this.f18236i = null;
            this.f18233f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18235h) {
                T t2 = this.f18236i;
                if (t2 == null) {
                    this.f18236i = t;
                    return;
                }
                try {
                    T apply = this.f18234g.apply(t2, t);
                    ObjectHelper.m4363e(apply, "The reducer returned a null value");
                    this.f18236i = apply;
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f18237j.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18237j, disposable)) {
                this.f18237j = disposable;
                this.f18233f.onSubscribe(this);
            }
        }
    }

    public ObservableReduceMaybe(ObservableSource<T> observableSource, BiFunction<T, T, T> biFunction) {
        this.f18231f = observableSource;
        this.f18232g = biFunction;
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f18231f.subscribe(new ReduceObserver(maybeObserver, this.f18232g));
    }
}
