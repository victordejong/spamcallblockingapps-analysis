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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableAmb.class */
public final class CompletableAmb extends Completable {
    private final CompletableSource[] sources;
    private final Iterable<? extends CompletableSource> sourcesIterable;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableAmb$Amb.class */
    static final class Amb implements CompletableObserver {
        private final AtomicBoolean once;

        /* renamed from: s */
        private final CompletableObserver f357s;
        private final CompositeDisposable set;

        Amb(AtomicBoolean atomicBoolean, CompositeDisposable compositeDisposable, CompletableObserver completableObserver) {
            this.once = atomicBoolean;
            this.set = compositeDisposable;
            this.f357s = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.once.compareAndSet(false, true)) {
                this.set.dispose();
                this.f357s.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                this.set.dispose();
                this.f357s.onError(th);
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.set.add(disposable);
        }
    }

    public CompletableAmb(CompletableSource[] completableSourceArr, Iterable<? extends CompletableSource> iterable) {
        this.sources = completableSourceArr;
        this.sourcesIterable = iterable;
    }

    @Override // io.reactivex.Completable
    public void subscribeActual(CompletableObserver completableObserver) {
        int i;
        CompletableSource[] completableSourceArr = this.sources;
        if (completableSourceArr == null) {
            CompletableSource[] completableSourceArr2 = new CompletableSource[8];
            try {
                Iterator<? extends CompletableSource> it = this.sourcesIterable.iterator();
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
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, completableObserver);
                return;
            }
        } else {
            i = completableSourceArr.length;
        }
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        completableObserver.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        Amb amb = new Amb(atomicBoolean, compositeDisposable, completableObserver);
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
                    RxJavaPlugins.onError(nullPointerException);
                    return;
                }
                completableSource2.subscribe(amb);
            } else {
                return;
            }
        }
        if (i == 0) {
            completableObserver.onComplete();
        }
    }
}
