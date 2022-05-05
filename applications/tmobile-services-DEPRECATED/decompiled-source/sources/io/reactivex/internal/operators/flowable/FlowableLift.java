package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableOperator;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLift.class */
public final class FlowableLift<R, T> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final FlowableOperator<? extends R, ? super T> f16141h;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super R> subscriber) {
        try {
            Subscriber<? super Object> a = this.f16141h.m4489a(subscriber);
            if (a != null) {
                this.f15411g.mo5c(a);
                return;
            }
            throw new NullPointerException("Operator " + this.f16141h + " returned a null Subscriber");
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
