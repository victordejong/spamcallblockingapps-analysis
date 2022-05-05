package io.reactivex.internal.operators.completable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicQueueDisposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableToObservable.class */
public final class CompletableToObservable<T> extends Observable<T> {

    /* renamed from: f */
    final CompletableSource f15395f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver.class */
    static final class ObserverCompletableObserver extends BasicQueueDisposable<Void> implements CompletableObserver {

        /* renamed from: f */
        final Observer<?> f15396f;

        /* renamed from: g */
        Disposable f15397g;

        ObserverCompletableObserver(Observer<?> observer) {
            this.f15396f = observer;
        }

        /* renamed from: a */
        public Void poll() throws Exception {
            return null;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15397g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15397g.isDisposed();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15396f.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15396f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f15397g, disposable)) {
                this.f15397g = disposable;
                this.f15396f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return i & 2;
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f15395f.mo4514b(new ObserverCompletableObserver(observer));
    }
}
