package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCache.class */
public final class MaybeCache<T> extends Maybe<T> implements MaybeObserver<T> {

    /* renamed from: j */
    static final CacheDisposable[] f16967j = new CacheDisposable[0];

    /* renamed from: k */
    static final CacheDisposable[] f16968k = new CacheDisposable[0];

    /* renamed from: f */
    final AtomicReference<MaybeSource<T>> f16969f;

    /* renamed from: g */
    final AtomicReference<CacheDisposable<T>[]> f16970g;

    /* renamed from: h */
    T f16971h;

    /* renamed from: i */
    Throwable f16972i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable.class */
    public static final class CacheDisposable<T> extends AtomicReference<MaybeCache<T>> implements Disposable {
        private static final long serialVersionUID = -5791853038359966195L;

        /* renamed from: f */
        final MaybeObserver<? super T> f16973f;

        CacheDisposable(MaybeObserver<? super T> maybeObserver, MaybeCache<T> maybeCache) {
            super(maybeCache);
            this.f16973f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            MaybeCache<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m4009f(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(maybeObserver, this);
        maybeObserver.onSubscribe(cacheDisposable);
        if (m4010e(cacheDisposable)) {
            if (cacheDisposable.isDisposed()) {
                m4009f(cacheDisposable);
                return;
            }
            MaybeSource<T> andSet = this.f16969f.getAndSet(null);
            if (andSet != null) {
                andSet.mo4485b(this);
            }
        } else if (!cacheDisposable.isDisposed()) {
            Throwable th = this.f16972i;
            if (th != null) {
                maybeObserver.onError(th);
                return;
            }
            Object obj = (T) this.f16971h;
            if (obj != null) {
                maybeObserver.onSuccess(obj);
            } else {
                maybeObserver.onComplete();
            }
        }
    }

    /* renamed from: e */
    boolean m4010e(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f16970g.get();
            if (cacheDisposableArr == f16968k) {
                return false;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = cacheDisposable;
        } while (!this.f16970g.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
        return true;
    }

    /* renamed from: f */
    void m4009f(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f16970g.get();
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
                        cacheDisposableArr2 = f16967j;
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
        } while (!this.f16970g.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        CacheDisposable<T>[] andSet;
        for (CacheDisposable<T> cacheDisposable : this.f16970g.getAndSet(f16968k)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f16973f.onComplete();
            }
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onError(Throwable th) {
        CacheDisposable<T>[] andSet;
        this.f16972i = th;
        for (CacheDisposable<T> cacheDisposable : this.f16970g.getAndSet(f16968k)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f16973f.onError(th);
            }
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSubscribe(Disposable disposable) {
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        CacheDisposable<T>[] andSet;
        this.f16971h = t;
        for (CacheDisposable<T> cacheDisposable : this.f16970g.getAndSet(f16968k)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f16973f.onSuccess(t);
            }
        }
    }
}
