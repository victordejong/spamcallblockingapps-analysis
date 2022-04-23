package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber.class */
public final class FlowableBufferBoundary$BufferCloseSubscriber<T, C extends Collection<? super T>> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Object>, AbstractC9861b {
    public static final long serialVersionUID = -8498650778633225126L;
    public final long index;
    public final FlowableBufferBoundary$BufferBoundarySubscriber<T, C, ?, ?> parent;

    public FlowableBufferBoundary$BufferCloseSubscriber(FlowableBufferBoundary$BufferBoundarySubscriber<T, C, ?, ?> flowableBufferBoundary$BufferBoundarySubscriber, long j) {
        this.parent = flowableBufferBoundary$BufferBoundarySubscriber;
        this.index = j;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        AbstractC10434d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            this.parent.close(this, this.index);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        AbstractC10434d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            this.parent.boundaryError(this, th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        AbstractC10434d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            dVar.cancel();
            this.parent.close(this, this.index);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}
