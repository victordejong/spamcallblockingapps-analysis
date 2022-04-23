package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublishSelector.class */
public final class ObservablePublishSelector<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super Observable<T>, ? extends ObservableSource<R>> f18214g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublishSelector$SourceObserver.class */
    static final class SourceObserver<T, R> implements Observer<T> {

        /* renamed from: f */
        final PublishSubject<T> f18215f;

        /* renamed from: g */
        final AtomicReference<Disposable> f18216g;

        SourceObserver(PublishSubject<T> publishSubject, AtomicReference<Disposable> atomicReference) {
            this.f18215f = publishSubject;
            this.f18216g = atomicReference;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18215f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18215f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18215f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18216g, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver.class */
    static final class TargetObserver<T, R> extends AtomicReference<Disposable> implements Observer<R>, Disposable {
        private static final long serialVersionUID = 854110278590336484L;

        /* renamed from: f */
        final Observer<? super R> f18217f;

        /* renamed from: g */
        Disposable f18218g;

        TargetObserver(Observer<? super R> observer) {
            this.f18217f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18218g.dispose();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18218g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            DisposableHelper.dispose(this);
            this.f18217f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.dispose(this);
            this.f18217f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            this.f18217f.onNext(r);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18218g, disposable)) {
                this.f18218g = disposable;
                this.f18217f.onSubscribe(this);
            }
        }
    }

    public ObservablePublishSelector(ObservableSource<T> observableSource, Function<? super Observable<T>, ? extends ObservableSource<R>> function) {
        super(observableSource);
        this.f18214g = function;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        PublishSubject f = PublishSubject.m3207f();
        try {
            Object apply = this.f18214g.apply(f);
            ObjectHelper.m4363e(apply, "The selector returned a null ObservableSource");
            ObservableSource observableSource = (ObservableSource) apply;
            TargetObserver targetObserver = new TargetObserver(observer);
            observableSource.subscribe(targetObserver);
            this.f17497f.subscribe(new SourceObserver(f, targetObserver));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
