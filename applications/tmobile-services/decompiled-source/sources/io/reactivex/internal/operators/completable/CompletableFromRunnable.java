package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromRunnable.class */
public final class CompletableFromRunnable extends Completable {

    /* renamed from: f */
    final Runnable f15308f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        Disposable b = Disposables.m4440b();
        completableObserver.onSubscribe(b);
        try {
            this.f15308f.run();
            if (!b.isDisposed()) {
                completableObserver.onComplete();
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            if (!b.isDisposed()) {
                completableObserver.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }
    }
}
