package p660rx.internal.util.atomic;

import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p660rx.internal.util.unsafe.Pow2;
/* renamed from: rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/atomic/SpscUnboundedAtomicArrayQueue.class */
public final class SpscUnboundedAtomicArrayQueue<T> implements Queue<T> {
    public AtomicReferenceArray<Object> consumerBuffer;
    public int consumerMask;
    public AtomicReferenceArray<Object> producerBuffer;
    public long producerLookAhead;
    public int producerLookAheadStep;
    public int producerMask;
    public static final int MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    public static final Object HAS_NEXT = new Object();
    public final AtomicLong producerIndex = new AtomicLong();
    public final AtomicLong consumerIndex = new AtomicLong();

    public SpscUnboundedAtomicArrayQueue(int i) {
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(Math.max(8, i));
        int i2 = roundToPowerOfTwo - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(roundToPowerOfTwo + 1);
        this.producerBuffer = atomicReferenceArray;
        this.producerMask = i2;
        adjustLookAheadStep(roundToPowerOfTwo);
        this.consumerBuffer = atomicReferenceArray;
        this.consumerMask = i2;
        this.producerLookAhead = i2 - 1;
        soProducerIndex(0L);
    }

    public static int calcDirectOffset(int i) {
        return i;
    }

    public static int calcWrappedOffset(long j, int i) {
        int i2 = ((int) j) & i;
        calcDirectOffset(i2);
        return i2;
    }

    public static <E> Object lvElement(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    public static void soElement(AtomicReferenceArray<Object> atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    public final void adjustLookAheadStep(int i) {
        this.producerLookAheadStep = Math.min(i / 4, MAX_LOOK_AHEAD_STEP);
    }

    @Override // java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public T element() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return lvProducerIndex() == lvConsumerIndex();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        throw new UnsupportedOperationException();
    }

    public final long lpConsumerIndex() {
        return this.consumerIndex.get();
    }

    public final long lpProducerIndex() {
        return this.producerIndex.get();
    }

    public final long lvConsumerIndex() {
        return this.consumerIndex.get();
    }

    public final AtomicReferenceArray<Object> lvNext(AtomicReferenceArray<Object> atomicReferenceArray) {
        int length = atomicReferenceArray.length() - 1;
        calcDirectOffset(length);
        return (AtomicReferenceArray) lvElement(atomicReferenceArray, length);
    }

    public final long lvProducerIndex() {
        return this.producerIndex.get();
    }

    public final T newBufferPeek(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.consumerBuffer = atomicReferenceArray;
        return (T) lvElement(atomicReferenceArray, calcWrappedOffset(j, i));
    }

    public final T newBufferPoll(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.consumerBuffer = atomicReferenceArray;
        int calcWrappedOffset = calcWrappedOffset(j, i);
        T t = (T) lvElement(atomicReferenceArray, calcWrappedOffset);
        if (t == null) {
            return null;
        }
        soConsumerIndex(j + 1);
        soElement(atomicReferenceArray, calcWrappedOffset, null);
        return t;
    }

    @Override // java.util.Queue
    public boolean offer(T t) {
        if (t != null) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.producerBuffer;
            long lpProducerIndex = lpProducerIndex();
            int i = this.producerMask;
            int calcWrappedOffset = calcWrappedOffset(lpProducerIndex, i);
            if (lpProducerIndex < this.producerLookAhead) {
                return writeToQueue(atomicReferenceArray, t, lpProducerIndex, calcWrappedOffset);
            }
            long j = this.producerLookAheadStep + lpProducerIndex;
            if (lvElement(atomicReferenceArray, calcWrappedOffset(j, i)) == null) {
                this.producerLookAhead = j - 1;
                return writeToQueue(atomicReferenceArray, t, lpProducerIndex, calcWrappedOffset);
            } else if (lvElement(atomicReferenceArray, calcWrappedOffset(1 + lpProducerIndex, i)) != null) {
                return writeToQueue(atomicReferenceArray, t, lpProducerIndex, calcWrappedOffset);
            } else {
                resize(atomicReferenceArray, lpProducerIndex, calcWrappedOffset, t, i);
                return true;
            }
        } else {
            throw new NullPointerException();
        }
    }

    @Override // java.util.Queue
    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        int i = this.consumerMask;
        T t = (T) lvElement(atomicReferenceArray, calcWrappedOffset(lpConsumerIndex, i));
        return t == HAS_NEXT ? newBufferPeek(lvNext(atomicReferenceArray), lpConsumerIndex, i) : t;
    }

    @Override // java.util.Queue
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        int i = this.consumerMask;
        int calcWrappedOffset = calcWrappedOffset(lpConsumerIndex, i);
        T t = (T) lvElement(atomicReferenceArray, calcWrappedOffset);
        boolean z = t == HAS_NEXT;
        if (t != null && !z) {
            soConsumerIndex(lpConsumerIndex + 1);
            soElement(atomicReferenceArray, calcWrappedOffset, null);
            return t;
        } else if (z) {
            return newBufferPoll(lvNext(atomicReferenceArray), lpConsumerIndex, i);
        } else {
            return null;
        }
    }

    @Override // java.util.Queue
    public T remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public final void resize(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i, T t, long j2) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.producerBuffer = atomicReferenceArray2;
        this.producerLookAhead = (j2 + j) - 1;
        soProducerIndex(j + 1);
        soElement(atomicReferenceArray2, i, t);
        soNext(atomicReferenceArray, atomicReferenceArray2);
        soElement(atomicReferenceArray, i, HAS_NEXT);
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.util.Collection
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
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue.size():int");
    }

    public final void soConsumerIndex(long j) {
        this.consumerIndex.lazySet(j);
    }

    public final void soNext(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        int length = atomicReferenceArray.length() - 1;
        calcDirectOffset(length);
        soElement(atomicReferenceArray, length, atomicReferenceArray2);
    }

    public final void soProducerIndex(long j) {
        this.producerIndex.lazySet(j);
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        throw new UnsupportedOperationException();
    }

    public final boolean writeToQueue(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j, int i) {
        soProducerIndex(j + 1);
        soElement(atomicReferenceArray, i, t);
        return true;
    }
}
