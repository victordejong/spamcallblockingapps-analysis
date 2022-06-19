package scala.runtime;

import scala.math.Numeric$ShortIsIntegral$;
import scala.math.Ordering$Short$;
import scala.math.package$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichShort$.class */
public final class RichShort$ {
    public static final RichShort$ MODULE$ = null;

    static {
        new RichShort$();
    }

    private RichShort$() {
        MODULE$ = this;
    }

    public final short abs$extension(short s) {
        return (short) package$.MODULE$.abs((int) s);
    }

    public final byte byteValue$extension(short s) {
        return (byte) s;
    }

    public final double doubleValue$extension(short s) {
        return s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if ((r4 == ((scala.runtime.RichShort) r5).self()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(short r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.RichShort
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L25
            r0 = r4
            r1 = r5
            scala.runtime.RichShort r1 = (scala.runtime.RichShort) r1
            short r1 = r1.self()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.RichShort$.equals$extension(short, java.lang.Object):boolean");
    }

    public final float floatValue$extension(short s) {
        return s;
    }

    public final int hashCode$extension(short s) {
        return BoxesRunTime.boxToShort(s).hashCode();
    }

    public final int intValue$extension(short s) {
        return s;
    }

    public final boolean isValidShort$extension(short s) {
        return true;
    }

    public final long longValue$extension(short s) {
        return s;
    }

    public final short max$extension(short s, short s2) {
        return (short) package$.MODULE$.max((int) s, (int) s2);
    }

    public final short min$extension(short s, short s2) {
        return (short) package$.MODULE$.min((int) s, (int) s2);
    }

    public final Numeric$ShortIsIntegral$ num$extension(short s) {
        return Numeric$ShortIsIntegral$.MODULE$;
    }

    public final Ordering$Short$ ord$extension(short s) {
        return Ordering$Short$.MODULE$;
    }

    public final short shortValue$extension(short s) {
        return s;
    }

    public final int signum$extension(short s) {
        return package$.MODULE$.signum((int) s);
    }
}
