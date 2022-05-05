package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCache.class */
public final class ObservableCache<T> extends AbstractObservableWithUpstream<T, T> implements Observer<T> {

    /* renamed from: p */
    static final CacheDisposable[] f17646p = new CacheDisposable[0];

    /* renamed from: q */
    static final CacheDisposable[] f17647q = new CacheDisposable[0];

    /* renamed from: h */
    final int f17649h;

    /* renamed from: j */
    volatile long f17651j;

    /* renamed from: k */
    final Node<T> f17652k;

    /* renamed from: l */
    Node<T> f17653l;

    /* renamed from: m */
    int f17654m;

    /* renamed from: n */
    Throwable f17655n;

    /* renamed from: o */
    volatile boolean f17656o;

    /* renamed from: g */
    final AtomicBoolean f17648g = new AtomicBoolean();

    /* renamed from: i */
    final AtomicReference<CacheDisposable<T>[]> f17650i = new AtomicReference<>(f17646p);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCache$CacheDisposable.class */
    public static final class CacheDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 6770240836423125754L;

        /* renamed from: f */
        final Observer<? super T> f17657f;

        /* renamed from: g */
        final ObservableCache<T> f17658g;

        /* renamed from: h */
        Node<T> f17659h;

        /* renamed from: i */
        int f17660i;

        /* renamed from: j */
        long f17661j;

        /* renamed from: k */
        volatile boolean f17662k;

        CacheDisposable(Observer<? super T> observer, ObservableCache<T> observableCache) {
            this.f17657f = observer;
            this.f17658g = observableCache;
            this.f17659h = observableCache.f17652k;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f17662k) {
                this.f17662k = true;
                this.f17658g.m3882e(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17662k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCache$Node.class */
    public static final class Node<T> {

        /* renamed from: a */
        final T[] f17663a;

        /* renamed from: b */
        volatile Node<T> f17664b;

        Node(int i) {
            this.f17663a = (T[]) new Object[i];
        }
    }

    public ObservableCache(Observable<T> observable, int i) {
        super(observable);
        this.f17649h = i;
        Node<T> node = new Node<>(i);
        this.f17652k = node;
        this.f17653l = node;
    }

    /* renamed from: d */
    void m3883d(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f17650i.get();
            if (cacheDisposableArr != f17647q) {
                int length = cacheDisposableArr.length;
                cacheDisposableArr2 = new CacheDisposable[length + 1];
                System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
                cacheDisposableArr2[length] = cacheDisposable;
            } else {
                return;
            }
        } while (!this.f17650i.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
    }

    /* renamed from: e */
    void m3882e(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f17650i.get();
            int length = cacheDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (cacheDisposableArr[i2] == cacheDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        cacheDisposableArr2 = f17646p;
                    } else {
                        cacheDisposableArr2 = new CacheDisposable[length - 1];
                        System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, i);
                        System.arraycopy(cacheDisposableArr, i + 1, cacheDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f17650i.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
    }

    /* renamed from: f */
    void m3881f(CacheDisposable<T> cacheDisposable) {
        if (cacheDisposable.getAndIncrement() == 0) {
            long j = cacheDisposable.f17661j;
            int i = cacheDisposable.f17660i;
            Node<T> node = cacheDisposable.f17659h;
            Observer<? super T> observer = cacheDisposable.f17657f;
            int i2 = this.f17649h;
            int i3 = 1;
            while (!cacheDisposable.f17662k) {
                boolean z = this.f17656o;
                boolean z2 = this.f17651j == j;
                if (z && z2) {
                    cacheDisposable.f17659h = null;
                    Throwable th = this.f17655n;
                    if (th != null) {
                        observer.onError(th);
                        return;
                    } else {
                        observer.onComplete();
                        return;
                    }
                } else if (!z2) {
                    int i4 = i;
                    Node<T> node2 = node;
                    if (i == i2) {
                        node2 = node.f17664b;
                        i4 = 0;
                    }
                    observer.onNext((Object) node2.f17663a[i4]);
                    i = i4 + 1;
                    j++;
                    node = node2;
                } else {
                    cacheDisposable.f17661j = j;
                    cacheDisposable.f17660i = i;
                    cacheDisposable.f17659h = node;
                    int addAndGet = cacheDisposable.addAndGet(-i3);
                    i3 = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            }
            cacheDisposable.f17659h = null;
        }
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        this.f17656o = true;
        for (CacheDisposable<T> cacheDisposable : this.f17650i.getAndSet(f17647q)) {
            m3881f(cacheDisposable);
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.f17655n = th;
        this.f17656o = true;
        for (CacheDisposable<T> cacheDisposable : this.f17650i.getAndSet(f17647q)) {
            m3881f(cacheDisposable);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        int i = this.f17654m;
        if (i == this.f17649h) {
            Node<T> node = new Node<>(i);
            node.f17663a[0] = t;
            this.f17654m = 1;
            this.f17653l.f17664b = node;
            this.f17653l = node;
        } else {
            this.f17653l.f17663a[i] = t;
            this.f17654m = i + 1;
        }
        this.f17651j++;
        for (CacheDisposable<T> cacheDisposable : this.f17650i.get()) {
            m3881f(cacheDisposable);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(observer, this);
        observer.onSubscribe(cacheDisposable);
        m3883d(cacheDisposable);
        if (this.f17648g.get() || !this.f17648g.compareAndSet(false, true)) {
            m3881f(cacheDisposable);
        } else {
            this.f17497f.subscribe(this);
        }
    }
}
