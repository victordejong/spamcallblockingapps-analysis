package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.observers.SerializedObserver;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFrom.class */
public final class ObservableWithLatestFrom<T, U, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final BiFunction<? super T, ? super U, ? extends R> f18749g;

    /* renamed from: h */
    final ObservableSource<? extends U> f18750h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFrom$WithLatestFromObserver.class */
    static final class WithLatestFromObserver<T, U, R> extends AtomicReference<U> implements Observer<T>, Disposable {
        private static final long serialVersionUID = -312246233408980075L;

        /* renamed from: f */
        final Observer<? super R> f18751f;

        /* renamed from: g */
        final BiFunction<? super T, ? super U, ? extends R> f18752g;

        /* renamed from: h */
        final AtomicReference<Disposable> f18753h = new AtomicReference<>();

        /* renamed from: i */
        final AtomicReference<Disposable> f18754i = new AtomicReference<>();

        WithLatestFromObserver(Observer<? super R> observer, BiFunction<? super T, ? super U, ? extends R> biFunction) {
            this.f18751f = observer;
            this.f18752g = biFunction;
        }

        /* renamed from: a */
        public void m3640a(Throwable th) {
            DisposableHelper.dispose(this.f18753h);
            this.f18751f.onError(th);
        }

        /* renamed from: b */
        public boolean m3639b(Disposable disposable) {
            return DisposableHelper.setOnce(this.f18754i, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18753h);
            DisposableHelper.dispose(this.f18754i);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18753h.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            DisposableHelper.dispose(this.f18754i);
            this.f18751f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f18754i);
            this.f18751f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            U u = get();
            if (u != null) {
                try {
                    Object apply = this.f18752g.apply(t, u);
                    ObjectHelper.m4363e(apply, "The combiner returned a null value");
                    this.f18751f.onNext(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    dispose();
                    this.f18751f.onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18753h, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFrom$WithLatestFromOtherObserver.class */
    final class WithLatestFromOtherObserver implements Observer<U> {

        /* renamed from: f */
        private final WithLatestFromObserver<T, U, R> f18755f;

        WithLatestFromOtherObserver(ObservableWithLatestFrom observableWithLatestFrom, WithLatestFromObserver<T, U, R> withLatestFromObserver) {
            this.f18755f = withLatestFromObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18755f.m3640a(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            this.f18755f.lazySet(u);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18755f.m3639b(disposable);
        }
    }

    public ObservableWithLatestFrom(ObservableSource<T> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction, ObservableSource<? extends U> observableSource2) {
        super(observableSource);
        this.f18749g = biFunction;
        this.f18750h = observableSource2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(serializedObserver, this.f18749g);
        serializedObserver.onSubscribe(withLatestFromObserver);
        this.f18750h.subscribe(new WithLatestFromOtherObserver(this, withLatestFromObserver));
        this.f17497f.subscribe(withLatestFromObserver);
    }
}
