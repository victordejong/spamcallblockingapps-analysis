package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithSingle.class */
public final class ObservableConcatWithSingle<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final SingleSource<? extends T> f17753g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver.class */
    static final class ConcatWithObserver<T> extends AtomicReference<Disposable> implements Observer<T>, SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: f */
        final Observer<? super T> f17754f;

        /* renamed from: g */
        SingleSource<? extends T> f17755g;

        /* renamed from: h */
        boolean f17756h;

        ConcatWithObserver(Observer<? super T> observer, SingleSource<? extends T> singleSource) {
            this.f17754f = observer;
            this.f17755g = singleSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17756h = true;
            DisposableHelper.replace(this, null);
            SingleSource<? extends T> singleSource = this.f17755g;
            this.f17755g = null;
            singleSource.mo4457b(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17754f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17754f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable) && !this.f17756h) {
                this.f17754f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f17754f.onNext(t);
            this.f17754f.onComplete();
        }
    }

    public ObservableConcatWithSingle(Observable<T> observable, SingleSource<? extends T> singleSource) {
        super(observable);
        this.f17753g = singleSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new ConcatWithObserver(observer, this.f17753g));
    }
}
