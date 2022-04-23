package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p543b0.p548e.p550b.C9679c;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription.class */
public final class FlowableCache$ReplaySubscription<T> extends AtomicInteger implements AbstractC10434d {
    public static final long CANCELLED = Long.MIN_VALUE;
    public static final long serialVersionUID = -2557562030197141021L;
    public final AbstractC10433c<? super T> child;
    public Object[] currentBuffer;
    public int currentIndexInBuffer;
    public long emitted;
    public int index;
    public final AtomicLong requested = new AtomicLong();
    public final C9679c<T> state;

    public FlowableCache$ReplaySubscription(AbstractC10433c<? super T> cVar, C9679c<T> cVar2) {
        this.child = cVar;
        this.state = cVar2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (this.requested.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
            this.state.m2086a(this);
            throw null;
        }
    }

    public void replay() {
        if (getAndIncrement() == 0 && this.requested.get() != Long.MIN_VALUE) {
            this.state.m1995a();
            throw null;
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2010b(this.requested, j);
            replay();
        }
    }
}
