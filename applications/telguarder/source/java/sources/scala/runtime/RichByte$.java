package scala.runtime;

import scala.math.Numeric$ByteIsIntegral$;
import scala.math.Ordering$Byte$;
import scala.math.package$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichByte$.class */
public final class RichByte$ {
    public static final RichByte$ MODULE$ = null;

    static {
        new RichByte$();
    }

    private RichByte$() {
        MODULE$ = this;
    }

    public final byte abs$extension(byte b) {
        return (byte) package$.MODULE$.abs((int) b);
    }

    public final byte byteValue$extension(byte b) {
        return b;
    }

    public final double doubleValue$extension(byte b) {
        return b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if ((r4 == ((scala.runtime.RichByte) r5).self()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(byte r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.RichByte
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L25
            r0 = r4
            r1 = r5
            scala.runtime.RichByte r1 = (scala.runtime.RichByte) r1
            byte r1 = r1.self()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.RichByte$.equals$extension(byte, java.lang.Object):boolean");
    }

    public final float floatValue$extension(byte b) {
        return b;
    }

    public final int hashCode$extension(byte b) {
        return BoxesRunTime.boxToByte(b).hashCode();
    }

    public final int intValue$extension(byte b) {
        return b;
    }

    public final boolean isValidByte$extension(byte b) {
        return true;
    }

    public final long longValue$extension(byte b) {
        return b;
    }

    public final byte max$extension(byte b, byte b2) {
        return (byte) package$.MODULE$.max((int) b, (int) b2);
    }

    public final byte min$extension(byte b, byte b2) {
        return (byte) package$.MODULE$.min((int) b, (int) b2);
    }

    public final Numeric$ByteIsIntegral$ num$extension(byte b) {
        return Numeric$ByteIsIntegral$.MODULE$;
    }

    public final Ordering$Byte$ ord$extension(byte b) {
        return Ordering$Byte$.MODULE$;
    }

    public final short shortValue$extension(byte b) {
        return b;
    }

    public final int signum$extension(byte b) {
        return package$.MODULE$.signum((int) b);
    }
}
