package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP192R1Field */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP192R1Field.class */
public class SecP192R1Field {

    /* renamed from: M */
    private static final long f1590M = 4294967295L;

    /* renamed from: P5 */
    private static final int f1592P5 = -1;
    private static final int PExt11 = -1;

    /* renamed from: P */
    static final int[] f1591P = {-1, -1, -2, -1, -1, -1};
    static final int[] PExt = {1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};
    private static final int[] PExtInv = {-1, -1, -3, -1, -2, -1, 1, 0, 2};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.add(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && Nat192.gte(iArr3, f1591P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat.add(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && Nat.gte(12, iArr3, PExt))) && Nat.addTo(PExtInv.length, PExtInv, iArr3) != 0) {
            Nat.incAt(12, iArr3, PExtInv.length);
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && Nat192.gte(iArr2, f1591P))) {
            addPInvTo(iArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void addPInvTo(int[] r7) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 1
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
            if (r0 == 0) goto L_0x0032
            r0 = r10
            r1 = r7
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 1
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r8 = r0
        L_0x0032:
            r0 = r8
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r7
            r3 = 2
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = 1
            long r1 = r1 + r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 2
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0055
            r0 = 6
            r1 = r7
            r2 = 3
            int r0 = org.spongycastle.math.raw.Nat.incAt(r0, r1, r2)
        L_0x0055:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP192R1Field.addPInvTo(int[]):void");
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat192.fromBigInteger(bigInteger);
        if (fromBigInteger[5] == -1 && Nat192.gte(fromBigInteger, f1591P)) {
            Nat192.subFrom(f1591P, fromBigInteger);
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(6, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(6, iArr2, Nat192.add(iArr, f1591P, iArr2));
        }
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat192.createExt();
        Nat192.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat192.mulAddTo(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && Nat.gte(12, iArr3, PExt))) && Nat.addTo(PExtInv.length, PExtInv, iArr3) != 0) {
            Nat.incAt(12, iArr3, PExtInv.length);
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (Nat192.isZero(iArr)) {
            Nat192.zero(iArr2);
        } else {
            Nat192.sub(f1591P, iArr, iArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduce(int[] r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP192R1Field.reduce(int[], int[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduce32(int r7, int[] r8) {
        /*
            r0 = r7
            if (r0 == 0) goto L_0x006a
            r0 = r7
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r9 = r0
            r0 = r8
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = r9
            long r0 = r0 + r1
            r1 = 0
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            r1 = 0
            r2 = r11
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r11
            r1 = 32
            long r0 = r0 >> r1
            r13 = r0
            r0 = r13
            r11 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x004b
            r0 = r13
            r1 = r8
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            r1 = 1
            r2 = r11
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r11
            r1 = 32
            long r0 = r0 >> r1
            r11 = r0
        L_0x004b:
            r0 = r11
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r8
            r3 = 2
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = r9
            long r1 = r1 + r2
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            r1 = 2
            r2 = r11
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r11
            r1 = 32
            long r0 = r0 >> r1
            r11 = r0
            goto L_0x006d
        L_0x006a:
            r0 = 0
            r11 = r0
        L_0x006d:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007e
            r0 = 6
            r1 = r8
            r2 = 3
            int r0 = org.spongycastle.math.raw.Nat.incAt(r0, r1, r2)
            if (r0 != 0) goto L_0x008f
        L_0x007e:
            r0 = r8
            r1 = 5
            r0 = r0[r1]
            r1 = -1
            if (r0 != r1) goto L_0x0093
            r0 = r8
            int[] r1 = org.spongycastle.math.p032ec.custom.sec.SecP192R1Field.f1591P
            boolean r0 = org.spongycastle.math.raw.Nat192.gte(r0, r1)
            if (r0 == 0) goto L_0x0093
        L_0x008f:
            r0 = r8
            addPInvTo(r0)
        L_0x0093:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP192R1Field.reduce32(int, int[]):void");
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat192.createExt();
        Nat192.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i, int[] iArr2) {
        int[] createExt = Nat192.createExt();
        Nat192.square(iArr, createExt);
        reduce(createExt, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                Nat192.square(iArr2, createExt);
                reduce(createExt, iArr2);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void subPInvFrom(int[] r7) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r1 = 1
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
            if (r0 == 0) goto L_0x0032
            r0 = r10
            r1 = r7
            r2 = 1
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 1
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r8 = r0
        L_0x0032:
            r0 = r8
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r2 = r7
            r3 = 2
            r2 = r2[r3]
            long r2 = (long) r2
            long r1 = r1 & r2
            r2 = 1
            long r1 = r1 - r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r7
            r1 = 2
            r2 = r8
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r8
            r1 = 32
            long r0 = r0 >> r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0055
            r0 = 6
            r1 = r7
            r2 = 3
            int r0 = org.spongycastle.math.raw.Nat.decAt(r0, r1, r2)
        L_0x0055:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP192R1Field.subPInvFrom(int[]):void");
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.sub(iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(12, iArr, iArr2, iArr3) != 0 && Nat.subFrom(PExtInv.length, PExtInv, iArr3) != 0) {
            Nat.decAt(12, iArr3, PExtInv.length);
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && Nat192.gte(iArr2, f1591P))) {
            addPInvTo(iArr2);
        }
    }
}
