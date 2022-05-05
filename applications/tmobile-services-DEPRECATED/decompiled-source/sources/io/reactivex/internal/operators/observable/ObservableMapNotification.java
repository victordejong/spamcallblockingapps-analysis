package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMapNotification.class */
public final class ObservableMapNotification<T, R> extends AbstractObservableWithUpstream<T, ObservableSource<? extends R>> {

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<? extends R>> f18127g;

    /* renamed from: h */
    final Function<? super Throwable, ? extends ObservableSource<? extends R>> f18128h;

    /* renamed from: i */
    final Callable<? extends ObservableSource<? extends R>> f18129i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver.class */
    static final class MapNotificationObserver<T, R> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super ObservableSource<? extends R>> f18130f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends R>> f18131g;

        /* renamed from: h */
        final Function<? super Throwable, ? extends ObservableSource<? extends R>> f18132h;

        /* renamed from: i */
        final Callable<? extends ObservableSource<? extends R>> f18133i;

        /* renamed from: j */
        Disposable f18134j;

        MapNotificationObserver(Observer<? super ObservableSource<? extends R>> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, Function<? super Throwable, ? extends ObservableSource<? extends R>> function2, Callable<? extends ObservableSource<? extends R>> callable) {
            this.f18130f = observer;
            this.f18131g = function;
            this.f18132h = function2;
            this.f18133i = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18134j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18134j.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            try {
                Object call = this.f18133i.call();
                ObjectHelper.m4363e(call, "The onComplete ObservableSource returned is null");
                this.f18130f.onNext((ObservableSource) call);
                this.f18130f.onComplete();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f18130f.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                Object apply = this.f18132h.apply(th);
                ObjectHelper.m4363e(apply, "The onError ObservableSource returned is null");
                this.f18130f.onNext((ObservableSource) apply);
                this.f18130f.onComplete();
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f18130f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                Object apply = this.f18131g.apply(t);
                ObjectHelper.m4363e(apply, "The onNext ObservableSource returned is null");
                this.f18130f.onNext((ObservableSource) apply);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f18130f.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18134j, disposable)) {
                this.f18134j = disposable;
                this.f18130f.onSubscribe(this);
            }
        }
    }

    public ObservableMapNotification(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, Function<? super Throwable, ? extends ObservableSource<? extends R>> function2, Callable<? extends ObservableSource<? extends R>> callable) {
        super(observableSource);
        this.f18127g = function;
        this.f18128h = function2;
        this.f18129i = callable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super ObservableSource<? extends R>> observer) {
        this.f17497f.subscribe(new MapNotificationObserver(observer, this.f18127g, this.f18128h, this.f18129i));
    }
}
