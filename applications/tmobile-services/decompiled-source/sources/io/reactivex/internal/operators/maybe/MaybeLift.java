package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeOperator;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeLift.class */
public final class MaybeLift<T, R> extends AbstractMaybeWithUpstream<T, R> {

    /* renamed from: g */
    final MaybeOperator<? extends R, ? super T> f17156g;

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        try {
            MaybeObserver<? super Object> a = this.f17156g.m4486a(maybeObserver);
            ObjectHelper.m4363e(a, "The operator returned a null MaybeObserver");
            this.f16960f.mo4485b(a);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, maybeObserver);
        }
    }
}
