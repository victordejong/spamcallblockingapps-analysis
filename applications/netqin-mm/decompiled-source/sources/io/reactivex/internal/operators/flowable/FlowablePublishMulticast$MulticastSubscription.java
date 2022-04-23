package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p543b0.p548e.p550b.C9698n;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription.class */
public final class FlowablePublishMulticast$MulticastSubscription<T> extends AtomicLong implements AbstractC10434d {
    public static final long serialVersionUID = 8664815189257569791L;
    public final AbstractC10433c<? super T> actual;
    public long emitted;
    public final C9698n<T> parent;

    public FlowablePublishMulticast$MulticastSubscription(AbstractC10433c<? super T> cVar, C9698n<T> nVar) {
        this.actual = cVar;
        this.parent = nVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
            this.parent.m2084a((FlowablePublishMulticast$MulticastSubscription) this);
            throw null;
        }
    }

    public boolean isCancelled() {
        return get() == Long.MIN_VALUE;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2010b(this, j);
            this.parent.m2083i();
            throw null;
        }
    }
}
