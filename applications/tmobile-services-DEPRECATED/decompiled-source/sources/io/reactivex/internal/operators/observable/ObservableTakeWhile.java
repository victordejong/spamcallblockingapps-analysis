package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeWhile.class */
public final class ObservableTakeWhile<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Predicate<? super T> f18534g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeWhile$TakeWhileObserver.class */
    static final class TakeWhileObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18535f;

        /* renamed from: g */
        final Predicate<? super T> f18536g;

        /* renamed from: h */
        Disposable f18537h;

        /* renamed from: i */
        boolean f18538i;

        TakeWhileObserver(Observer<? super T> observer, Predicate<? super T> predicate) {
            this.f18535f = observer;
            this.f18536g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18537h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18537h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18538i) {
                this.f18538i = true;
                this.f18535f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18538i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18538i = true;
            this.f18535f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18538i) {
                try {
                    if (!this.f18536g.mo3191a(t)) {
                        this.f18538i = true;
                        this.f18537h.dispose();
                        this.f18535f.onComplete();
                        return;
                    }
                    this.f18535f.onNext(t);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f18537h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18537h, disposable)) {
                this.f18537h = disposable;
                this.f18535f.onSubscribe(this);
            }
        }
    }

    public ObservableTakeWhile(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f18534g = predicate;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new TakeWhileObserver(observer, this.f18534g));
    }
}
