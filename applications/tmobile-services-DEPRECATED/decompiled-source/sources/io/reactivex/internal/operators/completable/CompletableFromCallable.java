package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromCallable.class */
public final class CompletableFromCallable extends Completable {

    /* renamed from: f */
    final Callable<?> f15302f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        Disposable b = Disposables.m4440b();
        completableObserver.onSubscribe(b);
        try {
            this.f15302f.call();
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
