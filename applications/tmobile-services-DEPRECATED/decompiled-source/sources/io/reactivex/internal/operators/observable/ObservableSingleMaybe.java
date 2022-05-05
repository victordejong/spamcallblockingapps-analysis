package io.reactivex.internal.operators.observable;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSingleMaybe.class */
public final class ObservableSingleMaybe<T> extends Maybe<T> {

    /* renamed from: f */
    final ObservableSource<T> f18415f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver.class */
    static final class SingleElementObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f18416f;

        /* renamed from: g */
        Disposable f18417g;

        /* renamed from: h */
        T f18418h;

        /* renamed from: i */
        boolean f18419i;

        SingleElementObserver(MaybeObserver<? super T> maybeObserver) {
            this.f18416f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18417g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18417g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18419i) {
                this.f18419i = true;
                T t = this.f18418h;
                this.f18418h = null;
                if (t == null) {
                    this.f18416f.onComplete();
                } else {
                    this.f18416f.onSuccess(t);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18419i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18419i = true;
            this.f18416f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18419i) {
                if (this.f18418h != null) {
                    this.f18419i = true;
                    this.f18417g.dispose();
                    this.f18416f.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.f18418h = t;
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18417g, disposable)) {
                this.f18417g = disposable;
                this.f18416f.onSubscribe(this);
            }
        }
    }

    public ObservableSingleMaybe(ObservableSource<T> observableSource) {
        this.f18415f = observableSource;
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    public void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f18415f.subscribe(new SingleElementObserver(maybeObserver));
    }
}
