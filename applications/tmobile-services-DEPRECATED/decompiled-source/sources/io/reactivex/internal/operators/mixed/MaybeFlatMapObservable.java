package io.reactivex.internal.operators.mixed;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/MaybeFlatMapObservable.class */
public final class MaybeFlatMapObservable<T, R> extends Observable<R> {

    /* renamed from: f */
    final MaybeSource<T> f17395f;

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<? extends R>> f17396g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/MaybeFlatMapObservable$FlatMapObserver.class */
    static final class FlatMapObserver<T, R> extends AtomicReference<Disposable> implements Observer<R>, MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: f */
        final Observer<? super R> f17397f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends R>> f17398g;

        FlatMapObserver(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function) {
            this.f17397f = observer;
            this.f17398g = function;
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
            this.f17397f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17397f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            this.f17397f.onNext(r);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17398g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                ((ObservableSource) apply).subscribe(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17397f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        FlatMapObserver flatMapObserver = new FlatMapObserver(observer, this.f17396g);
        observer.onSubscribe(flatMapObserver);
        this.f17395f.mo4485b(flatMapObserver);
    }
}
