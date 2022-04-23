package androidx.collection;
/* loaded from: classes-dex2jar.jar:androidx/collection/CircularArray.class */
public final class CircularArray<E> {

    /* renamed from: a */
    private E[] f1549a;

    public CircularArray() {
        this(8);
    }

    public CircularArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        } else if (i <= 1073741824) {
            this.f1549a = (E[]) new Object[Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i];
        } else {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
    }
}
