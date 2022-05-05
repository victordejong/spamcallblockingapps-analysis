package p660rx.internal.operators;

import java.util.concurrent.Callable;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.SingleFromCallable */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleFromCallable.class */
public final class SingleFromCallable<T> implements Single.OnSubscribe<T> {
    public final Callable<? extends T> callable;

    public SingleFromCallable(Callable<? extends T> callable) {
        this.callable = callable;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((SingleSubscriber) ((SingleSubscriber) obj));
    }

    public void call(SingleSubscriber<? super T> singleSubscriber) {
        try {
            singleSubscriber.onSuccess((Object) this.callable.call());
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            singleSubscriber.onError(th);
        }
    }
}
