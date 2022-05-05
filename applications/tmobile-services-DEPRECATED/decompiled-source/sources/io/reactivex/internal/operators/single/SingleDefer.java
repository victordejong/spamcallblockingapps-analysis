package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDefer.class */
public final class SingleDefer<T> extends Single<T> {

    /* renamed from: f */
    final Callable<? extends SingleSource<? extends T>> f18987f;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        try {
            Object call = this.f18987f.call();
            ObjectHelper.m4363e(call, "The singleSupplier returned a null SingleSource");
            ((SingleSource) call).mo4457b(singleObserver);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
