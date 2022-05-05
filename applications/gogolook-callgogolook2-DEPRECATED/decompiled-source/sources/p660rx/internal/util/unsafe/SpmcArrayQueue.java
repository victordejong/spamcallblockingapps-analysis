package p660rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.SpmcArrayQueue */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/SpmcArrayQueue.class */
public final class SpmcArrayQueue<E> extends SpmcArrayQueueL3Pad<E> {
    public SpmcArrayQueue(int i) {
        super(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return lvConsumerIndex() == lvProducerIndex();
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        if (e != null) {
            E[] eArr = this.buffer;
            long j = this.mask;
            long lvProducerIndex = lvProducerIndex();
            long calcElementOffset = calcElementOffset(lvProducerIndex);
            if (lvElement(eArr, calcElementOffset) == null) {
                spElement(eArr, calcElementOffset, e);
                soTail(lvProducerIndex + 1);
                return true;
            } else if (lvProducerIndex - lvConsumerIndex() > j) {
                return false;
            } else {
                do {
                } while (lvElement(eArr, calcElementOffset) != null);
                spElement(eArr, calcElementOffset, e);
                soTail(lvProducerIndex + 1);
                return true;
            }
        } else {
            throw new NullPointerException("Null is not a valid element");
        }
    }

    @Override // java.util.Queue
    public E peek() {
        E lvElement;
        long lvProducerIndexCache = lvProducerIndexCache();
        do {
            long lvConsumerIndex = lvConsumerIndex();
            if (lvConsumerIndex >= lvProducerIndexCache) {
                long lvProducerIndex = lvProducerIndex();
                if (lvConsumerIndex >= lvProducerIndex) {
                    return null;
                }
                svProducerIndexCache(lvProducerIndex);
            }
            lvElement = lvElement(calcElementOffset(lvConsumerIndex));
        } while (lvElement == null);
        return lvElement;
    }

    @Override // java.util.Queue, p660rx.internal.util.unsafe.MessagePassingQueue
    public E poll() {
        long lvConsumerIndex;
        long lvProducerIndexCache = lvProducerIndexCache();
        do {
            lvConsumerIndex = lvConsumerIndex();
            if (lvConsumerIndex >= lvProducerIndexCache) {
                long lvProducerIndex = lvProducerIndex();
                if (lvConsumerIndex >= lvProducerIndex) {
                    return null;
                }
                svProducerIndexCache(lvProducerIndex);
            }
        } while (!casHead(lvConsumerIndex, 1 + lvConsumerIndex));
        long calcElementOffset = calcElementOffset(lvConsumerIndex);
        E[] eArr = this.buffer;
        E lpElement = lpElement(eArr, calcElementOffset);
        soElement(eArr, calcElementOffset, null);
        return lpElement;
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
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.util.unsafe.SpmcArrayQueue.size():int");
    }
}
