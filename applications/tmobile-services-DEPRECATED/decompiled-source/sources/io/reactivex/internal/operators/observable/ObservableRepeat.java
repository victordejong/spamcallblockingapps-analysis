package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeat.class */
public final class ObservableRepeat<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18263g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver.class */
    static final class RepeatObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Observer<? super T> f18264f;

        /* renamed from: g */
        final SequentialDisposable f18265g;

        /* renamed from: h */
        final ObservableSource<? extends T> f18266h;

        /* renamed from: i */
        long f18267i;

        RepeatObserver(Observer<? super T> observer, long j, SequentialDisposable sequentialDisposable, ObservableSource<? extends T> observableSource) {
            this.f18264f = observer;
            this.f18265g = sequentialDisposable;
            this.f18266h = observableSource;
            this.f18267i = j;
        }

        /* renamed from: a */
        void m3739a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f18265g.isDisposed()) {
                    this.f18266h.subscribe(this);
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
            long j = this.f18267i;
            if (j != Long.MAX_VALUE) {
                this.f18267i = j - 1;
            }
            if (j != 0) {
                m3739a();
            } else {
                this.f18264f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18264f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18264f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18265g.m4422a(disposable);
        }
    }

    public ObservableRepeat(Observable<T> observable, long j) {
        super(observable);
        this.f18263g = j;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        long j = this.f18263g;
        long j2 = Long.MAX_VALUE;
        if (j != Long.MAX_VALUE) {
            j2 = j - 1;
        }
        new RepeatObserver(observer, j2, sequentialDisposable, this.f17497f).m3739a();
    }
}
