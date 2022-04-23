package io.reactivex.internal.operators.maybe;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9731n;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray$ClqSimpleQueue.class */
public final class MaybeMergeArray$ClqSimpleQueue<T> extends ConcurrentLinkedQueue<T> implements AbstractC9731n<T> {
    public static final long serialVersionUID = -4025173261791142821L;
    public int consumerIndex;
    public final AtomicInteger producerIndex = new AtomicInteger();

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n
    public int consumerIndex() {
        return this.consumerIndex;
    }

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n
    public void drop() {
        poll();
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean offer(T t) {
        this.producerIndex.getAndIncrement();
        return super.offer(t);
    }

    public boolean offer(T t, T t2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, p530d.p541c.p543b0.p548e.p551c.AbstractC9731n, p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() {
        T t = (T) super.poll();
        if (t != null) {
            this.consumerIndex++;
        }
        return t;
    }

    @Override // p530d.p541c.p543b0.p548e.p551c.AbstractC9731n
    public int producerIndex() {
        return this.producerIndex.get();
    }
}
