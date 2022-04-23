package io.reactivex.internal.queue;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p557i.C9807i;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/queue/SpscArrayQueue.class */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements AbstractC9660i<E> {
    public static final Integer MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    public static final long serialVersionUID = -1296597691183856449L;
    public final int lookAheadStep;
    public long producerLookAhead;
    public final int mask = length() - 1;
    public final AtomicLong producerIndex = new AtomicLong();
    public final AtomicLong consumerIndex = new AtomicLong();

    public SpscArrayQueue(int i) {
        super(C9807i.m1987a(i));
        this.lookAheadStep = Math.min(i / 4, MAX_LOOK_AHEAD_STEP.intValue());
    }

    public int calcElementOffset(long j) {
        return this.mask & ((int) j);
    }

    public int calcElementOffset(long j, int i) {
        return ((int) j) & i;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.producerIndex.get() == this.consumerIndex.get();
    }

    public E lvElement(int i) {
        return get(i);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean offer(E e) {
        if (e != null) {
            int i = this.mask;
            long j = this.producerIndex.get();
            int calcElementOffset = calcElementOffset(j, i);
            if (j >= this.producerLookAhead) {
                long j2 = this.lookAheadStep + j;
                if (lvElement(calcElementOffset(j2, i)) == null) {
                    this.producerLookAhead = j2;
                } else if (lvElement(calcElementOffset) != null) {
                    return false;
                }
            }
            soElement(calcElementOffset, e);
            soProducerIndex(j + 1);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    public boolean offer(E e, E e2) {
        return offer(e) && offer(e2);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9660i, p530d.p541c.p543b0.p546c.AbstractC9661j
    public E poll() {
        long j = this.consumerIndex.get();
        int calcElementOffset = calcElementOffset(j);
        E lvElement = lvElement(calcElementOffset);
        if (lvElement == null) {
            return null;
        }
        soConsumerIndex(j + 1);
        soElement(calcElementOffset, null);
        return lvElement;
    }

    public void soConsumerIndex(long j) {
        this.consumerIndex.lazySet(j);
    }

    public void soElement(int i, E e) {
        lazySet(i, e);
    }

    public void soProducerIndex(long j) {
        this.producerIndex.lazySet(j);
    }
}
