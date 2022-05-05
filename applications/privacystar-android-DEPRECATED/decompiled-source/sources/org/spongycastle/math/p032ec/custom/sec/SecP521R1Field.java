package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat512;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP521R1Field */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP521R1Field.class */
public class SecP521R1Field {

    /* renamed from: P */
    static final int[] f1623P = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511};
    private static final int P16 = 511;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
        if (org.spongycastle.math.raw.Nat.m104eq(16, r7, org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P) != false) goto L_0x0033;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void add(int[] r5, int[] r6, int[] r7) {
        /*
            r0 = 16
            r1 = r5
            r2 = r6
            r3 = r7
            int r0 = org.spongycastle.math.raw.Nat.add(r0, r1, r2, r3)
            r1 = r5
            r2 = 16
            r1 = r1[r2]
            int r0 = r0 + r1
            r1 = r6
            r2 = 16
            r1 = r1[r2]
            int r0 = r0 + r1
            r8 = r0
            r0 = r8
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 > r1) goto L_0x0033
            r0 = r8
            r9 = r0
            r0 = r8
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 != r1) goto L_0x0041
            r0 = r8
            r9 = r0
            r0 = 16
            r1 = r7
            int[] r2 = org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P
            boolean r0 = org.spongycastle.math.raw.Nat.m104eq(r0, r1, r2)
            if (r0 == 0) goto L_0x0041
        L_0x0033:
            r0 = r8
            r1 = 16
            r2 = r7
            int r1 = org.spongycastle.math.raw.Nat.inc(r1, r2)
            int r0 = r0 + r1
            r1 = 511(0x1ff, float:7.16E-43)
            r0 = r0 & r1
            r9 = r0
        L_0x0041:
            r0 = r7
            r1 = 16
            r2 = r9
            r0[r1] = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.add(int[], int[], int[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (org.spongycastle.math.raw.Nat.m104eq(16, r5, org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P) != false) goto L_0x002b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void addOne(int[] r4, int[] r5) {
        /*
            r0 = 16
            r1 = r4
            r2 = r5
            int r0 = org.spongycastle.math.raw.Nat.inc(r0, r1, r2)
            r1 = r4
            r2 = 16
            r1 = r1[r2]
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 > r1) goto L_0x002b
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 != r1) goto L_0x0038
            r0 = r6
            r7 = r0
            r0 = 16
            r1 = r5
            int[] r2 = org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P
            boolean r0 = org.spongycastle.math.raw.Nat.m104eq(r0, r1, r2)
            if (r0 == 0) goto L_0x0038
        L_0x002b:
            r0 = r6
            r1 = 16
            r2 = r5
            int r1 = org.spongycastle.math.raw.Nat.inc(r1, r2)
            int r0 = r0 + r1
            r1 = 511(0x1ff, float:7.16E-43)
            r0 = r0 & r1
            r7 = r0
        L_0x0038:
            r0 = r5
            r1 = 16
            r2 = r7
            r0[r1] = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.addOne(int[], int[]):void");
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat.fromBigInteger(521, bigInteger);
        if (Nat.m104eq(17, fromBigInteger, f1623P)) {
            Nat.zero(17, fromBigInteger);
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        int i = iArr[16];
        iArr2[16] = (Nat.shiftDownBit(16, iArr, i, iArr2) >>> 23) | (i >>> 1);
    }

    protected static void implMultiply(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat512.mul(iArr, iArr2, iArr3);
        int i = iArr[16];
        int i2 = iArr2[16];
        iArr3[32] = Nat.mul31BothAdd(16, i, iArr2, i2, iArr, iArr3, 16) + (i * i2);
    }

    protected static void implSquare(int[] iArr, int[] iArr2) {
        Nat512.square(iArr, iArr2);
        int i = iArr[16];
        iArr2[32] = Nat.mulWordAddTo(16, i << 1, iArr, 0, iArr2, 16) + (i * i);
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = Nat.create(33);
        implMultiply(iArr, iArr2, create);
        reduce(create, iArr3);
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (Nat.isZero(17, iArr)) {
            Nat.zero(17, iArr2);
        } else {
            Nat.sub(17, f1623P, iArr, iArr2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003e, code lost:
        if (org.spongycastle.math.raw.Nat.m104eq(16, r9, org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P) != false) goto L_0x0041;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduce(int[] r8, int[] r9) {
        /*
            r0 = r8
            r1 = 32
            r0 = r0[r1]
            r10 = r0
            r0 = 16
            r1 = r8
            r2 = 16
            r3 = 9
            r4 = r10
            r5 = r9
            r6 = 0
            int r0 = org.spongycastle.math.raw.Nat.shiftDownBits(r0, r1, r2, r3, r4, r5, r6)
            r1 = 23
            int r0 = r0 >>> r1
            r1 = r10
            r2 = 9
            int r1 = r1 >>> r2
            int r0 = r0 + r1
            r1 = 16
            r2 = r8
            r3 = r9
            int r1 = org.spongycastle.math.raw.Nat.addTo(r1, r2, r3)
            int r0 = r0 + r1
            r11 = r0
            r0 = r11
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 > r1) goto L_0x0041
            r0 = r11
            r10 = r0
            r0 = r11
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 != r1) goto L_0x004e
            r0 = r11
            r10 = r0
            r0 = 16
            r1 = r9
            int[] r2 = org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P
            boolean r0 = org.spongycastle.math.raw.Nat.m104eq(r0, r1, r2)
            if (r0 == 0) goto L_0x004e
        L_0x0041:
            r0 = r11
            r1 = 16
            r2 = r9
            int r1 = org.spongycastle.math.raw.Nat.inc(r1, r2)
            int r0 = r0 + r1
            r1 = 511(0x1ff, float:7.16E-43)
            r0 = r0 & r1
            r10 = r0
        L_0x004e:
            r0 = r9
            r1 = 16
            r2 = r10
            r0[r1] = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.reduce(int[], int[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0031, code lost:
        if (org.spongycastle.math.raw.Nat.m104eq(16, r4, org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P) != false) goto L_0x0034;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void reduce23(int[] r4) {
        /*
            r0 = r4
            r1 = 16
            r0 = r0[r1]
            r5 = r0
            r0 = 16
            r1 = r5
            r2 = 9
            int r1 = r1 >>> r2
            r2 = r4
            int r0 = org.spongycastle.math.raw.Nat.addWordTo(r0, r1, r2)
            r1 = r5
            r2 = 511(0x1ff, float:7.16E-43)
            r1 = r1 & r2
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 > r1) goto L_0x0034
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 511(0x1ff, float:7.16E-43)
            if (r0 != r1) goto L_0x0041
            r0 = r6
            r5 = r0
            r0 = 16
            r1 = r4
            int[] r2 = org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.f1623P
            boolean r0 = org.spongycastle.math.raw.Nat.m104eq(r0, r1, r2)
            if (r0 == 0) goto L_0x0041
        L_0x0034:
            r0 = r6
            r1 = 16
            r2 = r4
            int r1 = org.spongycastle.math.raw.Nat.inc(r1, r2)
            int r0 = r0 + r1
            r1 = 511(0x1ff, float:7.16E-43)
            r0 = r0 & r1
            r5 = r0
        L_0x0041:
            r0 = r4
            r1 = 16
            r2 = r5
            r0[r1] = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecP521R1Field.reduce23(int[]):void");
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] create = Nat.create(33);
        implSquare(iArr, create);
        reduce(create, iArr2);
    }

    public static void squareN(int[] iArr, int i, int[] iArr2) {
        int[] create = Nat.create(33);
        implSquare(iArr, create);
        reduce(create, iArr2);
        while (true) {
            i--;
            if (i > 0) {
                implSquare(iArr2, create);
                reduce(create, iArr2);
            } else {
                return;
            }
        }
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        int sub = (Nat.sub(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        int i = sub;
        if (sub < 0) {
            i = (sub + Nat.dec(16, iArr3)) & 511;
        }
        iArr3[16] = i;
    }

    public static void twice(int[] iArr, int[] iArr2) {
        int i = iArr[16];
        iArr2[16] = (Nat.shiftUpBit(16, iArr, i << 23, iArr2) | (i << 1)) & 511;
    }
}
