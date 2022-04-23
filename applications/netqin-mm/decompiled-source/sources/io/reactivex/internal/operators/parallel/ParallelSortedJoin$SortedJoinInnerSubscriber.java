package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber.class */
public final class ParallelSortedJoin$SortedJoinInnerSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<List<T>> {
    public static final long serialVersionUID = 6751017204873808094L;
    public final int index;
    public final ParallelSortedJoin$SortedJoinSubscription<T> parent;

    public ParallelSortedJoin$SortedJoinInnerSubscriber(ParallelSortedJoin$SortedJoinSubscription<T> parallelSortedJoin$SortedJoinSubscription, int i) {
        this.parent = parallelSortedJoin$SortedJoinSubscription;
        this.index = i;
    }

    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.innerError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public /* bridge */ /* synthetic */ void onNext(Object obj) {
        onNext((List) ((List) obj));
    }

    public void onNext(List<T> list) {
        this.parent.innerNext(list, this.index);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}
