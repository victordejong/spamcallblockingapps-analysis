package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableOnErrorComplete.class */
public final class CompletableOnErrorComplete extends Completable {

    /* renamed from: f */
    final CompletableSource f15347f;

    /* renamed from: g */
    final Predicate<? super Throwable> f15348g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError.class */
    final class OnError implements CompletableObserver {

        /* renamed from: f */
        private final CompletableObserver f15349f;

        OnError(CompletableObserver completableObserver) {
            this.f15349f = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15349f.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            try {
                if (CompletableOnErrorComplete.this.f15348g.mo3191a(th)) {
                    this.f15349f.onComplete();
                } else {
                    this.f15349f.onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f15349f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15349f.onSubscribe(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15347f.mo4514b(new OnError(completableObserver));
    }
}
