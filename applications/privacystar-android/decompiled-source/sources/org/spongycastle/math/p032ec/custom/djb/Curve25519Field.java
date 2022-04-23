package org.spongycastle.math.p032ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;
/* renamed from: org.spongycastle.math.ec.custom.djb.Curve25519Field */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/djb/Curve25519Field.class */
public class Curve25519Field {

    /* renamed from: M */
    private static final long f1557M = 4294967295L;

    /* renamed from: P7 */
    private static final int f1559P7 = Integer.MAX_VALUE;
    private static final int PInv = 19;

    /* renamed from: P */
    static final int[] f1558P = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] PExt = {361, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, 1073741823};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat256.add(iArr, iArr2, iArr3);
        if (Nat256.gte(iArr3, f1558P)) {
            subPFrom(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat.add(16, iArr, iArr2, iArr3);
        if (Nat.gte(16, iArr3, PExt)) {
            subPExtFrom(iArr3);
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        Nat.inc(8, iArr, iArr2);
        if (Nat256.gte(iArr2, f1558P)) {
            subPFrom(iArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int addPExtTo(int[] r9) {
        /*
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            int[] r1 = org.spongycastle.math.p032ec.custom.djb.Curve25519Field.PExt
            r2 = 0
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 0
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002f
            r0 = 8
            r1 = r9
            r2 = 1
            int r0 = org.spongycastle.math.raw.Nat.incAt(r0, r1, r2)
            long r0 = (long) r0
            r10 = r0
        L_0x002f:
            r0 = r10
            r1 = r9
            r2 = 8
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = 19
            long r1 = r1 - r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 8
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005c
            r0 = 15
            r1 = r9
            r2 = 9
            int r0 = org.spongycastle.math.raw.Nat.decAt(r0, r1, r2)
            long r0 = (long) r0
            r10 = r0
        L_0x005c:
            r0 = r10
            r1 = r9
            r2 = 15
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            int[] r3 = org.spongycastle.math.p032ec.custom.djb.Curve25519Field.PExt
            r4 = 15
            r3 = r3[r4]
            r4 = 1
            int r3 = r3 + r4
            long r3 = (long) r3
            long r2 = r2 & r3
            long r1 = r1 + r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 15
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.djb.Curve25519Field.addPExtTo(int[]):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int addPTo(int[] r7) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 19
            long r0 = r0 - r1
            r8 = r0
            r0 = r7
            r1 = 0
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0028
            r0 = 7
            r1 = r7
            r2 = 1
            int r0 = org.spongycastle.math.raw.Nat.decAt(r0, r1, r2)
            long r0 = (long) r0
            r8 = r0
        L_0x0028:
            r0 = r8
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r7
            r3 = 7
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = 2147483648(0x80000000, double:1.0609978955E-314)
            long r1 = r1 + r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 7
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.djb.Curve25519Field.addPTo(int[]):int");
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat256.fromBigInteger(bigInteger);
        while (Nat256.gte(fromBigInteger, f1558P)) {
            Nat256.subFrom(f1558P, fromBigInteger);
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(8, iArr, 0, iArr2);
            return;
        }
        Nat256.add(iArr, f1558P, iArr2);
        Nat.shiftDownBit(8, iArr2, 0);
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat256.createExt();
        Nat256.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat256.mulAddTo(iArr, iArr2, iArr3);
        if (Nat.gte(16, iArr3, PExt)) {
            subPExtFrom(iArr3);
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (Nat256.isZero(iArr)) {
            Nat256.zero(iArr2);
        } else {
            Nat256.sub(f1558P, iArr, iArr2);
        }
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        int i = iArr[7];
        Nat.shiftUpBit(8, iArr, 8, i, iArr2, 0);
        int mulByWordAddTo = Nat256.mulByWordAddTo(19, iArr, iArr2);
        int i2 = iArr2[7];
        iArr2[7] = (i2 & Integer.MAX_VALUE) + Nat.addWordTo(7, ((mulByWordAddTo << 1) + ((i2 >>> 31) - (i >>> 31))) * 19, iArr2);
        if (Nat256.gte(iArr2, f1558P)) {
            subPFrom(iArr2);
        }
    }

    public static void reduce27(int i, int[] iArr) {
        int i2 = iArr[7];
        iArr[7] = (i2 & Integer.MAX_VALUE) + Nat.addWordTo(7, ((i << 1) | (i2 >>> 31)) * 19, iArr);
        if (Nat256.gte(iArr, f1558P)) {
            subPFrom(iArr);
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat256.createExt();
        Nat256.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i, int[] iArr2) {
        int[] createExt = Nat256.createExt();
        Nat256.square(iArr, createExt);
        reduce(createExt, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                Nat256.square(iArr2, createExt);
                reduce(createExt, iArr2);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int subPExtFrom(int[] r9) {
        /*
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            int[] r1 = org.spongycastle.math.p032ec.custom.djb.Curve25519Field.PExt
            r2 = 0
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 - r1
            r10 = r0
            r0 = r9
            r1 = 0
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002f
            r0 = 8
            r1 = r9
            r2 = 1
            int r0 = org.spongycastle.math.raw.Nat.decAt(r0, r1, r2)
            long r0 = (long) r0
            r10 = r0
        L_0x002f:
            r0 = r10
            r1 = r9
            r2 = 8
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = 19
            long r1 = r1 + r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 8
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005c
            r0 = 15
            r1 = r9
            r2 = 9
            int r0 = org.spongycastle.math.raw.Nat.incAt(r0, r1, r2)
            long r0 = (long) r0
            r10 = r0
        L_0x005c:
            r0 = r10
            r1 = r9
            r2 = 15
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            int[] r3 = org.spongycastle.math.p032ec.custom.djb.Curve25519Field.PExt
            r4 = 15
            r3 = r3[r4]
            r4 = 1
            int r3 = r3 + r4
            long r3 = (long) r3
            long r2 = r2 & r3
            long r1 = r1 - r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = 15
            r2 = r10
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r10
            r1 = 32
            long r0 = r0 >> r1
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.djb.Curve25519Field.subPExtFrom(int[]):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int subPFrom(int[] r7) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 19
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 0
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0028
            r0 = 7
            r1 = r7
            r2 = 1
            int r0 = org.spongycastle.math.raw.Nat.incAt(r0, r1, r2)
            long r0 = (long) r0
            r8 = r0
        L_0x0028:
            r0 = r8
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r7
            r3 = 7
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = 2147483648(0x80000000, double:1.0609978955E-314)
            long r1 = r1 - r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 7
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.djb.Curve25519Field.subPFrom(int[]):int");
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.sub(iArr, iArr2, iArr3) != 0) {
            addPTo(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(16, iArr, iArr2, iArr3) != 0) {
            addPExtTo(iArr3);
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        Nat.shiftUpBit(8, iArr, 0, iArr2);
        if (Nat256.gte(iArr2, f1558P)) {
            subPFrom(iArr2);
        }
    }
}
