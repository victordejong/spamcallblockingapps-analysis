package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDefer.class */
public final class CompletableDefer extends Completable {

    /* renamed from: f */
    final Callable<? extends CompletableSource> f15269f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        try {
            Object call = this.f15269f.call();
            ObjectHelper.m4363e(call, "The completableSupplier returned a null CompletableSource");
            ((CompletableSource) call).mo4514b(completableObserver);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, completableObserver);
        }
    }
}
