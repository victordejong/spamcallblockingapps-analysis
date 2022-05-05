package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.observables.ConnectableObservable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRefCount.class */
public final class ObservableRefCount<T> extends Observable<T> {

    /* renamed from: f */
    final ConnectableObservable<T> f18248f;

    /* renamed from: g */
    final int f18249g;

    /* renamed from: h */
    final long f18250h;

    /* renamed from: i */
    final TimeUnit f18251i;

    /* renamed from: j */
    final Scheduler f18252j;

    /* renamed from: k */
    RefConnection f18253k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRefCount$RefConnection.class */
    public static final class RefConnection extends AtomicReference<Disposable> implements Runnable, Consumer<Disposable> {
        private static final long serialVersionUID = -4552101107598366241L;

        /* renamed from: f */
        final ObservableRefCount<?> f18254f;

        /* renamed from: g */
        Disposable f18255g;

        /* renamed from: h */
        long f18256h;

        /* renamed from: i */
        boolean f18257i;

        /* renamed from: j */
        boolean f18258j;

        RefConnection(ObservableRefCount<?> observableRefCount) {
            this.f18254f = observableRefCount;
        }

        /* renamed from: a */
        public void accept(Disposable disposable) throws Exception {
            DisposableHelper.replace(this, disposable);
            synchronized (this.f18254f) {
                if (this.f18258j) {
                    ((ResettableConnectable) this.f18254f.f18248f).mo3733b(disposable);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18254f.m3741h(this);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver.class */
    static final class RefCountObserver<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -7419642935409022375L;

        /* renamed from: f */
        final Observer<? super T> f18259f;

        /* renamed from: g */
        final ObservableRefCount<T> f18260g;

        /* renamed from: h */
        final RefConnection f18261h;

        /* renamed from: i */
        Disposable f18262i;

        RefCountObserver(Observer<? super T> observer, ObservableRefCount<T> observableRefCount, RefConnection refConnection) {
            this.f18259f = observer;
            this.f18260g = observableRefCount;
            this.f18261h = refConnection;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18262i.dispose();
            if (compareAndSet(false, true)) {
                this.f18260g.m3745d(this.f18261h);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18262i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f18260g.m3742g(this.f18261h);
                this.f18259f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f18260g.m3742g(this.f18261h);
                this.f18259f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18259f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18262i, disposable)) {
                this.f18262i = disposable;
                this.f18259f.onSubscribe(this);
            }
        }
    }

    public ObservableRefCount(ConnectableObservable<T> connectableObservable) {
        this(connectableObservable, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    public ObservableRefCount(ConnectableObservable<T> connectableObservable, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.f18248f = connectableObservable;
        this.f18249g = i;
        this.f18250h = j;
        this.f18251i = timeUnit;
        this.f18252j = scheduler;
    }

    /* renamed from: d */
    void m3745d(RefConnection refConnection) {
        synchronized (this) {
            if (this.f18253k != null && this.f18253k == refConnection) {
                long j = refConnection.f18256h - 1;
                refConnection.f18256h = j;
                if (j == 0 && refConnection.f18257i) {
                    if (this.f18250h == 0) {
                        m3741h(refConnection);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    refConnection.f18255g = sequentialDisposable;
                    sequentialDisposable.m4422a(this.f18252j.mo3498e(refConnection, this.f18250h, this.f18251i));
                }
            }
        }
    }

    /* renamed from: e */
    void m3744e(RefConnection refConnection) {
        Disposable disposable = refConnection.f18255g;
        if (disposable != null) {
            disposable.dispose();
            refConnection.f18255g = null;
        }
    }

    /* renamed from: f */
    void m3743f(RefConnection refConnection) {
        ConnectableObservable<T> connectableObservable = this.f18248f;
        if (connectableObservable instanceof Disposable) {
            ((Disposable) connectableObservable).dispose();
        } else if (connectableObservable instanceof ResettableConnectable) {
            ((ResettableConnectable) connectableObservable).mo3733b(refConnection.get());
        }
    }

    /* renamed from: g */
    void m3742g(RefConnection refConnection) {
        synchronized (this) {
            if (this.f18248f instanceof ObservablePublishClassic) {
                if (this.f18253k != null && this.f18253k == refConnection) {
                    this.f18253k = null;
                    m3744e(refConnection);
                }
                long j = refConnection.f18256h - 1;
                refConnection.f18256h = j;
                if (j == 0) {
                    m3743f(refConnection);
                }
            } else if (this.f18253k != null && this.f18253k == refConnection) {
                m3744e(refConnection);
                long j2 = refConnection.f18256h - 1;
                refConnection.f18256h = j2;
                if (j2 == 0) {
                    this.f18253k = null;
                    m3743f(refConnection);
                }
            }
        }
    }

    /* renamed from: h */
    void m3741h(RefConnection refConnection) {
        synchronized (this) {
            if (refConnection.f18256h == 0 && refConnection == this.f18253k) {
                this.f18253k = null;
                Disposable disposable = refConnection.get();
                DisposableHelper.dispose(refConnection);
                if (this.f18248f instanceof Disposable) {
                    ((Disposable) this.f18248f).dispose();
                } else if (this.f18248f instanceof ResettableConnectable) {
                    if (disposable == null) {
                        refConnection.f18258j = true;
                    } else {
                        ((ResettableConnectable) this.f18248f).mo3733b(disposable);
                    }
                }
            }
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        RefConnection refConnection;
        boolean z;
        synchronized (this) {
            RefConnection refConnection2 = this.f18253k;
            refConnection = refConnection2;
            if (refConnection2 == null) {
                refConnection = new RefConnection(this);
                this.f18253k = refConnection;
            }
            long j = refConnection.f18256h;
            if (j == 0 && refConnection.f18255g != null) {
                refConnection.f18255g.dispose();
            }
            long j2 = j + 1;
            refConnection.f18256h = j2;
            z = true;
            if (refConnection.f18257i || j2 != this.f18249g) {
                z = false;
            } else {
                refConnection.f18257i = true;
            }
        }
        this.f18248f.subscribe(new RefCountObserver(observer, this, refConnection));
        if (z) {
            this.f18248f.mo3394d(refConnection);
        }
    }
}
