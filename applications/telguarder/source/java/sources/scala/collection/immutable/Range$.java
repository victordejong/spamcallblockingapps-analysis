package scala.collection.immutable;

import scala.Serializable;
import scala.collection.immutable.Range;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$.class */
public final class Range$ implements Serializable {
    public static final Range$ MODULE$ = null;
    private final int MAX_PRINT = 512;

    static {
        new Range$();
    }

    private Range$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public int MAX_PRINT() {
        return this.MAX_PRINT;
    }

    public Range apply(int i, int i2) {
        return new Range(i, i2, 1);
    }

    public Range apply(int i, int i2, int i3) {
        return new Range(i, i2, i3);
    }

    public int count(int i, int i2, int i3) {
        return count(i, i2, i3, false);
    }

    public int count(int i, int i2, int i3, boolean z) {
        int i4;
        if (i3 != 0) {
            if (i != i2 ? !(i >= i2 ? i3 <= 0 : i3 >= 0) : !z) {
                i4 = 0;
            } else {
                long j = i2 - i;
                long j2 = i3;
                long j3 = j / j2;
                int i5 = 1;
                if (!z) {
                    i5 = j % j2 != 0 ? 1 : 0;
                }
                long j4 = j3 + i5;
                i4 = j4 > 2147483647L ? -1 : (int) j4;
            }
            return i4;
        }
        throw new IllegalArgumentException("step cannot be 0.");
    }

    public Range.Inclusive inclusive(int i, int i2) {
        return new Range.Inclusive(i, i2, 1);
    }

    public Range.Inclusive inclusive(int i, int i2, int i3) {
        return new Range.Inclusive(i, i2, i3);
    }
}
