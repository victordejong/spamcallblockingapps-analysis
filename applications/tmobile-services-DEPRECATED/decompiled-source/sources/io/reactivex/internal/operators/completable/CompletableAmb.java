package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableAmb.class */
public final class CompletableAmb extends Completable {

    /* renamed from: f */
    private final CompletableSource[] f15224f;

    /* renamed from: g */
    private final Iterable<? extends CompletableSource> f15225g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableAmb$Amb.class */
    static final class Amb implements CompletableObserver {

        /* renamed from: f */
        final AtomicBoolean f15226f;

        /* renamed from: g */
        final CompositeDisposable f15227g;

        /* renamed from: h */
        final CompletableObserver f15228h;

        /* renamed from: i */
        Disposable f15229i;

        Amb(AtomicBoolean atomicBoolean, CompositeDisposable compositeDisposable, CompletableObserver completableObserver) {
            this.f15226f = atomicBoolean;
            this.f15227g = compositeDisposable;
            this.f15228h = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f15226f.compareAndSet(false, true)) {
                this.f15227g.mo4424c(this.f15229i);
                this.f15227g.dispose();
                this.f15228h.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f15226f.compareAndSet(false, true)) {
                this.f15227g.mo4424c(this.f15229i);
                this.f15227g.dispose();
                this.f15228h.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15229i = disposable;
            this.f15227g.mo4425b(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        int i;
        CompletableSource[] completableSourceArr = this.f15224f;
        if (completableSourceArr == null) {
            CompletableSource[] completableSourceArr2 = new CompletableSource[8];
            try {
                Iterator<? extends CompletableSource> it = this.f15225g.iterator();
                int i2 = 0;
                while (true) {
                    completableSourceArr = completableSourceArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    CompletableSource completableSource = (CompletableSource) it.next();
                    if (completableSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), completableObserver);
                        return;
                    }
                    CompletableSource[] completableSourceArr3 = completableSourceArr2;
                    if (i2 == completableSourceArr2.length) {
                        completableSourceArr3 = new CompletableSource[(i2 >> 2) + i2];
                        System.arraycopy(completableSourceArr2, 0, completableSourceArr3, 0, i2);
                    }
                    completableSourceArr3[i2] = completableSource;
                    i2++;
                    completableSourceArr2 = completableSourceArr3;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, completableObserver);
                return;
            }
        } else {
            i = completableSourceArr.length;
        }
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        completableObserver.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i3 = 0; i3 < i; i3++) {
            CompletableSource completableSource2 = completableSourceArr[i3];
            if (!compositeDisposable.isDisposed()) {
                if (completableSource2 == null) {
                    Throwable nullPointerException = new NullPointerException("One of the sources is null");
                    if (atomicBoolean.compareAndSet(false, true)) {
                        compositeDisposable.dispose();
                        completableObserver.onError(nullPointerException);
                        return;
                    }
                    RxJavaPlugins.m3354t(nullPointerException);
                    return;
                }
                completableSource2.mo4514b(new Amb(atomicBoolean, compositeDisposable, completableObserver));
            } else {
                return;
            }
        }
        if (i == 0) {
            completableObserver.onComplete();
        }
    }
}
