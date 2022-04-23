package p660rx.internal.util.atomic;

import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p660rx.internal.util.unsafe.Pow2;
/* renamed from: rx.internal.util.atomic.AtomicReferenceArrayQueue */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/atomic/AtomicReferenceArrayQueue.class */
public abstract class AtomicReferenceArrayQueue<E> extends AbstractQueue<E> {
    public final AtomicReferenceArray<E> buffer;
    public final int mask;

    public AtomicReferenceArrayQueue(int i) {
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i);
        this.mask = roundToPowerOfTwo - 1;
        this.buffer = new AtomicReferenceArray<>(roundToPowerOfTwo);
    }

    public final int calcElementOffset(long j) {
        return this.mask & ((int) j);
    }

    public final int calcElementOffset(long j, int i) {
        return ((int) j) & i;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    public final E lvElement(int i) {
        return lvElement(this.buffer, i);
    }

    public final E lvElement(AtomicReferenceArray<E> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    public final void soElement(AtomicReferenceArray<E> atomicReferenceArray, int i, E e) {
        atomicReferenceArray.lazySet(i, e);
    }
}
