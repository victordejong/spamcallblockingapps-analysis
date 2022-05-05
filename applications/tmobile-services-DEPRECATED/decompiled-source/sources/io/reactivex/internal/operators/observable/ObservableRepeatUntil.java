package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatUntil.class */
public final class ObservableRepeatUntil<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final BooleanSupplier f18268g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver.class */
    static final class RepeatUntilObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Observer<? super T> f18269f;

        /* renamed from: g */
        final SequentialDisposable f18270g;

        /* renamed from: h */
        final ObservableSource<? extends T> f18271h;

        /* renamed from: i */
        final BooleanSupplier f18272i;

        RepeatUntilObserver(Observer<? super T> observer, BooleanSupplier booleanSupplier, SequentialDisposable sequentialDisposable, ObservableSource<? extends T> observableSource) {
            this.f18269f = observer;
            this.f18270g = sequentialDisposable;
            this.f18271h = observableSource;
            this.f18272i = booleanSupplier;
        }

        /* renamed from: a */
        void m3738a() {
            int addAndGet;
            if (getAndIncrement() == 0) {
                int i = 1;
                do {
                    this.f18271h.subscribe(this);
                    addAndGet = addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            try {
                if (this.f18272i.mo4309a()) {
                    this.f18269f.onComplete();
                } else {
                    m3738a();
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f18269f.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18269f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18269f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18270g.m4422a(disposable);
        }
    }

    public ObservableRepeatUntil(Observable<T> observable, BooleanSupplier booleanSupplier) {
        super(observable);
        this.f18268g = booleanSupplier;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new RepeatUntilObserver(observer, this.f18268g, sequentialDisposable, this.f17497f).m3738a();
    }
}
