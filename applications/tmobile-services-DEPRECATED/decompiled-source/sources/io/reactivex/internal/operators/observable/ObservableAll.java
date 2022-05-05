package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAll.class */
public final class ObservableAll<T> extends AbstractObservableWithUpstream<T, Boolean> {

    /* renamed from: g */
    final Predicate<? super T> f17524g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAll$AllObserver.class */
    static final class AllObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super Boolean> f17525f;

        /* renamed from: g */
        final Predicate<? super T> f17526g;

        /* renamed from: h */
        Disposable f17527h;

        /* renamed from: i */
        boolean f17528i;

        AllObserver(Observer<? super Boolean> observer, Predicate<? super T> predicate) {
            this.f17525f = observer;
            this.f17526g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17527h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17527h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17528i) {
                this.f17528i = true;
                this.f17525f.onNext(Boolean.TRUE);
                this.f17525f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17528i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17528i = true;
            this.f17525f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17528i) {
                try {
                    if (!this.f17526g.mo3191a(t)) {
                        this.f17528i = true;
                        this.f17527h.dispose();
                        this.f17525f.onNext(Boolean.FALSE);
                        this.f17525f.onComplete();
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17527h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17527h, disposable)) {
                this.f17527h = disposable;
                this.f17525f.onSubscribe(this);
            }
        }
    }

    public ObservableAll(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f17524g = predicate;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Boolean> observer) {
        this.f17497f.subscribe(new AllObserver(observer, this.f17524g));
    }
}
