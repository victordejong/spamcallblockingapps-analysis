package scala.collection.mutable;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashTable$.class */
public final class HashTable$ {
    public static final HashTable$ MODULE$ = null;

    static {
        new HashTable$();
    }

    private HashTable$() {
        MODULE$ = this;
    }

    public final int capacity(int i) {
        return i == 0 ? 1 : powerOfTwo(i);
    }

    public final int defaultLoadFactor() {
        return 750;
    }

    public final int loadFactorDenum() {
        return 1000;
    }

    public final int newThreshold(int i, int i2) {
        return (int) ((i2 * i) / loadFactorDenum());
    }

    public int powerOfTwo(int i) {
        int i2 = i - 1;
        int i3 = i2 | (i2 >>> 1);
        int i4 = i3 | (i3 >>> 2);
        int i5 = i4 | (i4 >>> 4);
        int i6 = i5 | (i5 >>> 8);
        return (i6 | (i6 >>> 16)) + 1;
    }

    public final int sizeForThreshold(int i, int i2) {
        return (int) ((i2 * loadFactorDenum()) / i);
    }
}
