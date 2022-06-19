package scala.runtime;

import kotlin.jvm.internal.LongCompanionObject;
import scala.math.Numeric$FloatAsIfIntegral$;
import scala.math.Numeric$FloatIsFractional$;
import scala.math.Ordering$Float$;
import scala.math.package$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichFloat$.class */
public final class RichFloat$ {
    public static final RichFloat$ MODULE$ = null;

    static {
        new RichFloat$();
    }

    private RichFloat$() {
        MODULE$ = this;
    }

    public final float abs$extension(float f) {
        return package$.MODULE$.abs(f);
    }

    public final byte byteValue$extension(float f) {
        return (byte) f;
    }

    public final float ceil$extension(float f) {
        return (float) package$.MODULE$.ceil(f);
    }

    public final double doubleValue$extension(float f) {
        return f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if ((r4 == ((scala.runtime.RichFloat) r5).self()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(float r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.RichFloat
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L29
            r0 = r4
            r1 = r5
            scala.runtime.RichFloat r1 = (scala.runtime.RichFloat) r1
            float r1 = r1.self()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L1e
            r0 = 1
            r8 = r0
            goto L21
        L1e:
            r0 = 0
            r8 = r0
        L21:
            r0 = r8
            if (r0 == 0) goto L29
            goto L2c
        L29:
            r0 = 0
            r7 = r0
        L2c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.RichFloat$.equals$extension(float, java.lang.Object):boolean");
    }

    public final float floatValue$extension(float f) {
        return f;
    }

    public final float floor$extension(float f) {
        return (float) package$.MODULE$.floor(f);
    }

    public final int hashCode$extension(float f) {
        return BoxesRunTime.boxToFloat(f).hashCode();
    }

    public final int intValue$extension(float f) {
        return (int) f;
    }

    public final Numeric$FloatAsIfIntegral$ integralNum$extension(float f) {
        return Numeric$FloatAsIfIntegral$.MODULE$;
    }

    public final boolean isInfinity$extension(float f) {
        return Float.isInfinite(f);
    }

    public final boolean isNaN$extension(float f) {
        return Float.isNaN(f);
    }

    public final boolean isNegInfinity$extension(float f) {
        return Float.NEGATIVE_INFINITY == f;
    }

    public final boolean isPosInfinity$extension(float f) {
        return Float.POSITIVE_INFINITY == f;
    }

    public final boolean isValidByte$extension(float f) {
        return ((float) ((byte) ((int) f))) == f;
    }

    public final boolean isValidChar$extension(float f) {
        return ((float) ((char) ((int) f))) == f;
    }

    public final boolean isValidInt$extension(float f) {
        int i = (int) f;
        return ((float) i) == f && i != Integer.MAX_VALUE;
    }

    public final boolean isValidShort$extension(float f) {
        return ((float) ((short) ((int) f))) == f;
    }

    public final boolean isWhole$extension(float f) {
        long j = f;
        return ((float) j) == f || (j == LongCompanionObject.MAX_VALUE && f < Float.POSITIVE_INFINITY) || (j == Long.MIN_VALUE && f > Float.NEGATIVE_INFINITY);
    }

    public final long longValue$extension(float f) {
        return f;
    }

    public final float max$extension(float f, float f2) {
        return package$.MODULE$.max(f, f2);
    }

    public final float min$extension(float f, float f2) {
        return package$.MODULE$.min(f, f2);
    }

    public final Numeric$FloatIsFractional$ num$extension(float f) {
        return Numeric$FloatIsFractional$.MODULE$;
    }

    public final Ordering$Float$ ord$extension(float f) {
        return Ordering$Float$.MODULE$;
    }

    public final int round$extension(float f) {
        return package$.MODULE$.round(f);
    }

    public final short shortValue$extension(float f) {
        return (short) f;
    }

    public final int signum$extension(float f) {
        return (int) package$.MODULE$.signum(f);
    }

    public final float toDegrees$extension(float f) {
        return (float) package$.MODULE$.toDegrees(f);
    }

    public final float toRadians$extension(float f) {
        return (float) package$.MODULE$.toRadians(f);
    }
}
