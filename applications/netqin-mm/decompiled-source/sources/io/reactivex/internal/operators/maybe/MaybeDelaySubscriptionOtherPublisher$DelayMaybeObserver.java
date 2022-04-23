package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher$DelayMaybeObserver.class */
public final class MaybeDelaySubscriptionOtherPublisher$DelayMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T> {
    public static final long serialVersionUID = 706635022205076709L;
    public final AbstractC9836k<? super T> actual;

    public MaybeDelaySubscriptionOtherPublisher$DelayMaybeObserver(AbstractC9836k<? super T> kVar) {
        this.actual = kVar;
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.actual.onSuccess(t);
    }
}
