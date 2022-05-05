package io.reactivex.internal.operators.flowable;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.flowable.FlowableReduceSeedSingle;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduceWithSingle.class */
public final class FlowableReduceWithSingle<T, R> extends Single<R> {

    /* renamed from: f */
    final Publisher<T> f16360f;

    /* renamed from: g */
    final Callable<R> f16361g;

    /* renamed from: h */
    final BiFunction<R, ? super T, R> f16362h;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        try {
            R call = this.f16361g.call();
            ObjectHelper.m4363e(call, "The seedSupplier returned a null value");
            this.f16360f.mo5c(new FlowableReduceSeedSingle.ReduceSeedObserver(singleObserver, this.f16362h, call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
