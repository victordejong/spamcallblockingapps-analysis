package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicBoolean;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/BooleanSubscription.class */
public final class BooleanSubscription extends AtomicBoolean implements AbstractC10434d {
    public static final long serialVersionUID = -8127758972444290902L;

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.validate(j);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
