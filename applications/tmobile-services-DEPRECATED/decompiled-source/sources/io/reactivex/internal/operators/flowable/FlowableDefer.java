package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDefer.class */
public final class FlowableDefer<T> extends Flowable<T> {

    /* renamed from: g */
    final Callable<? extends Publisher<? extends T>> f15752g;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        try {
            Object call = this.f15752g.call();
            ObjectHelper.m4363e(call, "The publisher supplied is null");
            ((Publisher) call).mo5c(subscriber);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
