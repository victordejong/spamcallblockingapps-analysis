package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlattenIterable.class */
public final class ObservableFlattenIterable<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends Iterable<? extends R>> f17960g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver.class */
    static final class FlattenIterableObserver<T, R> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super R> f17961f;

        /* renamed from: g */
        final Function<? super T, ? extends Iterable<? extends R>> f17962g;

        /* renamed from: h */
        Disposable f17963h;

        FlattenIterableObserver(Observer<? super R> observer, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.f17961f = observer;
            this.f17962g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17963h.dispose();
            this.f17963h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17963h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Disposable disposable = this.f17963h;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                this.f17963h = disposableHelper;
                this.f17961f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Disposable disposable = this.f17963h;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17963h = disposableHelper;
            this.f17961f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f17963h != DisposableHelper.DISPOSED) {
                try {
                    Observer<? super R> observer = this.f17961f;
                    for (T t2 : (Iterable) this.f17962g.apply(t)) {
                        try {
                            try {
                                ObjectHelper.m4363e(t2, "The iterator returned a null value");
                                observer.onNext(t2);
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                this.f17963h.dispose();
                                onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            Exceptions.m4428b(th2);
                            this.f17963h.dispose();
                            onError(th2);
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    Exceptions.m4428b(th3);
                    this.f17963h.dispose();
                    onError(th3);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17963h, disposable)) {
                this.f17963h = disposable;
                this.f17961f.onSubscribe(this);
            }
        }
    }

    public ObservableFlattenIterable(ObservableSource<T> observableSource, Function<? super T, ? extends Iterable<? extends R>> function) {
        super(observableSource);
        this.f17960g = function;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        this.f17497f.subscribe(new FlattenIterableObserver(observer, this.f17960g));
    }
}
