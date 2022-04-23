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
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatWhen.class */
public final class ObservableRepeatWhen<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super Observable<Object>, ? extends ObservableSource<?>> f18273g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver.class */
    static final class RepeatWhenObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 802743776666017014L;

        /* renamed from: f */
        final Observer<? super T> f18274f;

        /* renamed from: i */
        final Subject<Object> f18277i;

        /* renamed from: l */
        final ObservableSource<T> f18280l;

        /* renamed from: m */
        volatile boolean f18281m;

        /* renamed from: g */
        final AtomicInteger f18275g = new AtomicInteger();

        /* renamed from: h */
        final AtomicThrowable f18276h = new AtomicThrowable();

        /* renamed from: j */
        final RepeatWhenObserver<T>.InnerRepeatObserver f18278j = new InnerRepeatObserver();

        /* renamed from: k */
        final AtomicReference<Disposable> f18279k = new AtomicReference<>();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver$InnerRepeatObserver.class */
        final class InnerRepeatObserver extends AtomicReference<Disposable> implements Observer<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            InnerRepeatObserver() {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                RepeatWhenObserver.this.m3737a();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                RepeatWhenObserver.this.m3736b(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(Object obj) {
                RepeatWhenObserver.this.m3735c();
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        RepeatWhenObserver(Observer<? super T> observer, Subject<Object> subject, ObservableSource<T> observableSource) {
            this.f18274f = observer;
            this.f18277i = subject;
            this.f18280l = observableSource;
        }

        /* renamed from: a */
        void m3737a() {
            DisposableHelper.dispose(this.f18279k);
            HalfSerializer.m3433a(this.f18274f, this, this.f18276h);
        }

        /* renamed from: b */
        void m3736b(Throwable th) {
            DisposableHelper.dispose(this.f18279k);
            HalfSerializer.m3431c(this.f18274f, th, this, this.f18276h);
        }

        /* renamed from: c */
        void m3735c() {
            m3734d();
        }

        /* renamed from: d */
        void m3734d() {
            if (this.f18275g.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f18281m) {
                        this.f18281m = true;
                        this.f18280l.subscribe(this);
                    }
                    if (this.f18275g.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18279k);
            DisposableHelper.dispose(this.f18278j);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18279k.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            DisposableHelper.replace(this.f18279k, null);
            this.f18281m = false;
            this.f18277i.onNext(0);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f18278j);
            HalfSerializer.m3431c(this.f18274f, th, this, this.f18276h);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            HalfSerializer.m3429e(this.f18274f, t, this, this.f18276h);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18279k, disposable);
        }
    }

    public ObservableRepeatWhen(ObservableSource<T> observableSource, Function<? super Observable<Object>, ? extends ObservableSource<?>> function) {
        super(observableSource);
        this.f18273g = function;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        Subject<T> d = PublishSubject.m3207f().m3186d();
        try {
            Object apply = this.f18273g.apply(d);
            ObjectHelper.m4363e(apply, "The handler returned a null ObservableSource");
            ObservableSource observableSource = (ObservableSource) apply;
            RepeatWhenObserver repeatWhenObserver = new RepeatWhenObserver(observer, d, this.f17497f);
            observer.onSubscribe(repeatWhenObserver);
            observableSource.subscribe(repeatWhenObserver.f18278j);
            repeatWhenObserver.m3734d();
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
