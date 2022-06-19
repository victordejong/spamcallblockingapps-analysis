package scala.collection;

import scala.Array$;
import scala.Predef$;
/* loaded from: classes3-dex2jar.jar:scala/collection/BitSetLike$.class */
public final class BitSetLike$ {
    public static final BitSetLike$ MODULE$ = null;
    private final int LogWL;
    private final int MaxSize;
    private final int WordLength;

    static {
        new BitSetLike$();
    }

    private BitSetLike$() {
        MODULE$ = this;
    }

    private final int WordLength() {
        return 64;
    }

    public final int LogWL() {
        return 6;
    }

    public final int MaxSize() {
        return 33554432;
    }

    public long[] updateArray(long[] jArr, int i, long j) {
        int i2;
        int length = jArr.length;
        while (true) {
            i2 = length;
            if (i2 <= 0) {
                break;
            }
            int i3 = i2 - 1;
            length = i3;
            if (jArr[i3] != 0) {
                if (j != 0 || i != i3) {
                    break;
                }
                length = i3;
            }
        }
        int i4 = (i < i2 || j == 0) ? i2 : i + 1;
        long[] jArr2 = new long[i4];
        Array$.MODULE$.copy(jArr, 0, jArr2, 0, i2);
        if (i < i4) {
            jArr2[i] = j;
        } else {
            Predef$.MODULE$.m5971assert(j == 0);
        }
        return jArr2;
    }
}
