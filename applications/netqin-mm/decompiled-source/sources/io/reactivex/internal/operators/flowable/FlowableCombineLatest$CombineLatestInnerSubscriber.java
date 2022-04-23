package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber.class */
public final class FlowableCombineLatest$CombineLatestInnerSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T> {
    public static final long serialVersionUID = -8730235182291002949L;
    public final int index;
    public final int limit;
    public final FlowableCombineLatest$CombineLatestCoordinator<T, ?> parent;
    public final int prefetch;
    public int produced;

    public FlowableCombineLatest$CombineLatestInnerSubscriber(FlowableCombineLatest$CombineLatestCoordinator<T, ?> flowableCombineLatest$CombineLatestCoordinator, int i, int i2) {
        this.parent = flowableCombineLatest$CombineLatestCoordinator;
        this.index = i;
        this.prefetch = i2;
        this.limit = i2 - (i2 >> 2);
    }

    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.parent.innerComplete(this.index);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.innerError(this.index, th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.parent.innerValue(this.index, t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, this.prefetch);
    }

    public void requestOne() {
        int i = this.produced + 1;
        if (i == this.limit) {
            this.produced = 0;
            get().request(i);
            return;
        }
        this.produced = i;
    }
}
