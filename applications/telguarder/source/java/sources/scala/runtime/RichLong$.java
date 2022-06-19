package scala.runtime;

import scala.math.Numeric$LongIsIntegral$;
import scala.math.Ordering$Long$;
import scala.math.package$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichLong$.class */
public final class RichLong$ {
    public static final RichLong$ MODULE$ = null;

    static {
        new RichLong$();
    }

    private RichLong$() {
        MODULE$ = this;
    }

    public final long abs$extension(long j) {
        return package$.MODULE$.abs(j);
    }

    public final byte byteValue$extension(long j) {
        return (byte) j;
    }

    public final double doubleValue$extension(long j) {
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if ((r6 == ((scala.runtime.RichLong) r8).self()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(long r6, java.lang.Object r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof scala.runtime.RichLong
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L2b
            r0 = r6
            r1 = r8
            scala.runtime.RichLong r1 = (scala.runtime.RichLong) r1
            long r1 = r1.self()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L20
            r0 = 1
            r11 = r0
            goto L23
        L20:
            r0 = 0
            r11 = r0
        L23:
            r0 = r11
            if (r0 == 0) goto L2b
            goto L2e
        L2b:
            r0 = 0
            r10 = r0
        L2e:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.RichLong$.equals$extension(long, java.lang.Object):boolean");
    }

    public final float floatValue$extension(long j) {
        return (float) j;
    }

    public final int hashCode$extension(long j) {
        return BoxesRunTime.boxToLong(j).hashCode();
    }

    public final int intValue$extension(long j) {
        return (int) j;
    }

    public final boolean isValidByte$extension(long j) {
        return ((long) ((byte) ((int) j))) == j;
    }

    public final boolean isValidChar$extension(long j) {
        return ((long) ((char) ((int) j))) == j;
    }

    public final boolean isValidInt$extension(long j) {
        return ((long) ((int) j)) == j;
    }

    public final boolean isValidLong$extension(long j) {
        return true;
    }

    public final boolean isValidShort$extension(long j) {
        return ((long) ((short) ((int) j))) == j;
    }

    public final long longValue$extension(long j) {
        return j;
    }

    public final long max$extension(long j, long j2) {
        return package$.MODULE$.max(j, j2);
    }

    public final long min$extension(long j, long j2) {
        return package$.MODULE$.min(j, j2);
    }

    public final Numeric$LongIsIntegral$ num$extension(long j) {
        return Numeric$LongIsIntegral$.MODULE$;
    }

    public final Ordering$Long$ ord$extension(long j) {
        return Ordering$Long$.MODULE$;
    }

    public final long round$extension(long j) {
        return j;
    }

    public final short shortValue$extension(long j) {
        return (short) j;
    }

    public final int signum$extension(long j) {
        return (int) package$.MODULE$.signum(j);
    }

    public final String toBinaryString$extension(long j) {
        return Long.toBinaryString(j);
    }

    public final String toHexString$extension(long j) {
        return Long.toHexString(j);
    }

    public final String toOctalString$extension(long j) {
        return Long.toOctalString(j);
    }
}
