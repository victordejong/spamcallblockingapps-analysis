package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDefer.class */
public final class MaybeDefer<T> extends Maybe<T> {

    /* renamed from: f */
    final Callable<? extends MaybeSource<? extends T>> f17011f;

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        try {
            Object call = this.f17011f.call();
            ObjectHelper.m4363e(call, "The maybeSupplier returned a null MaybeSource");
            ((MaybeSource) call).mo4485b(maybeObserver);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, maybeObserver);
        }
    }
}
