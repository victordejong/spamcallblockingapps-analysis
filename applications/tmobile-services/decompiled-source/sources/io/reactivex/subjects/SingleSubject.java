package io.reactivex.subjects;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/SingleSubject.class */
public final class SingleSubject<T> extends Single<T> implements SingleObserver<T> {

    /* renamed from: j */
    static final SingleDisposable[] f19765j = new SingleDisposable[0];

    /* renamed from: k */
    static final SingleDisposable[] f19766k = new SingleDisposable[0];

    /* renamed from: h */
    T f19769h;

    /* renamed from: i */
    Throwable f19770i;

    /* renamed from: g */
    final AtomicBoolean f19768g = new AtomicBoolean();

    /* renamed from: f */
    final AtomicReference<SingleDisposable<T>[]> f19767f = new AtomicReference<>(f19765j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/SingleSubject$SingleDisposable.class */
    public static final class SingleDisposable<T> extends AtomicReference<SingleSubject<T>> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;

        /* renamed from: f */
        final SingleObserver<? super T> f19771f;

        SingleDisposable(SingleObserver<? super T> singleObserver, SingleSubject<T> singleSubject) {
            this.f19771f = singleObserver;
            lazySet(singleSubject);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SingleSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m3187q(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    SingleSubject() {
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(@NonNull SingleObserver<? super T> singleObserver) {
        SingleDisposable<T> singleDisposable = new SingleDisposable<>(singleObserver, this);
        singleObserver.onSubscribe(singleDisposable);
        if (!m3188p(singleDisposable)) {
            Throwable th = this.f19770i;
            if (th != null) {
                singleObserver.onError(th);
            } else {
                singleObserver.onSuccess((T) this.f19769h);
            }
        } else if (singleDisposable.isDisposed()) {
            m3187q(singleDisposable);
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onError(@NonNull Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19768g.compareAndSet(false, true)) {
            this.f19770i = th;
            for (SingleDisposable<T> singleDisposable : this.f19767f.getAndSet(f19766k)) {
                singleDisposable.f19771f.onError(th);
            }
            return;
        }
        RxJavaPlugins.m3354t(th);
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(@NonNull Disposable disposable) {
        if (this.f19767f.get() == f19766k) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(@NonNull T t) {
        ObjectHelper.m4363e(t, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19768g.compareAndSet(false, true)) {
            this.f19769h = t;
            for (SingleDisposable<T> singleDisposable : this.f19767f.getAndSet(f19766k)) {
                singleDisposable.f19771f.onSuccess(t);
            }
        }
    }

    /* renamed from: p */
    boolean m3188p(@NonNull SingleDisposable<T> singleDisposable) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable<T>[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f19767f.get();
            if (singleDisposableArr == f19766k) {
                return false;
            }
            int length = singleDisposableArr.length;
            singleDisposableArr2 = new SingleDisposable[length + 1];
            System.arraycopy(singleDisposableArr, 0, singleDisposableArr2, 0, length);
            singleDisposableArr2[length] = singleDisposable;
        } while (!this.f19767f.compareAndSet(singleDisposableArr, singleDisposableArr2));
        return true;
    }

    /* renamed from: q */
    void m3187q(@NonNull SingleDisposable<T> singleDisposable) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable<T>[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f19767f.get();
            int length = singleDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (singleDisposableArr[i2] == singleDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        singleDisposableArr2 = f19765j;
                    } else {
                        singleDisposableArr2 = new SingleDisposable[length - 1];
                        System.arraycopy(singleDisposableArr, 0, singleDisposableArr2, 0, i);
                        System.arraycopy(singleDisposableArr, i + 1, singleDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19767f.compareAndSet(singleDisposableArr, singleDisposableArr2));
    }
}
