package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromCallable.class */
public final class FlowableFromCallable<T> extends Flowable<T> implements Callable<T> {

    /* renamed from: g */
    final Callable<? extends T> f15971g;

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        T t = (T) this.f15971g.call();
        ObjectHelper.m4363e(t, "The callable returned a null value");
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(subscriber);
        subscriber.onSubscribe(deferredScalarSubscription);
        try {
            Object call = this.f15971g.call();
            ObjectHelper.m4363e(call, "The callable returned a null value");
            deferredScalarSubscription.m3470d(call);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            if (deferredScalarSubscription.m3469f()) {
                RxJavaPlugins.m3354t(th);
            } else {
                subscriber.onError(th);
            }
        }
    }
}
