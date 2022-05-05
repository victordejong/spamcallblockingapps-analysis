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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryWhen.class */
public final class ObservableRetryWhen<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super Observable<Throwable>, ? extends ObservableSource<?>> f18332g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver.class */
    static final class RepeatWhenObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 802743776666017014L;

        /* renamed from: f */
        final Observer<? super T> f18333f;

        /* renamed from: i */
        final Subject<Throwable> f18336i;

        /* renamed from: l */
        final ObservableSource<T> f18339l;

        /* renamed from: m */
        volatile boolean f18340m;

        /* renamed from: g */
        final AtomicInteger f18334g = new AtomicInteger();

        /* renamed from: h */
        final AtomicThrowable f18335h = new AtomicThrowable();

        /* renamed from: j */
        final RepeatWhenObserver<T>.InnerRepeatObserver f18337j = new InnerRepeatObserver();

        /* renamed from: k */
        final AtomicReference<Disposable> f18338k = new AtomicReference<>();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver.class */
        final class InnerRepeatObserver extends AtomicReference<Disposable> implements Observer<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            InnerRepeatObserver() {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                RepeatWhenObserver.this.m3704a();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                RepeatWhenObserver.this.m3703b(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(Object obj) {
                RepeatWhenObserver.this.m3702c();
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        RepeatWhenObserver(Observer<? super T> observer, Subject<Throwable> subject, ObservableSource<T> observableSource) {
            this.f18333f = observer;
            this.f18336i = subject;
            this.f18339l = observableSource;
        }

        /* renamed from: a */
        void m3704a() {
            DisposableHelper.dispose(this.f18338k);
            HalfSerializer.m3433a(this.f18333f, this, this.f18335h);
        }

        /* renamed from: b */
        void m3703b(Throwable th) {
            DisposableHelper.dispose(this.f18338k);
            HalfSerializer.m3431c(this.f18333f, th, this, this.f18335h);
        }

        /* renamed from: c */
        void m3702c() {
            m3701d();
        }

        /* renamed from: d */
        void m3701d() {
            if (this.f18334g.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f18340m) {
                        this.f18340m = true;
                        this.f18339l.subscribe(this);
                    }
                    if (this.f18334g.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18338k);
            DisposableHelper.dispose(this.f18337j);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18338k.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            DisposableHelper.dispose(this.f18337j);
            HalfSerializer.m3433a(this.f18333f, this, this.f18335h);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.replace(this.f18338k, null);
            this.f18340m = false;
            this.f18336i.onNext(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            HalfSerializer.m3429e(this.f18333f, t, this, this.f18335h);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this.f18338k, disposable);
        }
    }

    public ObservableRetryWhen(ObservableSource<T> observableSource, Function<? super Observable<Throwable>, ? extends ObservableSource<?>> function) {
        super(observableSource);
        this.f18332g = function;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        Subject<T> d = PublishSubject.m3207f().m3186d();
        try {
            Object apply = this.f18332g.apply(d);
            ObjectHelper.m4363e(apply, "The handler returned a null ObservableSource");
            ObservableSource observableSource = (ObservableSource) apply;
            RepeatWhenObserver repeatWhenObserver = new RepeatWhenObserver(observer, d, this.f17497f);
            observer.onSubscribe(repeatWhenObserver);
            observableSource.subscribe(repeatWhenObserver.f18337j);
            repeatWhenObserver.m3701d();
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
