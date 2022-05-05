package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableElementAtSingle.class */
public final class ObservableElementAtSingle<T> extends Single<T> implements FuseToObservable<T> {

    /* renamed from: f */
    final ObservableSource<T> f17875f;

    /* renamed from: g */
    final long f17876g;

    /* renamed from: h */
    final T f17877h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver.class */
    static final class ElementAtObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f17878f;

        /* renamed from: g */
        final long f17879g;

        /* renamed from: h */
        final T f17880h;

        /* renamed from: i */
        Disposable f17881i;

        /* renamed from: j */
        long f17882j;

        /* renamed from: k */
        boolean f17883k;

        ElementAtObserver(SingleObserver<? super T> singleObserver, long j, T t) {
            this.f17878f = singleObserver;
            this.f17879g = j;
            this.f17880h = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17881i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17881i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17883k) {
                this.f17883k = true;
                T t = this.f17880h;
                if (t != null) {
                    this.f17878f.onSuccess(t);
                } else {
                    this.f17878f.onError(new NoSuchElementException());
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17883k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17883k = true;
            this.f17878f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17883k) {
                long j = this.f17882j;
                if (j == this.f17879g) {
                    this.f17883k = true;
                    this.f17881i.dispose();
                    this.f17878f.onSuccess(t);
                    return;
                }
                this.f17882j = j + 1;
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17881i, disposable)) {
                this.f17881i = disposable;
                this.f17878f.onSubscribe(this);
            }
        }
    }

    public ObservableElementAtSingle(ObservableSource<T> observableSource, long j, T t) {
        this.f17875f = observableSource;
        this.f17876g = j;
        this.f17877h = t;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<T> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableElementAt(this.f17875f, this.f17876g, this.f17877h, true));
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    public void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f17875f.subscribe(new ElementAtObserver(singleObserver, this.f17876g, this.f17877h));
    }
}
