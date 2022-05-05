package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableOnErrorReturn.class */
public final class ObservableOnErrorReturn<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super Throwable, ? extends T> f18190g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver.class */
    static final class OnErrorReturnObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18191f;

        /* renamed from: g */
        final Function<? super Throwable, ? extends T> f18192g;

        /* renamed from: h */
        Disposable f18193h;

        OnErrorReturnObserver(Observer<? super T> observer, Function<? super Throwable, ? extends T> function) {
            this.f18191f = observer;
            this.f18192g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18193h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18193h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18191f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                Object apply = this.f18192g.apply(th);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th);
                    this.f18191f.onError(nullPointerException);
                    return;
                }
                this.f18191f.onNext(apply);
                this.f18191f.onComplete();
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f18191f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18191f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18193h, disposable)) {
                this.f18193h = disposable;
                this.f18191f.onSubscribe(this);
            }
        }
    }

    public ObservableOnErrorReturn(ObservableSource<T> observableSource, Function<? super Throwable, ? extends T> function) {
        super(observableSource);
        this.f18190g = function;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new OnErrorReturnObserver(observer, this.f18190g));
    }
}
