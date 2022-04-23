package io.reactivex.internal.operators.maybe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9731n;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue.class */
public final class MaybeMergeArray$MpscFillOnceSimpleQueue<T> extends AtomicReferenceArray<T> implements AbstractC9731n<T> {
    public static final long serialVersionUID = -7969063454040569579L;
    public int consumerIndex;
    public final AtomicInteger producerIndex = new AtomicInteger();

    public MaybeMergeArray$MpscFillOnceSimpleQueue(int i) {
        super(i);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n
    public int consumerIndex() {
        return this.consumerIndex;
    }

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n
    public void drop() {
        int i = this.consumerIndex;
        lazySet(i, null);
        this.consumerIndex = i + 1;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.consumerIndex == producerIndex();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean offer(T t) {
        C9650a.m2095a((Object) t, "value is null");
        int andIncrement = this.producerIndex.getAndIncrement();
        if (andIncrement >= length()) {
            return false;
        }
        lazySet(andIncrement, t);
        return true;
    }

    public boolean offer(T t, T t2) {
        throw new UnsupportedOperationException();
    }

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n
    public T peek() {
        int i = this.consumerIndex;
        if (i == length()) {
            return null;
        }
        return get(i);
    }

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n, p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() {
        int i = this.consumerIndex;
        if (i == length()) {
            return null;
        }
        AtomicInteger atomicInteger = this.producerIndex;
        do {
            T t = get(i);
            if (t != null) {
                this.consumerIndex = i + 1;
                lazySet(i, null);
                return t;
            }
        } while (atomicInteger.get() != i);
        return null;
    }

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n
    public int producerIndex() {
        return this.producerIndex.get();
    }
}
