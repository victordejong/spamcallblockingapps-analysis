package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9692j;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber.class */
public final class FlowableGroupJoin$LeftRightSubscriber extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Object>, AbstractC9861b {
    public static final long serialVersionUID = 1883890389173668373L;
    public final boolean isLeft;
    public final AbstractC9692j parent;

    public FlowableGroupJoin$LeftRightSubscriber(AbstractC9692j jVar, boolean z) {
        this.parent = jVar;
        this.isLeft = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return SubscriptionHelper.isCancelled(get());
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.parent.innerComplete(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.innerError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        this.parent.innerValue(this.isLeft, obj);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}
