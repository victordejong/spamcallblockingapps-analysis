package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMergeArray.class */
public final class CompletableMergeArray extends Completable {

    /* renamed from: f */
    final CompletableSource[] f15328f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver.class */
    static final class InnerCompletableObserver extends AtomicInteger implements CompletableObserver {
        private static final long serialVersionUID = -8360547806504310570L;

        /* renamed from: f */
        final CompletableObserver f15329f;

        /* renamed from: g */
        final AtomicBoolean f15330g;

        /* renamed from: h */
        final CompositeDisposable f15331h;

        InnerCompletableObserver(CompletableObserver completableObserver, AtomicBoolean atomicBoolean, CompositeDisposable compositeDisposable, int i) {
            this.f15329f = completableObserver;
            this.f15330g = atomicBoolean;
            this.f15331h = compositeDisposable;
            lazySet(i);
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (decrementAndGet() == 0 && this.f15330g.compareAndSet(false, true)) {
                this.f15329f.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15331h.dispose();
            if (this.f15330g.compareAndSet(false, true)) {
                this.f15329f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15331h.mo4425b(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        CompletableSource[] completableSourceArr;
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        InnerCompletableObserver innerCompletableObserver = new InnerCompletableObserver(completableObserver, new AtomicBoolean(), compositeDisposable, this.f15328f.length + 1);
        completableObserver.onSubscribe(compositeDisposable);
        for (CompletableSource completableSource : this.f15328f) {
            if (!compositeDisposable.isDisposed()) {
                if (completableSource == null) {
                    compositeDisposable.dispose();
                    innerCompletableObserver.onError(new NullPointerException("A completable source is null"));
                    return;
                }
                completableSource.mo4514b(innerCompletableObserver);
            } else {
                return;
            }
        }
        innerCompletableObserver.onComplete();
    }
}
