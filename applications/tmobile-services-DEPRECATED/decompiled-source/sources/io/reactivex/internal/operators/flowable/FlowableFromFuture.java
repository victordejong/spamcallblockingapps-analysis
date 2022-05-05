package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromFuture.class */
public final class FlowableFromFuture<T> extends Flowable<T> {

    /* renamed from: g */
    final Future<? extends T> f15972g;

    /* renamed from: h */
    final long f15973h;

    /* renamed from: i */
    final TimeUnit f15974i;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(subscriber);
        subscriber.onSubscribe(deferredScalarSubscription);
        try {
            Object obj = this.f15974i != null ? this.f15972g.get(this.f15973h, this.f15974i) : this.f15972g.get();
            if (obj == null) {
                subscriber.onError(new NullPointerException("The future returned null"));
            } else {
                deferredScalarSubscription.m3470d(obj);
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            if (!deferredScalarSubscription.m3469f()) {
                subscriber.onError(th);
            }
        }
    }
}
