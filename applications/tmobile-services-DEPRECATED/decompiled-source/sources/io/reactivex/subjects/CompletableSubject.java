package io.reactivex.subjects;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/CompletableSubject.class */
public final class CompletableSubject extends Completable implements CompletableObserver {

    /* renamed from: i */
    static final CompletableDisposable[] f19713i = new CompletableDisposable[0];

    /* renamed from: j */
    static final CompletableDisposable[] f19714j = new CompletableDisposable[0];

    /* renamed from: h */
    Throwable f19717h;

    /* renamed from: g */
    final AtomicBoolean f19716g = new AtomicBoolean();

    /* renamed from: f */
    final AtomicReference<CompletableDisposable[]> f19715f = new AtomicReference<>(f19713i);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/CompletableSubject$CompletableDisposable.class */
    public static final class CompletableDisposable extends AtomicReference<CompletableSubject> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;

        /* renamed from: f */
        final CompletableObserver f19718f;

        CompletableDisposable(CompletableObserver completableObserver, CompletableSubject completableSubject) {
            this.f19718f = completableObserver;
            lazySet(completableSubject);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            CompletableSubject andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m3212i(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    CompletableSubject() {
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        CompletableDisposable completableDisposable = new CompletableDisposable(completableObserver, this);
        completableObserver.onSubscribe(completableDisposable);
        if (!m3213h(completableDisposable)) {
            Throwable th = this.f19717h;
            if (th != null) {
                completableObserver.onError(th);
            } else {
                completableObserver.onComplete();
            }
        } else if (completableDisposable.isDisposed()) {
            m3212i(completableDisposable);
        }
    }

    /* renamed from: h */
    boolean m3213h(CompletableDisposable completableDisposable) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f19715f.get();
            if (completableDisposableArr == f19714j) {
                return false;
            }
            int length = completableDisposableArr.length;
            completableDisposableArr2 = new CompletableDisposable[length + 1];
            System.arraycopy(completableDisposableArr, 0, completableDisposableArr2, 0, length);
            completableDisposableArr2[length] = completableDisposable;
        } while (!this.f19715f.compareAndSet(completableDisposableArr, completableDisposableArr2));
        return true;
    }

    /* renamed from: i */
    void m3212i(CompletableDisposable completableDisposable) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f19715f.get();
            int length = completableDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (completableDisposableArr[i2] == completableDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        completableDisposableArr2 = f19713i;
                    } else {
                        completableDisposableArr2 = new CompletableDisposable[length - 1];
                        System.arraycopy(completableDisposableArr, 0, completableDisposableArr2, 0, i);
                        System.arraycopy(completableDisposableArr, i + 1, completableDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19715f.compareAndSet(completableDisposableArr, completableDisposableArr2));
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        if (this.f19716g.compareAndSet(false, true)) {
            for (CompletableDisposable completableDisposable : this.f19715f.getAndSet(f19714j)) {
                completableDisposable.f19718f.onComplete();
            }
        }
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19716g.compareAndSet(false, true)) {
            this.f19717h = th;
            for (CompletableDisposable completableDisposable : this.f19715f.getAndSet(f19714j)) {
                completableDisposable.f19718f.onError(th);
            }
            return;
        }
        RxJavaPlugins.m3354t(th);
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
        if (this.f19715f.get() == f19714j) {
            disposable.dispose();
        }
    }
}
