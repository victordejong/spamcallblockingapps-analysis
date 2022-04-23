package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOperator;
import io.reactivex.SingleSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleLift.class */
public final class SingleLift<T, R> extends Single<R> {

    /* renamed from: f */
    final SingleSource<T> f19128f;

    /* renamed from: g */
    final SingleOperator<? extends R, ? super T> f19129g;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        try {
            SingleObserver<? super Object> a = this.f19129g.m4458a(singleObserver);
            ObjectHelper.m4363e(a, "The onLift returned a null SingleObserver");
            this.f19128f.mo4457b(a);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
