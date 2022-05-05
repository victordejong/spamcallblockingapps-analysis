package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcatArray.class */
public final class CompletableConcatArray extends Completable {

    /* renamed from: f */
    final CompletableSource[] f15258f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver.class */
    static final class ConcatInnerObserver extends AtomicInteger implements CompletableObserver {
        private static final long serialVersionUID = -7965400327305809232L;

        /* renamed from: f */
        final CompletableObserver f15259f;

        /* renamed from: g */
        final CompletableSource[] f15260g;

        /* renamed from: h */
        int f15261h;

        /* renamed from: i */
        final SequentialDisposable f15262i = new SequentialDisposable();

        ConcatInnerObserver(CompletableObserver completableObserver, CompletableSource[] completableSourceArr) {
            this.f15259f = completableObserver;
            this.f15260g = completableSourceArr;
        }

        /* renamed from: a */
        void m4333a() {
            if (!this.f15262i.isDisposed() && getAndIncrement() == 0) {
                CompletableSource[] completableSourceArr = this.f15260g;
                while (!this.f15262i.isDisposed()) {
                    int i = this.f15261h;
                    this.f15261h = i + 1;
                    if (i == completableSourceArr.length) {
                        this.f15259f.onComplete();
                        return;
                    }
                    completableSourceArr[i].mo4514b(this);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            m4333a();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15259f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15262i.m4422a(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        ConcatInnerObserver concatInnerObserver = new ConcatInnerObserver(completableObserver, this.f15258f);
        completableObserver.onSubscribe(concatInnerObserver.f15262i);
        concatInnerObserver.m4333a();
    }
}
