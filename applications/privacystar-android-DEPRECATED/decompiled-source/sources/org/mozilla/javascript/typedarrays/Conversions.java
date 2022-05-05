package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.ScriptRuntime;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/typedarrays/Conversions.class */
public class Conversions {
    public static final int EIGHT_BIT = 256;
    public static final int SIXTEEN_BIT = 65536;
    public static final long THIRTYTWO_BIT = 4294967296L;

    public static int toInt16(Object obj) {
        int intValue = (obj instanceof Integer ? ((Integer) obj).intValue() : ScriptRuntime.toInt32(obj)) % 65536;
        int i = intValue;
        if (intValue >= 32768) {
            i = intValue - 65536;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int toInt32(java.lang.Object r5) {
        /*
            r0 = r5
            double r0 = org.mozilla.javascript.ScriptRuntime.toNumber(r0)
            long r0 = (long) r0
            r1 = 4294967296(0x100000000, double:2.121995791E-314)
            long r0 = r0 % r1
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 2147483648(0x80000000, double:1.0609978955E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x001a
            r0 = r6
            r1 = 4294967296(0x100000000, double:2.121995791E-314)
            long r0 = r0 - r1
            r8 = r0
        L_0x001a:
            r0 = r8
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.typedarrays.Conversions.toInt32(java.lang.Object):int");
    }

    public static int toInt8(Object obj) {
        int intValue = (obj instanceof Integer ? ((Integer) obj).intValue() : ScriptRuntime.toInt32(obj)) % 256;
        int i = intValue;
        if (intValue >= 128) {
            i = intValue - 256;
        }
        return i;
    }

    public static int toUint16(Object obj) {
        return (obj instanceof Integer ? ((Integer) obj).intValue() : ScriptRuntime.toInt32(obj)) % 65536;
    }

    public static long toUint32(Object obj) {
        return ((long) ScriptRuntime.toNumber(obj)) % THIRTYTWO_BIT;
    }

    public static int toUint8(Object obj) {
        return (obj instanceof Integer ? ((Integer) obj).intValue() : ScriptRuntime.toInt32(obj)) % 256;
    }

    public static int toUint8Clamp(Object obj) {
        double number = ScriptRuntime.toNumber(obj);
        if (number <= 0.0d) {
            return 0;
        }
        if (number >= 255.0d) {
            return 255;
        }
        double floor = Math.floor(number);
        double d = 0.5d + floor;
        if (d < number) {
            return (int) (floor + 1.0d);
        }
        if (number < d) {
            return (int) floor;
        }
        int i = (int) floor;
        return i % 2 != 0 ? i + 1 : i;
    }
}
