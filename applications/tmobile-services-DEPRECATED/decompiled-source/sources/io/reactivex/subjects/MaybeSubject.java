package io.reactivex.subjects;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/MaybeSubject.class */
public final class MaybeSubject<T> extends Maybe<T> implements MaybeObserver<T> {

    /* renamed from: j */
    static final MaybeDisposable[] f19719j = new MaybeDisposable[0];

    /* renamed from: k */
    static final MaybeDisposable[] f19720k = new MaybeDisposable[0];

    /* renamed from: h */
    T f19723h;

    /* renamed from: i */
    Throwable f19724i;

    /* renamed from: g */
    final AtomicBoolean f19722g = new AtomicBoolean();

    /* renamed from: f */
    final AtomicReference<MaybeDisposable<T>[]> f19721f = new AtomicReference<>(f19719j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/MaybeSubject$MaybeDisposable.class */
    public static final class MaybeDisposable<T> extends AtomicReference<MaybeSubject<T>> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;

        /* renamed from: f */
        final MaybeObserver<? super T> f19725f;

        MaybeDisposable(MaybeObserver<? super T> maybeObserver, MaybeSubject<T> maybeSubject) {
            this.f19725f = maybeObserver;
            lazySet(maybeSubject);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            MaybeSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m3209f(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    MaybeSubject() {
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        MaybeDisposable<T> maybeDisposable = new MaybeDisposable<>(maybeObserver, this);
        maybeObserver.onSubscribe(maybeDisposable);
        if (!m3210e(maybeDisposable)) {
            Throwable th = this.f19724i;
            if (th != null) {
                maybeObserver.onError(th);
                return;
            }
            Object obj = (T) this.f19723h;
            if (obj == null) {
                maybeObserver.onComplete();
            } else {
                maybeObserver.onSuccess(obj);
            }
        } else if (maybeDisposable.isDisposed()) {
            m3209f(maybeDisposable);
        }
    }

    /* renamed from: e */
    boolean m3210e(MaybeDisposable<T> maybeDisposable) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable<T>[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f19721f.get();
            if (maybeDisposableArr == f19720k) {
                return false;
            }
            int length = maybeDisposableArr.length;
            maybeDisposableArr2 = new MaybeDisposable[length + 1];
            System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr2, 0, length);
            maybeDisposableArr2[length] = maybeDisposable;
        } while (!this.f19721f.compareAndSet(maybeDisposableArr, maybeDisposableArr2));
        return true;
    }

    /* renamed from: f */
    void m3209f(MaybeDisposable<T> maybeDisposable) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable<T>[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f19721f.get();
            int length = maybeDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (maybeDisposableArr[i2] == maybeDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        maybeDisposableArr2 = f19719j;
                    } else {
                        maybeDisposableArr2 = new MaybeDisposable[length - 1];
                        System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr2, 0, i);
                        System.arraycopy(maybeDisposableArr, i + 1, maybeDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19721f.compareAndSet(maybeDisposableArr, maybeDisposableArr2));
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        if (this.f19722g.compareAndSet(false, true)) {
            for (MaybeDisposable<T> maybeDisposable : this.f19721f.getAndSet(f19720k)) {
                maybeDisposable.f19725f.onComplete();
            }
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19722g.compareAndSet(false, true)) {
            this.f19724i = th;
            for (MaybeDisposable<T> maybeDisposable : this.f19721f.getAndSet(f19720k)) {
                maybeDisposable.f19725f.onError(th);
            }
            return;
        }
        RxJavaPlugins.m3354t(th);
    }

    @Override // io.reactivex.MaybeObserver
    public void onSubscribe(Disposable disposable) {
        if (this.f19721f.get() == f19720k) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        ObjectHelper.m4363e(t, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19722g.compareAndSet(false, true)) {
            this.f19723h = t;
            for (MaybeDisposable<T> maybeDisposable : this.f19721f.getAndSet(f19720k)) {
                maybeDisposable.f19725f.onSuccess(t);
            }
        }
    }
}
