package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScanSeed.class */
public final class ObservableScanSeed<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final BiFunction<R, ? super T, R> f18372g;

    /* renamed from: h */
    final Callable<R> f18373h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver.class */
    static final class ScanSeedObserver<T, R> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super R> f18374f;

        /* renamed from: g */
        final BiFunction<R, ? super T, R> f18375g;

        /* renamed from: h */
        R f18376h;

        /* renamed from: i */
        Disposable f18377i;

        /* renamed from: j */
        boolean f18378j;

        ScanSeedObserver(Observer<? super R> observer, BiFunction<R, ? super T, R> biFunction, R r) {
            this.f18374f = observer;
            this.f18375g = biFunction;
            this.f18376h = r;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18377i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18377i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18378j) {
                this.f18378j = true;
                this.f18374f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18378j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18378j = true;
            this.f18374f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18378j) {
                try {
                    R apply = this.f18375g.apply(this.f18376h, t);
                    ObjectHelper.m4363e(apply, "The accumulator returned a null value");
                    this.f18376h = apply;
                    this.f18374f.onNext(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f18377i.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18377i, disposable)) {
                this.f18377i = disposable;
                this.f18374f.onSubscribe(this);
                this.f18374f.onNext((R) this.f18376h);
            }
        }
    }

    public ObservableScanSeed(ObservableSource<T> observableSource, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        super(observableSource);
        this.f18372g = biFunction;
        this.f18373h = callable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        try {
            R call = this.f18373h.call();
            ObjectHelper.m4363e(call, "The seed supplied is null");
            this.f17497f.subscribe(new ScanSeedObserver(observer, this.f18372g, call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
