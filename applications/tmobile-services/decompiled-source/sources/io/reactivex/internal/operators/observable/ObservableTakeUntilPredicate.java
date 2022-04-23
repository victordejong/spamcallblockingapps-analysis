package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeUntilPredicate.class */
public final class ObservableTakeUntilPredicate<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Predicate<? super T> f18529g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeUntilPredicate$TakeUntilPredicateObserver.class */
    static final class TakeUntilPredicateObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18530f;

        /* renamed from: g */
        final Predicate<? super T> f18531g;

        /* renamed from: h */
        Disposable f18532h;

        /* renamed from: i */
        boolean f18533i;

        TakeUntilPredicateObserver(Observer<? super T> observer, Predicate<? super T> predicate) {
            this.f18530f = observer;
            this.f18531g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18532h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18532h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18533i) {
                this.f18533i = true;
                this.f18530f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f18533i) {
                this.f18533i = true;
                this.f18530f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18533i) {
                this.f18530f.onNext(t);
                try {
                    if (this.f18531g.mo3191a(t)) {
                        this.f18533i = true;
                        this.f18532h.dispose();
                        this.f18530f.onComplete();
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f18532h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18532h, disposable)) {
                this.f18532h = disposable;
                this.f18530f.onSubscribe(this);
            }
        }
    }

    public ObservableTakeUntilPredicate(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f18529g = predicate;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new TakeUntilPredicateObserver(observer, this.f18529g));
    }
}
