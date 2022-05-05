package org.spongycastle.pqc.math.linearalgebra;

import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2.class */
public final class PolynomialRingGF2 {
    private PolynomialRingGF2() {
    }

    public static int add(int i, int i2) {
        return i ^ i2;
    }

    public static int degree(int i) {
        int i2 = -1;
        while (i != 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static int degree(long j) {
        int i = 0;
        while (j != 0) {
            i++;
            j >>>= 1;
        }
        return i - 1;
    }

    public static int gcd(int i, int i2) {
        while (i2 != 0) {
            i2 = remainder(i2, i2);
        }
        return i2;
    }

    public static int getIrreduciblePolynomial(int i) {
        if (i < 0) {
            System.err.println("The Degree is negative");
            return 0;
        } else if (i > 31) {
            System.err.println("The Degree is more then 31");
            return 0;
        } else if (i == 0) {
            return 1;
        } else {
            for (int i2 = (1 << i) + 1; i2 < (1 << (i + 1)); i2 += 2) {
                if (isIrreducible(i2)) {
                    return i2;
                }
            }
            return 0;
        }
    }

    public static boolean isIrreducible(int i) {
        if (i == 0) {
            return false;
        }
        int degree = degree(i);
        int i2 = 2;
        for (int i3 = 0; i3 < (degree >>> 1); i3++) {
            i2 = modMultiply(i2, i2, i);
            if (gcd(i2 ^ 2, i) != 1) {
                return false;
            }
        }
        return true;
    }

    public static int modMultiply(int i, int i2, int i3) {
        int remainder = remainder(i, i3);
        int remainder2 = remainder(i2, i3);
        int i4 = 0;
        int i5 = 0;
        if (remainder2 != 0) {
            int degree = degree(i3);
            while (true) {
                i4 = i5;
                if (remainder == 0) {
                    break;
                }
                int i6 = i5;
                if (((byte) (remainder & 1)) == 1) {
                    i6 = i5 ^ remainder2;
                }
                int i7 = remainder >>> 1;
                int i8 = remainder2 << 1;
                i5 = i6;
                remainder = i7;
                remainder2 = i8;
                if (i8 >= (1 << degree)) {
                    remainder2 = i8 ^ i3;
                    i5 = i6;
                    remainder = i7;
                }
            }
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long multiply(int r5, int r6) {
        /*
            r0 = 0
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0039
            r0 = r6
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r11 = r0
        L_0x0011:
            r0 = r7
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0039
            r0 = r7
            r9 = r0
            r0 = r5
            r1 = 1
            r0 = r0 & r1
            byte r0 = (byte) r0
            r1 = 1
            if (r0 != r1) goto L_0x0029
            r0 = r7
            r1 = r11
            long r0 = r0 ^ r1
            r9 = r0
        L_0x0029:
            r0 = r5
            r1 = 1
            int r0 = r0 >>> r1
            r5 = r0
            r0 = r11
            r1 = 1
            long r0 = r0 << r1
            r11 = r0
            r0 = r9
            r7 = r0
            goto L_0x0011
        L_0x0039:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2.multiply(int, int):long");
    }

    public static int remainder(int i, int i2) {
        if (i2 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        while (degree(i) >= degree(i2)) {
            i ^= i2 << (degree(i) - degree(i2));
        }
        return i;
    }

    public static int rest(long j, int i) {
        if (i == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        long j2 = i & BodyPartID.bodyIdMax;
        while ((j >>> 32) != 0) {
            j ^= j2 << (degree(j) - degree(j2));
        }
        int i2 = (int) (j & (-1));
        while (degree(i2) >= degree(i)) {
            i2 ^= i << (degree(i2) - degree(i));
        }
        return i2;
    }
}
