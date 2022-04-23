package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLast.class */
public final class ObservableTakeLast<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final int f18499g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver.class */
    static final class TakeLastObserver<T> extends ArrayDeque<T> implements Observer<T>, Disposable {
        private static final long serialVersionUID = 7240042530241604978L;

        /* renamed from: f */
        final Observer<? super T> f18500f;

        /* renamed from: g */
        final int f18501g;

        /* renamed from: h */
        Disposable f18502h;

        /* renamed from: i */
        volatile boolean f18503i;

        TakeLastObserver(Observer<? super T> observer, int i) {
            this.f18500f = observer;
            this.f18501g = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18503i) {
                this.f18503i = true;
                this.f18502h.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18503i;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Observer<? super T> observer = this.f18500f;
            while (!this.f18503i) {
                Object obj = (T) poll();
                if (obj != null) {
                    observer.onNext(obj);
                } else if (!this.f18503i) {
                    observer.onComplete();
                    return;
                } else {
                    return;
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18500f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f18501g == size()) {
                poll();
            }
            offer(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18502h, disposable)) {
                this.f18502h = disposable;
                this.f18500f.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLast(ObservableSource<T> observableSource, int i) {
        super(observableSource);
        this.f18499g = i;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new TakeLastObserver(observer, this.f18499g));
    }
}
