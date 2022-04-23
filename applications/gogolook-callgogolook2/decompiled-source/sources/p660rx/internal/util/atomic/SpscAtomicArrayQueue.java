package p660rx.internal.util.atomic;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* renamed from: rx.internal.util.atomic.SpscAtomicArrayQueue */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/atomic/SpscAtomicArrayQueue.class */
public final class SpscAtomicArrayQueue<E> extends AtomicReferenceArrayQueue<E> {
    public static final Integer MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    public final int lookAheadStep;
    public long producerLookAhead;
    public final AtomicLong producerIndex = new AtomicLong();
    public final AtomicLong consumerIndex = new AtomicLong();

    public SpscAtomicArrayQueue(int i) {
        super(i);
        this.lookAheadStep = Math.min(i / 4, MAX_LOOK_AHEAD_STEP.intValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return lvProducerIndex() == lvConsumerIndex();
    }

    public final long lvConsumerIndex() {
        return this.consumerIndex.get();
    }

    public final long lvProducerIndex() {
        return this.producerIndex.get();
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        if (e != null) {
            AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
            int i = this.mask;
            long j = this.producerIndex.get();
            int calcElementOffset = calcElementOffset(j, i);
            if (j >= this.producerLookAhead) {
                long j2 = this.lookAheadStep + j;
                if (lvElement(atomicReferenceArray, calcElementOffset(j2, i)) == null) {
                    this.producerLookAhead = j2;
                } else if (lvElement(atomicReferenceArray, calcElementOffset) != null) {
                    return false;
                }
            }
            soElement(atomicReferenceArray, calcElementOffset, e);
            soProducerIndex(j + 1);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // java.util.Queue
    public E peek() {
        return lvElement(calcElementOffset(this.consumerIndex.get()));
    }

    @Override // java.util.Queue
    public E poll() {
        long j = this.consumerIndex.get();
        int calcElementOffset = calcElementOffset(j);
        AtomicReferenceArray<E> atomicReferenceArray = this.buffer;
        E lvElement = lvElement(atomicReferenceArray, calcElementOffset);
        if (lvElement == null) {
            return null;
        }
        soElement(atomicReferenceArray, calcElementOffset, null);
        soConsumerIndex(j + 1);
        return lvElement;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.util.AbstractCollection, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int size() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.lvConsumerIndex()
            r6 = r0
        L_0x0005:
            r0 = r5
            long r0 = r0.lvProducerIndex()
            r8 = r0
            r0 = r5
            long r0 = r0.lvConsumerIndex()
            r10 = r0
            r0 = r6
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001d
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            int r0 = (int) r0
            return r0
        L_0x001d:
            r0 = r10
            r6 = r0
            goto L_0x0005
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.util.atomic.SpscAtomicArrayQueue.size():int");
    }

    public final void soConsumerIndex(long j) {
        this.consumerIndex.lazySet(j);
    }

    public final void soProducerIndex(long j) {
        this.producerIndex.lazySet(j);
    }
}
