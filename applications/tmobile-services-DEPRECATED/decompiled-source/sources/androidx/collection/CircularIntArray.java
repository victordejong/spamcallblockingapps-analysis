package androidx.collection;
/* loaded from: classes-dex2jar.jar:androidx/collection/CircularIntArray.class */
public final class CircularIntArray {
    public CircularIntArray() {
        this(8);
    }

    public CircularIntArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        } else if (i <= 1073741824) {
            int[] iArr = new int[Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i];
        } else {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
    }
}
