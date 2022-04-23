package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber.class */
public final class ParallelJoin$JoinInnerSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T> {
    public static final long serialVersionUID = 8410034718427740355L;
    public final int limit;
    public final ParallelJoin$JoinSubscriptionBase<T> parent;
    public final int prefetch;
    public long produced;
    public volatile AbstractC9660i<T> queue;

    public ParallelJoin$JoinInnerSubscriber(ParallelJoin$JoinSubscriptionBase<T> parallelJoin$JoinSubscriptionBase, int i) {
        this.parent = parallelJoin$JoinSubscriptionBase;
        this.prefetch = i;
        this.limit = i - (i >> 2);
    }

    public boolean cancel() {
        return SubscriptionHelper.cancel(this);
    }

    public AbstractC9660i<T> getQueue() {
        AbstractC9660i<T> iVar = this.queue;
        AbstractC9660i<T> iVar2 = iVar;
        if (iVar == null) {
            iVar2 = new SpscArrayQueue<>(this.prefetch);
            this.queue = iVar2;
        }
        return iVar2;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.parent.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.parent.onNext(this, t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, this.prefetch);
    }

    public void request(long j) {
        long j2 = this.produced + j;
        if (j2 >= this.limit) {
            this.produced = 0L;
            get().request(j2);
            return;
        }
        this.produced = j2;
    }

    public void requestOne() {
        long j = this.produced + 1;
        if (j == this.limit) {
            this.produced = 0L;
            get().request(j);
            return;
        }
        this.produced = j;
    }
}
