package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription.class */
public final class ParallelSortedJoin$SortedJoinSubscription<T> extends AtomicInteger implements AbstractC10434d {
    public static final long serialVersionUID = 3481980673745556697L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public final Comparator<? super T> comparator;
    public final int[] indexes;
    public final List<T>[] lists;
    public final ParallelSortedJoin$SortedJoinInnerSubscriber<T>[] subscribers;
    public final AtomicLong requested = new AtomicLong();
    public final AtomicInteger remaining = new AtomicInteger();
    public final AtomicReference<Throwable> error = new AtomicReference<>();

    public ParallelSortedJoin$SortedJoinSubscription(AbstractC10433c<? super T> cVar, int i, Comparator<? super T> comparator) {
        this.actual = cVar;
        this.comparator = comparator;
        ParallelSortedJoin$SortedJoinInnerSubscriber<T>[] parallelSortedJoin$SortedJoinInnerSubscriberArr = new ParallelSortedJoin$SortedJoinInnerSubscriber[i];
        for (int i2 = 0; i2 < i; i2++) {
            parallelSortedJoin$SortedJoinInnerSubscriberArr[i2] = new ParallelSortedJoin$SortedJoinInnerSubscriber<>(this, i2);
        }
        this.subscribers = parallelSortedJoin$SortedJoinInnerSubscriberArr;
        this.lists = new List[i];
        this.indexes = new int[i];
        this.remaining.lazySet(i);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                Arrays.fill(this.lists, (Object) null);
            }
        }
    }

    public void cancelAll() {
        for (ParallelSortedJoin$SortedJoinInnerSubscriber<T> parallelSortedJoin$SortedJoinInnerSubscriber : this.subscribers) {
            parallelSortedJoin$SortedJoinInnerSubscriber.cancel();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drain() {
        boolean z;
        if (getAndIncrement() == 0) {
            AbstractC10433c<? super T> cVar = this.actual;
            List<T>[] listArr = this.lists;
            int[] iArr = this.indexes;
            int length = iArr.length;
            int i = 1;
            while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.cancelled) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th = this.error.get();
                    if (th != null) {
                        cancelAll();
                        Arrays.fill(listArr, (Object) null);
                        cVar.onError(th);
                        return;
                    }
                    int i2 = -1;
                    int i3 = 0;
                    Object obj = (Object) false;
                    while (i3 < length) {
                        List<T> list = listArr[i3];
                        int i4 = iArr[i3];
                        Object obj2 = obj;
                        i2 = i2;
                        if (list.size() != i4) {
                            if (obj == null) {
                                obj2 = (T) list.get(i4);
                            } else {
                                Object obj3 = list.get(i4);
                                try {
                                    obj2 = (Object) obj;
                                    i2 = i2;
                                    if (this.comparator.compare(obj, obj3) > 0) {
                                        obj2 = obj3;
                                    }
                                } catch (Throwable th2) {
                                    C9863a.m1822b(th2);
                                    cancelAll();
                                    Arrays.fill(listArr, (Object) null);
                                    if (!this.error.compareAndSet(null, th2)) {
                                        C9815a.m1923b(th2);
                                    }
                                    cVar.onError(this.error.get());
                                    return;
                                }
                            }
                            i2 = i3;
                        }
                        i3++;
                        obj = obj2;
                    }
                    if (obj == null) {
                        Arrays.fill(listArr, (Object) null);
                        cVar.onComplete();
                        return;
                    }
                    cVar.onNext(obj);
                    iArr[i2] = iArr[i2] + 1;
                    j2++;
                }
                if (j2 == j) {
                    if (this.cancelled) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th3 = this.error.get();
                    if (th3 != null) {
                        cancelAll();
                        Arrays.fill(listArr, (Object) null);
                        cVar.onError(th3);
                        return;
                    }
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length) {
                            z = true;
                            break;
                        } else if (iArr[i5] != listArr[i5].size()) {
                            z = false;
                            break;
                        } else {
                            i5++;
                        }
                    }
                    if (z) {
                        Arrays.fill(listArr, (Object) null);
                        cVar.onComplete();
                        return;
                    }
                }
                if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                    this.requested.addAndGet(-j2);
                }
                int i6 = get();
                i = i6;
                if (i6 == i) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    public void innerError(Throwable th) {
        if (this.error.compareAndSet(null, th)) {
            drain();
        } else if (th != this.error.get()) {
            C9815a.m1923b(th);
        }
    }

    public void innerNext(List<T> list, int i) {
        this.lists[i] = list;
        if (this.remaining.decrementAndGet() == 0) {
            drain();
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            if (this.remaining.get() == 0) {
                drain();
            }
        }
    }
}
