package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EmptyComponent;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDetach.class */
public final class ObservableDetach<T> extends AbstractObservableWithUpstream<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDetach$DetachObserver.class */
    static final class DetachObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        Observer<? super T> f17825f;

        /* renamed from: g */
        Disposable f17826g;

        DetachObserver(Observer<? super T> observer) {
            this.f17825f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f17826g;
            this.f17826g = EmptyComponent.INSTANCE;
            this.f17825f = EmptyComponent.asObserver();
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17826g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Observer<? super T> observer = this.f17825f;
            this.f17826g = EmptyComponent.INSTANCE;
            this.f17825f = EmptyComponent.asObserver();
            observer.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Observer<? super T> observer = this.f17825f;
            this.f17826g = EmptyComponent.INSTANCE;
            this.f17825f = EmptyComponent.asObserver();
            observer.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17825f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17826g, disposable)) {
                this.f17826g = disposable;
                this.f17825f.onSubscribe(this);
            }
        }
    }

    public ObservableDetach(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DetachObserver(observer));
    }
}
