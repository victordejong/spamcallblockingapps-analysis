package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCollect.class */
public final class ObservableCollect<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final Callable<? extends U> f17665g;

    /* renamed from: h */
    final BiConsumer<? super U, ? super T> f17666h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCollect$CollectObserver.class */
    static final class CollectObserver<T, U> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super U> f17667f;

        /* renamed from: g */
        final BiConsumer<? super U, ? super T> f17668g;

        /* renamed from: h */
        final U f17669h;

        /* renamed from: i */
        Disposable f17670i;

        /* renamed from: j */
        boolean f17671j;

        CollectObserver(Observer<? super U> observer, U u, BiConsumer<? super U, ? super T> biConsumer) {
            this.f17667f = observer;
            this.f17668g = biConsumer;
            this.f17669h = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17670i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17670i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17671j) {
                this.f17671j = true;
                this.f17667f.onNext((U) this.f17669h);
                this.f17667f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17671j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17671j = true;
            this.f17667f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17671j) {
                try {
                    this.f17668g.mo4369a((U) this.f17669h, t);
                } catch (Throwable th) {
                    this.f17670i.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17670i, disposable)) {
                this.f17670i = disposable;
                this.f17667f.onSubscribe(this);
            }
        }
    }

    public ObservableCollect(ObservableSource<T> observableSource, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        super(observableSource);
        this.f17665g = callable;
        this.f17666h = biConsumer;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super U> observer) {
        try {
            Object call = this.f17665g.call();
            ObjectHelper.m4363e(call, "The initialSupplier returned a null value");
            this.f17497f.subscribe(new CollectObserver(observer, call, this.f17666h));
        } catch (Throwable th) {
            EmptyDisposable.error(th, observer);
        }
    }
}
