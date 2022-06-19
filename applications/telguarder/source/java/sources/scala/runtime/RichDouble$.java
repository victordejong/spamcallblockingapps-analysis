package scala.runtime;

import kotlin.jvm.internal.LongCompanionObject;
import scala.math.Numeric$DoubleAsIfIntegral$;
import scala.math.Numeric$DoubleIsFractional$;
import scala.math.Ordering$Double$;
import scala.math.package$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichDouble$.class */
public final class RichDouble$ {
    public static final RichDouble$ MODULE$ = null;

    static {
        new RichDouble$();
    }

    private RichDouble$() {
        MODULE$ = this;
    }

    public final double abs$extension(double d) {
        return package$.MODULE$.abs(d);
    }

    public final byte byteValue$extension(double d) {
        return (byte) d;
    }

    public final double ceil$extension(double d) {
        return package$.MODULE$.ceil(d);
    }

    public final double doubleValue$extension(double d) {
        return d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if ((r6 == ((scala.runtime.RichDouble) r8).self()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(double r6, java.lang.Object r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof scala.runtime.RichDouble
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L2b
            r0 = r6
            r1 = r8
            scala.runtime.RichDouble r1 = (scala.runtime.RichDouble) r1
            double r1 = r1.self()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.RichDouble$.equals$extension(double, java.lang.Object):boolean");
    }

    public final float floatValue$extension(double d) {
        return (float) d;
    }

    public final double floor$extension(double d) {
        return package$.MODULE$.floor(d);
    }

    public final int hashCode$extension(double d) {
        return BoxesRunTime.boxToDouble(d).hashCode();
    }

    public final int intValue$extension(double d) {
        return (int) d;
    }

    public final Numeric$DoubleAsIfIntegral$ integralNum$extension(double d) {
        return Numeric$DoubleAsIfIntegral$.MODULE$;
    }

    public final boolean isInfinity$extension(double d) {
        return Double.isInfinite(d);
    }

    public final boolean isNaN$extension(double d) {
        return Double.isNaN(d);
    }

    public final boolean isNegInfinity$extension(double d) {
        return Double.NEGATIVE_INFINITY == d;
    }

    public final boolean isPosInfinity$extension(double d) {
        return Double.POSITIVE_INFINITY == d;
    }

    public final boolean isValidByte$extension(double d) {
        return ((double) ((byte) ((int) d))) == d;
    }

    public final boolean isValidChar$extension(double d) {
        return ((double) ((char) ((int) d))) == d;
    }

    public final boolean isValidInt$extension(double d) {
        return ((double) ((int) d)) == d;
    }

    public final boolean isValidShort$extension(double d) {
        return ((double) ((short) ((int) d))) == d;
    }

    public final boolean isWhole$extension(double d) {
        long j = (long) d;
        return ((double) j) == d || (j == LongCompanionObject.MAX_VALUE && d < Double.POSITIVE_INFINITY) || (j == Long.MIN_VALUE && d > Double.NEGATIVE_INFINITY);
    }

    public final long longValue$extension(double d) {
        return (long) d;
    }

    public final double max$extension(double d, double d2) {
        return package$.MODULE$.max(d, d2);
    }

    public final double min$extension(double d, double d2) {
        return package$.MODULE$.min(d, d2);
    }

    public final Numeric$DoubleIsFractional$ num$extension(double d) {
        return Numeric$DoubleIsFractional$.MODULE$;
    }

    public final Ordering$Double$ ord$extension(double d) {
        return Ordering$Double$.MODULE$;
    }

    public final long round$extension(double d) {
        return package$.MODULE$.round(d);
    }

    public final short shortValue$extension(double d) {
        return (short) d;
    }

    public final int signum$extension(double d) {
        return (int) package$.MODULE$.signum(d);
    }

    public final double toDegrees$extension(double d) {
        return package$.MODULE$.toDegrees(d);
    }

    public final double toRadians$extension(double d) {
        return package$.MODULE$.toRadians(d);
    }
}
