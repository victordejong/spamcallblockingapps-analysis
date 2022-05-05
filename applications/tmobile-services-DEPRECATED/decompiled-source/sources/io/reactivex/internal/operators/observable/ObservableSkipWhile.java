package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipWhile.class */
public final class ObservableSkipWhile<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Predicate<? super T> f18460g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver.class */
    static final class SkipWhileObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18461f;

        /* renamed from: g */
        final Predicate<? super T> f18462g;

        /* renamed from: h */
        Disposable f18463h;

        /* renamed from: i */
        boolean f18464i;

        SkipWhileObserver(Observer<? super T> observer, Predicate<? super T> predicate) {
            this.f18461f = observer;
            this.f18462g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18463h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18463h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18461f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18461f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f18464i) {
                this.f18461f.onNext(t);
                return;
            }
            try {
                if (!this.f18462g.mo3191a(t)) {
                    this.f18464i = true;
                    this.f18461f.onNext(t);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f18463h.dispose();
                this.f18461f.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18463h, disposable)) {
                this.f18463h = disposable;
                this.f18461f.onSubscribe(this);
            }
        }
    }

    public ObservableSkipWhile(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f18460g = predicate;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new SkipWhileObserver(observer, this.f18460g));
    }
}
