package androidx.collection;
/* loaded from: classes-dex2jar.jar:androidx/collection/CircularArray.class */
public final class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray() {
        this(8);
    }

    public CircularArray(int i) {
        if (i >= 1) {
            if (i > 1073741824) {
                throw new IllegalArgumentException("capacity must be <= 2^30");
            }
            int highestOneBit = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
            this.mCapacityBitmask = highestOneBit - 1;
            this.mElements = (E[]) new Object[highestOneBit];
            return;
        }
        throw new IllegalArgumentException("capacity must be >= 1");
    }

    private void doubleCapacity() {
        E[] eArr = this.mElements;
        int length = eArr.length;
        int i = this.mHead;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 >= 0) {
            Object[] objArr = new Object[i3];
            System.arraycopy(eArr, i, objArr, 0, i2);
            System.arraycopy(this.mElements, 0, objArr, i2, this.mHead);
            this.mElements = (E[]) objArr;
            this.mHead = 0;
            this.mTail = length;
            this.mCapacityBitmask = i3 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public void addFirst(E e) {
        int i = (this.mHead - 1) & this.mCapacityBitmask;
        this.mHead = i;
        this.mElements[i] = e;
        if (i == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(E e) {
        E[] eArr = this.mElements;
        int i = this.mTail;
        eArr[i] = e;
        int i2 = this.mCapacityBitmask & (i + 1);
        this.mTail = i2;
        if (i2 == this.mHead) {
            doubleCapacity();
        }
    }

    public void clear() {
        removeFromStart(size());
    }

    public E get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mCapacityBitmask & (this.mHead + i)];
    }

    public E getFirst() {
        int i = this.mHead;
        if (i != this.mTail) {
            return this.mElements[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getLast() {
        int i = this.mHead;
        int i2 = this.mTail;
        if (i != i2) {
            return this.mElements[(i2 - 1) & this.mCapacityBitmask];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean isEmpty() {
        return this.mHead == this.mTail;
    }

    public E popFirst() {
        int i = this.mHead;
        if (i != this.mTail) {
            E[] eArr = this.mElements;
            E e = eArr[i];
            eArr[i] = null;
            this.mHead = (i + 1) & this.mCapacityBitmask;
            return e;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E popLast() {
        int i = this.mHead;
        int i2 = this.mTail;
        if (i != i2) {
            int i3 = this.mCapacityBitmask & (i2 - 1);
            E[] eArr = this.mElements;
            E e = eArr[i3];
            eArr[i3] = null;
            this.mTail = i3;
            return e;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromEnd(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = 0;
        int i4 = this.mTail;
        if (i < i4) {
            i3 = i4 - i;
        }
        int i5 = i3;
        while (true) {
            i2 = this.mTail;
            if (i5 >= i2) {
                break;
            }
            this.mElements[i5] = null;
            i5++;
        }
        int i6 = i2 - i3;
        int i7 = i - i6;
        this.mTail = i2 - i6;
        if (i7 <= 0) {
            return;
        }
        int length = this.mElements.length;
        this.mTail = length;
        int i8 = length - i7;
        for (int i9 = i8; i9 < this.mTail; i9++) {
            this.mElements[i9] = null;
        }
        this.mTail = i8;
    }

    public void removeFromStart(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.mElements.length;
        int i2 = this.mHead;
        int i3 = length;
        int i4 = i2;
        if (i < length - i2) {
            i3 = i2 + i;
            i4 = i2;
        }
        while (i4 < i3) {
            this.mElements[i4] = null;
            i4++;
        }
        int i5 = this.mHead;
        int i6 = i3 - i5;
        int i7 = i - i6;
        this.mHead = this.mCapacityBitmask & (i5 + i6);
        if (i7 <= 0) {
            return;
        }
        for (int i8 = 0; i8 < i7; i8++) {
            this.mElements[i8] = null;
        }
        this.mHead = i7;
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }
}
