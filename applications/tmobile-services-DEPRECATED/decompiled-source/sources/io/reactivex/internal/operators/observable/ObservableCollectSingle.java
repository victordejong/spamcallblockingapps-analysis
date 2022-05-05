package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCollectSingle.class */
public final class ObservableCollectSingle<T, U> extends Single<U> implements FuseToObservable<U> {

    /* renamed from: f */
    final ObservableSource<T> f17672f;

    /* renamed from: g */
    final Callable<? extends U> f17673g;

    /* renamed from: h */
    final BiConsumer<? super U, ? super T> f17674h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCollectSingle$CollectObserver.class */
    static final class CollectObserver<T, U> implements Observer<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super U> f17675f;

        /* renamed from: g */
        final BiConsumer<? super U, ? super T> f17676g;

        /* renamed from: h */
        final U f17677h;

        /* renamed from: i */
        Disposable f17678i;

        /* renamed from: j */
        boolean f17679j;

        CollectObserver(SingleObserver<? super U> singleObserver, U u, BiConsumer<? super U, ? super T> biConsumer) {
            this.f17675f = singleObserver;
            this.f17676g = biConsumer;
            this.f17677h = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17678i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17678i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17679j) {
                this.f17679j = true;
                this.f17675f.onSuccess((U) this.f17677h);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17679j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17679j = true;
            this.f17675f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17679j) {
                try {
                    this.f17676g.mo4369a((U) this.f17677h, t);
                } catch (Throwable th) {
                    this.f17678i.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17678i, disposable)) {
                this.f17678i = disposable;
                this.f17675f.onSubscribe(this);
            }
        }
    }

    public ObservableCollectSingle(ObservableSource<T> observableSource, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        this.f17672f = observableSource;
        this.f17673g = callable;
        this.f17674h = biConsumer;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<U> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableCollect(this.f17672f, this.f17673g, this.f17674h));
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super U> singleObserver) {
        try {
            Object call = this.f17673g.call();
            ObjectHelper.m4363e(call, "The initialSupplier returned a null value");
            this.f17672f.subscribe(new CollectObserver(singleObserver, call, this.f17674h));
        } catch (Throwable th) {
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
