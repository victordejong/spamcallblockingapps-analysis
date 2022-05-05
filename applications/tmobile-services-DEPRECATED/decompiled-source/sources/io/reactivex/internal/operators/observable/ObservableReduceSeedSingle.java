package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReduceSeedSingle.class */
public final class ObservableReduceSeedSingle<T, R> extends Single<R> {

    /* renamed from: f */
    final ObservableSource<T> f18238f;

    /* renamed from: g */
    final R f18239g;

    /* renamed from: h */
    final BiFunction<R, ? super T, R> f18240h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver.class */
    static final class ReduceSeedObserver<T, R> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super R> f18241f;

        /* renamed from: g */
        final BiFunction<R, ? super T, R> f18242g;

        /* renamed from: h */
        R f18243h;

        /* renamed from: i */
        Disposable f18244i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ReduceSeedObserver(SingleObserver<? super R> singleObserver, BiFunction<R, ? super T, R> biFunction, R r) {
            this.f18241f = singleObserver;
            this.f18243h = r;
            this.f18242g = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18244i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18244i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            R r = this.f18243h;
            if (r != null) {
                this.f18243h = null;
                this.f18241f.onSuccess(r);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18243h != null) {
                this.f18243h = null;
                this.f18241f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            R r = this.f18243h;
            if (r != null) {
                try {
                    R apply = this.f18242g.apply(r, t);
                    ObjectHelper.m4363e(apply, "The reducer returned a null value");
                    this.f18243h = apply;
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f18244i.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18244i, disposable)) {
                this.f18244i = disposable;
                this.f18241f.onSubscribe(this);
            }
        }
    }

    public ObservableReduceSeedSingle(ObservableSource<T> observableSource, R r, BiFunction<R, ? super T, R> biFunction) {
        this.f18238f = observableSource;
        this.f18239g = r;
        this.f18240h = biFunction;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        this.f18238f.subscribe(new ReduceSeedObserver(singleObserver, this.f18240h, this.f18239g));
    }
}
