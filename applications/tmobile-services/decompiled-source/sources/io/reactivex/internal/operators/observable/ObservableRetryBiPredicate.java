package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryBiPredicate.class */
public final class ObservableRetryBiPredicate<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final BiPredicate<? super Integer, ? super Throwable> f18319g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver.class */
    static final class RetryBiObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Observer<? super T> f18320f;

        /* renamed from: g */
        final SequentialDisposable f18321g;

        /* renamed from: h */
        final ObservableSource<? extends T> f18322h;

        /* renamed from: i */
        final BiPredicate<? super Integer, ? super Throwable> f18323i;

        /* renamed from: j */
        int f18324j;

        RetryBiObserver(Observer<? super T> observer, BiPredicate<? super Integer, ? super Throwable> biPredicate, SequentialDisposable sequentialDisposable, ObservableSource<? extends T> observableSource) {
            this.f18320f = observer;
            this.f18321g = sequentialDisposable;
            this.f18322h = observableSource;
            this.f18323i = biPredicate;
        }

        /* renamed from: a */
        void m3706a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f18321g.isDisposed()) {
                    this.f18322h.subscribe(this);
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18320f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                BiPredicate<? super Integer, ? super Throwable> biPredicate = this.f18323i;
                int i = this.f18324j + 1;
                this.f18324j = i;
                if (!biPredicate.mo4360a(Integer.valueOf(i), th)) {
                    this.f18320f.onError(th);
                } else {
                    m3706a();
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f18320f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18320f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18321g.m4422a(disposable);
        }
    }

    public ObservableRetryBiPredicate(Observable<T> observable, BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        super(observable);
        this.f18319g = biPredicate;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new RetryBiObserver(observer, this.f18319g, sequentialDisposable, this.f17497f).m3706a();
    }
}
