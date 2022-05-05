package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.SerializedObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableThrottleFirstTimed.class */
public final class ObservableThrottleFirstTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18539g;

    /* renamed from: h */
    final TimeUnit f18540h;

    /* renamed from: i */
    final Scheduler f18541i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver.class */
    static final class DebounceTimedObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = 786994795061867455L;

        /* renamed from: f */
        final Observer<? super T> f18542f;

        /* renamed from: g */
        final long f18543g;

        /* renamed from: h */
        final TimeUnit f18544h;

        /* renamed from: i */
        final Scheduler.Worker f18545i;

        /* renamed from: j */
        Disposable f18546j;

        /* renamed from: k */
        volatile boolean f18547k;

        /* renamed from: l */
        boolean f18548l;

        DebounceTimedObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.f18542f = observer;
            this.f18543g = j;
            this.f18544h = timeUnit;
            this.f18545i = worker;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18546j.dispose();
            this.f18545i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18545i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18548l) {
                this.f18548l = true;
                this.f18542f.onComplete();
                this.f18545i.dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18548l) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18548l = true;
            this.f18542f.onError(th);
            this.f18545i.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18547k && !this.f18548l) {
                this.f18547k = true;
                this.f18542f.onNext(t);
                Disposable disposable = get();
                if (disposable != null) {
                    disposable.dispose();
                }
                DisposableHelper.replace(this, this.f18545i.mo3228c(this, this.f18543g, this.f18544h));
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18546j, disposable)) {
                this.f18546j = disposable;
                this.f18542f.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18547k = false;
        }
    }

    public ObservableThrottleFirstTimed(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler) {
        super(observableSource);
        this.f18539g = j;
        this.f18540h = timeUnit;
        this.f18541i = scheduler;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DebounceTimedObserver(new SerializedObserver(observer), this.f18539g, this.f18540h, this.f18541i.mo3232b()));
    }
}
