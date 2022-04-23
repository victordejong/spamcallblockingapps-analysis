package p660rx.internal.util.atomic;

import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p660rx.internal.util.unsafe.Pow2;
/* renamed from: rx.internal.util.atomic.SpscExactAtomicArrayQueue */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/atomic/SpscExactAtomicArrayQueue.class */
public final class SpscExactAtomicArrayQueue<T> extends AtomicReferenceArray<T> implements Queue<T> {
    public final int capacitySkip;
    public final int mask;
    public final AtomicLong producerIndex = new AtomicLong();
    public final AtomicLong consumerIndex = new AtomicLong();

    public SpscExactAtomicArrayQueue(int i) {
        super(Pow2.roundToPowerOfTwo(i));
        int length = length();
        this.mask = length - 1;
        this.capacitySkip = length - i;
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
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
        return this.producerIndex == this.consumerIndex;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public boolean offer(T t) {
        if (t != null) {
            long j = this.producerIndex.get();
            int i = this.mask;
            if (get(((int) (this.capacitySkip + j)) & i) != null) {
                return false;
            }
            this.producerIndex.lazySet(j + 1);
            lazySet(i & ((int) j), t);
            return true;
        }
        throw new NullPointerException();
    }

    @Override // java.util.Queue
    public T peek() {
        return get(this.mask & ((int) this.consumerIndex.get()));
    }

    @Override // java.util.Queue
    public T poll() {
        long j = this.consumerIndex.get();
        int i = ((int) j) & this.mask;
        T t = get(i);
        if (t == null) {
            return null;
        }
        this.consumerIndex.lazySet(j + 1);
        lazySet(i, null);
        return t;
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

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
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
            java.util.concurrent.atomic.AtomicLong r0 = r0.consumerIndex
            long r0 = r0.get()
            r6 = r0
        L_0x0008:
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.producerIndex
            long r0 = r0.get()
            r8 = r0
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.consumerIndex
            long r0 = r0.get()
            r10 = r0
            r0 = r6
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0026
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            int r0 = (int) r0
            return r0
        L_0x0026:
            r0 = r10
            r6 = r0
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.util.atomic.SpscExactAtomicArrayQueue.size():int");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        throw new UnsupportedOperationException();
    }
}
