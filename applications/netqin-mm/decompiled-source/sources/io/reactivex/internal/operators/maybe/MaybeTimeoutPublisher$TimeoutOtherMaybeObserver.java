package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutOtherMaybeObserver.class */
public final class MaybeTimeoutPublisher$TimeoutOtherMaybeObserver<T, U> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Object> {
    public static final long serialVersionUID = 8663801314800248617L;
    public final MaybeTimeoutPublisher$TimeoutMainMaybeObserver<T, U> parent;

    public MaybeTimeoutPublisher$TimeoutOtherMaybeObserver(MaybeTimeoutPublisher$TimeoutMainMaybeObserver<T, U> maybeTimeoutPublisher$TimeoutMainMaybeObserver) {
        this.parent = maybeTimeoutPublisher$TimeoutMainMaybeObserver;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.parent.otherComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.otherError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        get().cancel();
        this.parent.otherComplete();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}
