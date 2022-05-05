package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryPredicate.class */
public final class ObservableRetryPredicate<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Predicate<? super Throwable> f18325g;

    /* renamed from: h */
    final long f18326h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver.class */
    static final class RepeatObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Observer<? super T> f18327f;

        /* renamed from: g */
        final SequentialDisposable f18328g;

        /* renamed from: h */
        final ObservableSource<? extends T> f18329h;

        /* renamed from: i */
        final Predicate<? super Throwable> f18330i;

        /* renamed from: j */
        long f18331j;

        RepeatObserver(Observer<? super T> observer, long j, Predicate<? super Throwable> predicate, SequentialDisposable sequentialDisposable, ObservableSource<? extends T> observableSource) {
            this.f18327f = observer;
            this.f18328g = sequentialDisposable;
            this.f18329h = observableSource;
            this.f18330i = predicate;
            this.f18331j = j;
        }

        /* renamed from: a */
        void m3705a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f18328g.isDisposed()) {
                    this.f18329h.subscribe(this);
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
            this.f18327f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            long j = this.f18331j;
            if (j != Long.MAX_VALUE) {
                this.f18331j = j - 1;
            }
            if (j == 0) {
                this.f18327f.onError(th);
                return;
            }
            try {
                if (!this.f18330i.mo3191a(th)) {
                    this.f18327f.onError(th);
                } else {
                    m3705a();
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f18327f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18327f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18328g.m4422a(disposable);
        }
    }

    public ObservableRetryPredicate(Observable<T> observable, long j, Predicate<? super Throwable> predicate) {
        super(observable);
        this.f18325g = predicate;
        this.f18326h = j;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new RepeatObserver(observer, this.f18326h, this.f18325g, sequentialDisposable, this.f17497f).m3705a();
    }
}
