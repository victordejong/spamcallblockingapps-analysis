package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/ArrayCompositeSubscription.class */
public final class ArrayCompositeSubscription extends AtomicReferenceArray<AbstractC10434d> implements AbstractC9861b {
    public static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeSubscription(int i) {
        super(i);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        AbstractC10434d andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i = 0; i < length; i++) {
                AbstractC10434d dVar = get(i);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (!(dVar == subscriptionHelper || (andSet = getAndSet(i, subscriptionHelper)) == SubscriptionHelper.CANCELLED || andSet == null)) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        boolean z = false;
        if (get(0) == SubscriptionHelper.CANCELLED) {
            z = true;
        }
        return z;
    }

    public AbstractC10434d replaceResource(int i, AbstractC10434d dVar) {
        AbstractC10434d dVar2;
        do {
            dVar2 = get(i);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar == null) {
                    return null;
                }
                dVar.cancel();
                return null;
            }
        } while (!compareAndSet(i, dVar2, dVar));
        return dVar2;
    }

    public boolean setResource(int i, AbstractC10434d dVar) {
        AbstractC10434d dVar2;
        do {
            dVar2 = get(i);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!compareAndSet(i, dVar2, dVar));
        if (dVar2 == null) {
            return true;
        }
        dVar2.cancel();
        return true;
    }
}
