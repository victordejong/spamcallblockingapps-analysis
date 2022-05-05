package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableError.class */
public final class FlowableError<T> extends Flowable<T> {

    /* renamed from: g */
    final Callable<? extends Throwable> f15855g;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        Throwable th;
        try {
            Object call = this.f15855g.call();
            ObjectHelper.m4363e(call, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
            th = (Throwable) call;
        } catch (Throwable th2) {
            th = th2;
            Exceptions.m4428b(th);
        }
        EmptySubscription.error(th, subscriber);
    }
}
