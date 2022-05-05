package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.SerializedObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDebounceTimed.class */
public final class ObservableDebounceTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f17782g;

    /* renamed from: h */
    final TimeUnit f17783h;

    /* renamed from: i */
    final Scheduler f17784i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter.class */
    public static final class DebounceEmitter<T> extends AtomicReference<Disposable> implements Runnable, Disposable {
        private static final long serialVersionUID = 6812032969491025141L;

        /* renamed from: f */
        final T f17785f;

        /* renamed from: g */
        final long f17786g;

        /* renamed from: h */
        final DebounceTimedObserver<T> f17787h;

        /* renamed from: i */
        final AtomicBoolean f17788i = new AtomicBoolean();

        DebounceEmitter(T t, long j, DebounceTimedObserver<T> debounceTimedObserver) {
            this.f17785f = t;
            this.f17786g = j;
            this.f17787h = debounceTimedObserver;
        }

        /* renamed from: a */
        public void m3854a(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17788i.compareAndSet(false, true)) {
                this.f17787h.m3853a(this.f17786g, this.f17785f, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver.class */
    public static final class DebounceTimedObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f17789f;

        /* renamed from: g */
        final long f17790g;

        /* renamed from: h */
        final TimeUnit f17791h;

        /* renamed from: i */
        final Scheduler.Worker f17792i;

        /* renamed from: j */
        Disposable f17793j;

        /* renamed from: k */
        Disposable f17794k;

        /* renamed from: l */
        volatile long f17795l;

        /* renamed from: m */
        boolean f17796m;

        DebounceTimedObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.f17789f = observer;
            this.f17790g = j;
            this.f17791h = timeUnit;
            this.f17792i = worker;
        }

        /* renamed from: a */
        void m3853a(long j, T t, DebounceEmitter<T> debounceEmitter) {
            if (j == this.f17795l) {
                this.f17789f.onNext(t);
                debounceEmitter.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17793j.dispose();
            this.f17792i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17792i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17796m) {
                this.f17796m = true;
                Disposable disposable = this.f17794k;
                if (disposable != null) {
                    disposable.dispose();
                }
                DebounceEmitter debounceEmitter = (DebounceEmitter) disposable;
                if (debounceEmitter != null) {
                    debounceEmitter.run();
                }
                this.f17789f.onComplete();
                this.f17792i.dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17796m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            Disposable disposable = this.f17794k;
            if (disposable != null) {
                disposable.dispose();
            }
            this.f17796m = true;
            this.f17789f.onError(th);
            this.f17792i.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17796m) {
                long j = this.f17795l + 1;
                this.f17795l = j;
                Disposable disposable = this.f17794k;
                if (disposable != null) {
                    disposable.dispose();
                }
                DebounceEmitter debounceEmitter = new DebounceEmitter(t, j, this);
                this.f17794k = debounceEmitter;
                debounceEmitter.m3854a(this.f17792i.mo3228c(debounceEmitter, this.f17790g, this.f17791h));
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17793j, disposable)) {
                this.f17793j = disposable;
                this.f17789f.onSubscribe(this);
            }
        }
    }

    public ObservableDebounceTimed(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler) {
        super(observableSource);
        this.f17782g = j;
        this.f17783h = timeUnit;
        this.f17784i = scheduler;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DebounceTimedObserver(new SerializedObserver(observer), this.f17782g, this.f17783h, this.f17784i.mo3232b()));
    }
}
