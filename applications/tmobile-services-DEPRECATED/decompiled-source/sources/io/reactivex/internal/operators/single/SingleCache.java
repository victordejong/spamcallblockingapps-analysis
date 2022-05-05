package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleCache.class */
public final class SingleCache<T> extends Single<T> implements SingleObserver<T> {

    /* renamed from: k */
    static final CacheDisposable[] f18971k = new CacheDisposable[0];

    /* renamed from: l */
    static final CacheDisposable[] f18972l = new CacheDisposable[0];

    /* renamed from: f */
    final SingleSource<? extends T> f18973f;

    /* renamed from: g */
    final AtomicInteger f18974g;

    /* renamed from: h */
    final AtomicReference<CacheDisposable<T>[]> f18975h;

    /* renamed from: i */
    T f18976i;

    /* renamed from: j */
    Throwable f18977j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleCache$CacheDisposable.class */
    public static final class CacheDisposable<T> extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 7514387411091976596L;

        /* renamed from: f */
        final SingleObserver<? super T> f18978f;

        /* renamed from: g */
        final SingleCache<T> f18979g;

        CacheDisposable(SingleObserver<? super T> singleObserver, SingleCache<T> singleCache) {
            this.f18978f = singleObserver;
            this.f18979g = singleCache;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f18979g.m3588q(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(singleObserver, this);
        singleObserver.onSubscribe(cacheDisposable);
        if (m3589p(cacheDisposable)) {
            if (cacheDisposable.isDisposed()) {
                m3588q(cacheDisposable);
            }
            if (this.f18974g.getAndIncrement() == 0) {
                this.f18973f.mo4457b(this);
                return;
            }
            return;
        }
        Throwable th = this.f18977j;
        if (th != null) {
            singleObserver.onError(th);
        } else {
            singleObserver.onSuccess((T) this.f18976i);
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        CacheDisposable<T>[] andSet;
        this.f18977j = th;
        for (CacheDisposable<T> cacheDisposable : this.f18975h.getAndSet(f18972l)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f18978f.onError(th);
            }
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        CacheDisposable<T>[] andSet;
        this.f18976i = t;
        for (CacheDisposable<T> cacheDisposable : this.f18975h.getAndSet(f18972l)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f18978f.onSuccess(t);
            }
        }
    }

    /* renamed from: p */
    boolean m3589p(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f18975h.get();
            if (cacheDisposableArr == f18972l) {
                return false;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = cacheDisposable;
        } while (!this.f18975h.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
        return true;
    }

    /* renamed from: q */
    void m3588q(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f18975h.get();
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
                        cacheDisposableArr2 = f18971k;
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
        } while (!this.f18975h.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
    }
}
