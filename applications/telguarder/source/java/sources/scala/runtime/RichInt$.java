package scala.runtime;

import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.math.Numeric$IntIsIntegral$;
import scala.math.Ordering$Int$;
import scala.math.package$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichInt$.class */
public final class RichInt$ {
    public static final RichInt$ MODULE$ = null;

    static {
        new RichInt$();
    }

    private RichInt$() {
        MODULE$ = this;
    }

    public final int abs$extension(int i) {
        return package$.MODULE$.abs(i);
    }

    public final byte byteValue$extension(int i) {
        return (byte) i;
    }

    public final double doubleValue$extension(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if ((r4 == ((scala.runtime.RichInt) r5).self()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(int r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.RichInt
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L25
            r0 = r4
            r1 = r5
            scala.runtime.RichInt r1 = (scala.runtime.RichInt) r1
            int r1 = r1.self()
            if (r0 != r1) goto L1c
            r0 = 1
            r4 = r0
            goto L1e
        L1c:
            r0 = 0
            r4 = r0
        L1e:
            r0 = r4
            if (r0 == 0) goto L25
            goto L28
        L25:
            r0 = 0
            r7 = r0
        L28:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.RichInt$.equals$extension(int, java.lang.Object):boolean");
    }

    public final float floatValue$extension(int i) {
        return i;
    }

    public final int hashCode$extension(int i) {
        return BoxesRunTime.boxToInteger(i).hashCode();
    }

    public final int intValue$extension(int i) {
        return i;
    }

    public final boolean isValidInt$extension(int i) {
        return true;
    }

    public final boolean isValidLong$extension(int i) {
        return true;
    }

    public final boolean isWhole$extension(int i) {
        return true;
    }

    public final long longValue$extension(int i) {
        return i;
    }

    public final int max$extension(int i, int i2) {
        return package$.MODULE$.max(i, i2);
    }

    public final int min$extension(int i, int i2) {
        return package$.MODULE$.min(i, i2);
    }

    public final Numeric$IntIsIntegral$ num$extension(int i) {
        return Numeric$IntIsIntegral$.MODULE$;
    }

    public final Ordering$Int$ ord$extension(int i) {
        return Ordering$Int$.MODULE$;
    }

    public final int round$extension(int i) {
        return i;
    }

    public final short shortValue$extension(int i) {
        return (short) i;
    }

    public final int signum$extension(int i) {
        return package$.MODULE$.signum(i);
    }

    public final Range.Inclusive to$extension0(int i, int i2) {
        return Range$.MODULE$.inclusive(i, i2);
    }

    public final Range.Inclusive to$extension1(int i, int i2, int i3) {
        return Range$.MODULE$.inclusive(i, i2, i3);
    }

    public final String toBinaryString$extension(int i) {
        return Integer.toBinaryString(i);
    }

    public final String toHexString$extension(int i) {
        return Integer.toHexString(i);
    }

    public final String toOctalString$extension(int i) {
        return Integer.toOctalString(i);
    }

    public final Range until$extension0(int i, int i2) {
        return Range$.MODULE$.apply(i, i2);
    }

    public final Range until$extension1(int i, int i2, int i3) {
        return Range$.MODULE$.apply(i, i2, i3);
    }
}
