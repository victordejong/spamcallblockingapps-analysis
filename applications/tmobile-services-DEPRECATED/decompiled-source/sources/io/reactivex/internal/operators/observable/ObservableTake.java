package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTake.class */
public final class ObservableTake<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18494g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTake$TakeObserver.class */
    static final class TakeObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18495f;

        /* renamed from: g */
        boolean f18496g;

        /* renamed from: h */
        Disposable f18497h;

        /* renamed from: i */
        long f18498i;

        TakeObserver(Observer<? super T> observer, long j) {
            this.f18495f = observer;
            this.f18498i = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18497h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18497h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18496g) {
                this.f18496g = true;
                this.f18497h.dispose();
                this.f18495f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18496g) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18496g = true;
            this.f18497h.dispose();
            this.f18495f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18496g) {
                long j = this.f18498i;
                long j2 = j - 1;
                this.f18498i = j2;
                if (j > 0) {
                    boolean z = j2 == 0;
                    this.f18495f.onNext(t);
                    if (z) {
                        onComplete();
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18497h, disposable)) {
                this.f18497h = disposable;
                if (this.f18498i == 0) {
                    this.f18496g = true;
                    disposable.dispose();
                    EmptyDisposable.complete(this.f18495f);
                    return;
                }
                this.f18495f.onSubscribe(this);
            }
        }
    }

    public ObservableTake(ObservableSource<T> observableSource, long j) {
        super(observableSource);
        this.f18494g = j;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new TakeObserver(observer, this.f18494g));
    }
}
