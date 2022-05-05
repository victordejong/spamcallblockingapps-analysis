package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleError.class */
public final class SingleError<T> extends Single<T> {

    /* renamed from: f */
    final Callable<? extends Throwable> f19074f;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        Throwable th;
        try {
            Object call = this.f19074f.call();
            ObjectHelper.m4363e(call, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
            th = (Throwable) call;
        } catch (Throwable th2) {
            th = th2;
            Exceptions.m4428b(th);
        }
        EmptyDisposable.error(th, singleObserver);
    }
}
