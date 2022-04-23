package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.p543b0.p557i.C9800b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription.class */
public abstract class FlowableRange$BaseRangeSubscription extends BasicQueueSubscription<Integer> {
    public static final long serialVersionUID = -2252972430506210021L;
    public volatile boolean cancelled;
    public final int end;
    public int index;

    public FlowableRange$BaseRangeSubscription(int i, int i2) {
        this.index = i;
        this.end = i2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void cancel() {
        this.cancelled = true;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final void clear() {
        this.index = this.end;
    }

    public abstract void fastPath();

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean isEmpty() {
        return this.index == this.end;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final Integer poll() {
        int i = this.index;
        if (i == this.end) {
            return null;
        }
        this.index = i + 1;
        return Integer.valueOf(i);
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void request(long j) {
        if (SubscriptionHelper.validate(j) && C9800b.m2012a(this, j) == 0) {
            if (j == Long.MAX_VALUE) {
                fastPath();
            } else {
                slowPath(j);
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public final int requestFusion(int i) {
        return i & 1;
    }

    public abstract void slowPath(long j);
}
