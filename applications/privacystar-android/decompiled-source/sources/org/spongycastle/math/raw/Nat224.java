package org.spongycastle.math.raw;

import java.math.BigInteger;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/raw/Nat224.class */
public abstract class Nat224 {

    /* renamed from: M */
    private static final long f1644M = 4294967295L;

    public static int add(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (iArr[i + 0] & 4294967295L) + (iArr2[i2 + 0] & 4294967295L) + 0;
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[i2 + 1] & 4294967295L);
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[i2 + 2] & 4294967295L);
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[i2 + 3] & 4294967295L);
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (iArr2[i2 + 4] & 4294967295L);
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[i + 5] & 4294967295L) + (iArr2[i2 + 5] & 4294967295L);
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[i + 6] & 4294967295L) + (iArr2[i2 + 6] & 4294967295L);
        iArr3[i3 + 6] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr3[6] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int addBothTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        int i4 = i3 + 0;
        long j = (iArr[i + 0] & 4294967295L) + (iArr2[i2 + 0] & 4294967295L) + (iArr3[i4] & 4294967295L) + 0;
        iArr3[i4] = (int) j;
        int i5 = i3 + 1;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[i2 + 1] & 4294967295L) + (iArr3[i5] & 4294967295L);
        iArr3[i5] = (int) j2;
        int i6 = i3 + 2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[i2 + 2] & 4294967295L) + (iArr3[i6] & 4294967295L);
        iArr3[i6] = (int) j3;
        int i7 = i3 + 3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[i2 + 3] & 4294967295L) + (iArr3[i7] & 4294967295L);
        iArr3[i7] = (int) j4;
        int i8 = i3 + 4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (iArr2[i2 + 4] & 4294967295L) + (iArr3[i8] & 4294967295L);
        iArr3[i8] = (int) j5;
        int i9 = i3 + 5;
        long j6 = (j5 >>> 32) + (iArr[i + 5] & 4294967295L) + (iArr2[i2 + 5] & 4294967295L) + (iArr3[i9] & 4294967295L);
        iArr3[i9] = (int) j6;
        int i10 = i3 + 6;
        long j7 = (j6 >>> 32) + (iArr[i + 6] & 4294967295L) + (iArr2[i2 + 6] & 4294967295L) + (iArr3[i10] & 4294967295L);
        iArr3[i10] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (iArr3[6] & 4294967295L);
        iArr3[6] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int addTo(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        int i4 = i2 + 0;
        long j = (i3 & 4294967295L) + (iArr[i + 0] & 4294967295L) + (iArr2[i4] & 4294967295L);
        iArr2[i4] = (int) j;
        int i5 = i2 + 1;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[i5] & 4294967295L);
        iArr2[i5] = (int) j2;
        int i6 = i2 + 2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[i6] & 4294967295L);
        iArr2[i6] = (int) j3;
        int i7 = i2 + 3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[i7] & 4294967295L);
        iArr2[i7] = (int) j4;
        int i8 = i2 + 4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (iArr2[i8] & 4294967295L);
        iArr2[i8] = (int) j5;
        int i9 = i2 + 5;
        long j6 = (j5 >>> 32) + (iArr[i + 5] & 4294967295L) + (iArr2[i9] & 4294967295L);
        iArr2[i9] = (int) j6;
        int i10 = i2 + 6;
        long j7 = (j6 >>> 32) + (iArr[i + 6] & 4294967295L) + (4294967295L & iArr2[i10]);
        iArr2[i10] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr2[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr2[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (4294967295L & iArr2[6]);
        iArr2[6] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i, int[] iArr2, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = i + 0;
        long j = iArr[i11];
        long j2 = (j & 4294967295L) + (iArr2[i3] & 4294967295L) + 0;
        int i12 = (int) j2;
        iArr[i11] = i12;
        iArr2[i2 + 0] = i12;
        int i13 = i + 1;
        long j3 = iArr[i13];
        long j4 = (j2 >>> 32) + (j3 & 4294967295L) + (iArr2[i4] & 4294967295L);
        int i14 = (int) j4;
        iArr[i13] = i14;
        iArr2[i2 + 1] = i14;
        int i15 = i + 2;
        long j5 = iArr[i15];
        long j6 = (j4 >>> 32) + (j5 & 4294967295L) + (iArr2[i5] & 4294967295L);
        int i16 = (int) j6;
        iArr[i15] = i16;
        iArr2[i2 + 2] = i16;
        int i17 = i + 3;
        long j7 = iArr[i17];
        long j8 = (j6 >>> 32) + (j7 & 4294967295L) + (iArr2[i6] & 4294967295L);
        int i18 = (int) j8;
        iArr[i17] = i18;
        iArr2[i2 + 3] = i18;
        int i19 = i + 4;
        long j9 = iArr[i19];
        long j10 = (j8 >>> 32) + (j9 & 4294967295L) + (iArr2[i7] & 4294967295L);
        int i20 = (int) j10;
        iArr[i19] = i20;
        iArr2[i2 + 4] = i20;
        int i21 = i + 5;
        long j11 = iArr[i21];
        long j12 = (j10 >>> 32) + (j11 & 4294967295L) + (iArr2[i8] & 4294967295L);
        int i22 = (int) j12;
        iArr[i21] = i22;
        iArr2[i2 + 5] = i22;
        long j13 = (j12 >>> 32) + (iArr[i9] & 4294967295L) + (4294967295L & iArr2[i10]);
        int i23 = (int) j13;
        iArr[i + 6] = i23;
        iArr2[i2 + 6] = i23;
        return (int) (j13 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
    }

    public static int[] create() {
        return new int[7];
    }

    public static int[] createExt() {
        return new int[14];
    }

    public static boolean diff(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean gte = gte(iArr, i, iArr2, i2);
        if (gte) {
            sub(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            sub(iArr2, i2, iArr, i, iArr3, i3);
        }
        return gte;
    }

    /* renamed from: eq */
    public static boolean m100eq(int[] iArr, int[] iArr2) {
        for (int i = 6; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
            throw new IllegalArgumentException();
        }
        int[] create = create();
        int i = 0;
        while (bigInteger.signum() != 0) {
            create[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i++;
        }
        return create;
    }

    public static int getBit(int[] iArr, int i) {
        if (i == 0) {
            return iArr[0] & 1;
        }
        int i2 = i >> 5;
        if (i2 < 0 || i2 >= 7) {
            return 0;
        }
        return (iArr[i2] >>> (i & 31)) & 1;
    }

    public static boolean gte(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 6; i3 >= 0; i3--) {
            int i4 = iArr[i + i3] ^ Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE ^ iArr2[i2 + i3];
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i = 6; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 7; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 7; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr2[i2 + 4] & 4294967295L;
        long j6 = iArr2[i2 + 5] & 4294967295L;
        long j7 = iArr2[i2 + 6] & 4294967295L;
        long j8 = iArr[i + 0] & 4294967295L;
        long j9 = (j8 * j) + 0;
        iArr3[i3 + 0] = (int) j9;
        long j10 = (j9 >>> 32) + (j8 * j2);
        iArr3[i3 + 1] = (int) j10;
        long j11 = (j10 >>> 32) + (j8 * j3);
        iArr3[i3 + 2] = (int) j11;
        long j12 = (j11 >>> 32) + (j8 * j4);
        iArr3[i3 + 3] = (int) j12;
        long j13 = (j12 >>> 32) + (j8 * j5);
        iArr3[i3 + 4] = (int) j13;
        long j14 = (j13 >>> 32) + (j8 * j6);
        iArr3[i3 + 5] = (int) j14;
        long j15 = (j14 >>> 32) + (j8 * j7);
        iArr3[i3 + 6] = (int) j15;
        iArr3[i3 + 7] = (int) (j15 >>> 32);
        for (int i4 = 1; i4 < 7; i4++) {
            i3++;
            long j16 = iArr[i + i4] & 4294967295L;
            int i5 = i3 + 0;
            long j17 = (j16 * j) + (iArr3[i5] & 4294967295L) + 0;
            iArr3[i5] = (int) j17;
            int i6 = i3 + 1;
            long j18 = (j17 >>> 32) + (j16 * j2) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j18;
            int i7 = i3 + 2;
            long j19 = (j18 >>> 32) + (j16 * j3) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j19;
            int i8 = i3 + 3;
            long j20 = (j19 >>> 32) + (j16 * j4) + (iArr3[i8] & 4294967295L);
            iArr3[i8] = (int) j20;
            int i9 = i3 + 4;
            long j21 = (j20 >>> 32) + (j16 * j5) + (iArr3[i9] & 4294967295L);
            iArr3[i9] = (int) j21;
            int i10 = i3 + 5;
            long j22 = (j21 >>> 32) + (j16 * j6) + (iArr3[i10] & 4294967295L);
            iArr3[i10] = (int) j22;
            int i11 = i3 + 6;
            long j23 = (j22 >>> 32) + (j16 * j7) + (iArr3[i11] & 4294967295L);
            iArr3[i11] = (int) j23;
            iArr3[i3 + 7] = (int) (j23 >>> 32);
        }
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5] & 4294967295L;
        long j7 = iArr2[6] & 4294967295L;
        long j8 = iArr[0] & 4294967295L;
        long j9 = (j8 * j) + 0;
        iArr3[0] = (int) j9;
        long j10 = (j9 >>> 32) + (j8 * j2);
        int i = 1;
        iArr3[1] = (int) j10;
        long j11 = (j10 >>> 32) + (j8 * j3);
        iArr3[2] = (int) j11;
        long j12 = (j11 >>> 32) + (j8 * j4);
        iArr3[3] = (int) j12;
        long j13 = (j12 >>> 32) + (j8 * j5);
        iArr3[4] = (int) j13;
        long j14 = (j13 >>> 32) + (j8 * j6);
        iArr3[5] = (int) j14;
        long j15 = (j14 >>> 32) + (j8 * j7);
        iArr3[6] = (int) j15;
        iArr3[7] = (int) (j15 >>> 32);
        while (i < 7) {
            long j16 = iArr[i] & 4294967295L;
            int i2 = i + 0;
            long j17 = (j16 * j) + (iArr3[i2] & 4294967295L) + 0;
            iArr3[i2] = (int) j17;
            int i3 = i + 1;
            long j18 = (j17 >>> 32) + (j16 * j2) + (iArr3[i3] & 4294967295L);
            iArr3[i3] = (int) j18;
            int i4 = i + 2;
            long j19 = (j18 >>> 32) + (j16 * j3) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j19;
            int i5 = i + 3;
            long j20 = (j19 >>> 32) + (j16 * j4) + (iArr3[i5] & 4294967295L);
            iArr3[i5] = (int) j20;
            int i6 = i + 4;
            long j21 = (j20 >>> 32) + (j16 * j5) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j21;
            int i7 = i + 5;
            long j22 = (j21 >>> 32) + (j16 * j6) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j22;
            int i8 = i + 6;
            long j23 = (j22 >>> 32) + (j16 * j7) + (iArr3[i8] & 4294967295L);
            iArr3[i8] = (int) j23;
            iArr3[i + 7] = (int) (j23 >>> 32);
            i = i3;
        }
    }

    public static long mul33Add(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = i & 4294967295L;
        long j2 = iArr[i2 + 0] & 4294967295L;
        long j3 = (j * j2) + (iArr2[i3 + 0] & 4294967295L) + 0;
        iArr3[i4 + 0] = (int) j3;
        long j4 = iArr[i2 + 1] & 4294967295L;
        long j5 = (j3 >>> 32) + (j * j4) + j2 + (iArr2[i3 + 1] & 4294967295L);
        iArr3[i4 + 1] = (int) j5;
        long j6 = iArr[i2 + 2] & 4294967295L;
        long j7 = (j5 >>> 32) + (j * j6) + j4 + (iArr2[i3 + 2] & 4294967295L);
        iArr3[i4 + 2] = (int) j7;
        long j8 = iArr[i2 + 3] & 4294967295L;
        long j9 = (j7 >>> 32) + (j * j8) + j6 + (iArr2[i3 + 3] & 4294967295L);
        iArr3[i4 + 3] = (int) j9;
        long j10 = iArr[i2 + 4] & 4294967295L;
        long j11 = (j9 >>> 32) + (j * j10) + j8 + (iArr2[i3 + 4] & 4294967295L);
        iArr3[i4 + 4] = (int) j11;
        long j12 = iArr[i2 + 5] & 4294967295L;
        long j13 = (j11 >>> 32) + (j * j12) + j10 + (iArr2[i3 + 5] & 4294967295L);
        iArr3[i4 + 5] = (int) j13;
        long j14 = iArr[i2 + 6] & 4294967295L;
        long j15 = (j13 >>> 32) + (j * j14) + j12 + (iArr2[i3 + 6] & 4294967295L);
        iArr3[i4 + 6] = (int) j15;
        return (j15 >>> 32) + j14;
    }

    public static int mul33DWordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = j & 4294967295L;
        int i3 = i2 + 0;
        long j4 = (j2 * j3) + (iArr[i3] & 4294967295L) + 0;
        iArr[i3] = (int) j4;
        long j5 = j >>> 32;
        int i4 = i2 + 1;
        long j6 = (j4 >>> 32) + (j2 * j5) + j3 + (iArr[i4] & 4294967295L);
        iArr[i4] = (int) j6;
        int i5 = i2 + 2;
        long j7 = (j6 >>> 32) + j5 + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j7;
        int i6 = i2 + 3;
        long j8 = (j7 >>> 32) + (iArr[i6] & 4294967295L);
        iArr[i6] = (int) j8;
        return (j8 >>> 32) == 0 ? 0 : Nat.incAt(7, iArr, i2, 4);
    }

    public static int mul33WordAdd(int i, int i2, int[] iArr, int i3) {
        long j = i2 & 4294967295L;
        int i4 = i3 + 0;
        long j2 = ((i & 4294967295L) * j) + (iArr[i4] & 4294967295L) + 0;
        iArr[i4] = (int) j2;
        int i5 = i3 + 1;
        long j3 = (j2 >>> 32) + j + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j3;
        int i6 = i3 + 2;
        long j4 = (j3 >>> 32) + (iArr[i6] & 4294967295L);
        iArr[i6] = (int) j4;
        return (j4 >>> 32) == 0 ? 0 : Nat.incAt(7, iArr, i3, 3);
    }

    public static int mulAddTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2];
        long j4 = iArr2[i2 + 3];
        long j5 = iArr2[i2 + 4];
        long j6 = iArr2[i2 + 5];
        long j7 = iArr2[i2 + 6] & 4294967295L;
        int i11 = 0;
        long j8 = 0;
        while (i11 < 7) {
            long j9 = iArr[i + i11] & 4294967295L;
            long j10 = (j9 * j) + (iArr3[i4] & 4294967295L) + 0;
            iArr3[i3 + 0] = (int) j10;
            int i12 = i3 + 1;
            long j11 = (j10 >>> 32) + (j9 * j2) + (iArr3[i12] & 4294967295L);
            iArr3[i12] = (int) j11;
            long j12 = (j11 >>> 32) + (j9 * (j3 & 4294967295L)) + (iArr3[i5] & 4294967295L);
            iArr3[i3 + 2] = (int) j12;
            long j13 = (j12 >>> 32) + (j9 * (j4 & 4294967295L)) + (iArr3[i6] & 4294967295L);
            iArr3[i3 + 3] = (int) j13;
            long j14 = (j13 >>> 32) + (j9 * (j5 & 4294967295L)) + (iArr3[i7] & 4294967295L);
            iArr3[i3 + 4] = (int) j14;
            long j15 = (j14 >>> 32) + (j9 * (j6 & 4294967295L)) + (iArr3[i8] & 4294967295L);
            iArr3[i3 + 5] = (int) j15;
            long j16 = (j15 >>> 32) + (j9 * j7) + (iArr3[i9] & 4294967295L);
            iArr3[i3 + 6] = (int) j16;
            long j17 = (j16 >>> 32) + j8 + (iArr3[i10] & 4294967295L);
            iArr3[i3 + 7] = (int) j17;
            j8 = j17 >>> 32;
            i11++;
            i3 = i12;
        }
        return (int) j8;
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0];
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5];
        long j7 = iArr2[6] & 4294967295L;
        long j8 = 0;
        int i = 0;
        while (i < 7) {
            long j9 = iArr[i] & 4294967295L;
            int i2 = i + 0;
            long j10 = (j9 * (j & 4294967295L)) + (iArr3[i2] & 4294967295L) + 0;
            iArr3[i2] = (int) j10;
            int i3 = i + 1;
            long j11 = (j10 >>> 32) + (j9 * j2) + (iArr3[i3] & 4294967295L);
            iArr3[i3] = (int) j11;
            int i4 = i + 2;
            long j12 = (j11 >>> 32) + (j9 * j3) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j12;
            int i5 = i + 3;
            long j13 = (j12 >>> 32) + (j9 * j4) + (iArr3[i5] & 4294967295L);
            iArr3[i5] = (int) j13;
            int i6 = i + 4;
            long j14 = (j13 >>> 32) + (j9 * j5) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j14;
            int i7 = i + 5;
            long j15 = (j14 >>> 32) + (j9 * (j6 & 4294967295L)) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j15;
            int i8 = i + 6;
            long j16 = (j15 >>> 32) + (j9 * j7) + (iArr3[i8] & 4294967295L);
            iArr3[i8] = (int) j16;
            int i9 = i + 7;
            long j17 = (j16 >>> 32) + j8 + (iArr3[i9] & 4294967295L);
            iArr3[i9] = (int) j17;
            j8 = j17 >>> 32;
            i = i3;
        }
        return (int) j8;
    }

    public static int mulByWord(int i, int[] iArr) {
        long j = i & 4294967295L;
        long j2 = ((iArr[0] & 4294967295L) * j) + 0;
        iArr[0] = (int) j2;
        long j3 = (j2 >>> 32) + ((iArr[1] & 4294967295L) * j);
        iArr[1] = (int) j3;
        long j4 = (j3 >>> 32) + ((iArr[2] & 4294967295L) * j);
        iArr[2] = (int) j4;
        long j5 = (j4 >>> 32) + ((iArr[3] & 4294967295L) * j);
        iArr[3] = (int) j5;
        long j6 = (j5 >>> 32) + ((iArr[4] & 4294967295L) * j);
        iArr[4] = (int) j6;
        long j7 = (j6 >>> 32) + ((iArr[5] & 4294967295L) * j);
        iArr[5] = (int) j7;
        long j8 = (j7 >>> 32) + (j * (4294967295L & iArr[6]));
        iArr[6] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int mulByWordAddTo(int i, int[] iArr, int[] iArr2) {
        long j = i & 4294967295L;
        long j2 = ((iArr2[0] & 4294967295L) * j) + (iArr[0] & 4294967295L) + 0;
        iArr2[0] = (int) j2;
        long j3 = (j2 >>> 32) + ((iArr2[1] & 4294967295L) * j) + (iArr[1] & 4294967295L);
        iArr2[1] = (int) j3;
        long j4 = (j3 >>> 32) + ((iArr2[2] & 4294967295L) * j) + (iArr[2] & 4294967295L);
        iArr2[2] = (int) j4;
        long j5 = (j4 >>> 32) + ((iArr2[3] & 4294967295L) * j) + (iArr[3] & 4294967295L);
        iArr2[3] = (int) j5;
        long j6 = (j5 >>> 32) + ((iArr2[4] & 4294967295L) * j) + (iArr[4] & 4294967295L);
        iArr2[4] = (int) j6;
        long j7 = (j6 >>> 32) + ((iArr2[5] & 4294967295L) * j) + (iArr[5] & 4294967295L);
        iArr2[5] = (int) j7;
        long j8 = (j7 >>> 32) + (j * (iArr2[6] & 4294967295L)) + (4294967295L & iArr[6]);
        iArr2[6] = (int) j8;
        return (int) (j8 >>> 32);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int mulWord(int r9, int[] r10, int[] r11, int r12) {
        /*
            r0 = r9
            long r0 = (long) r0
            r13 = r0
            r0 = 0
            r15 = r0
            r0 = 0
            r9 = r0
        L_0x0009:
            r0 = r15
            r1 = r10
            r2 = r9
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r2 = r13
            r3 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r3
            long r1 = r1 * r2
            long r0 = r0 + r1
            r15 = r0
            r0 = r11
            r1 = r12
            r2 = r9
            int r1 = r1 + r2
            r2 = r15
            int r2 = (int) r2
            r0[r1] = r2
            r0 = r15
            r1 = 32
            long r0 = r0 >>> r1
            r17 = r0
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r19 = r0
            r0 = r17
            r15 = r0
            r0 = r19
            r9 = r0
            r0 = r19
            r1 = 7
            if (r0 < r1) goto L_0x0009
            r0 = r17
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.raw.Nat224.mulWord(int, int[], int[], int):int");
    }

    public static int mulWordAddTo(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = i & 4294967295L;
        int i4 = i3 + 0;
        long j2 = ((iArr[i2 + 0] & 4294967295L) * j) + (iArr2[i4] & 4294967295L) + 0;
        iArr2[i4] = (int) j2;
        int i5 = i3 + 1;
        long j3 = (j2 >>> 32) + ((iArr[i2 + 1] & 4294967295L) * j) + (iArr2[i5] & 4294967295L);
        iArr2[i5] = (int) j3;
        int i6 = i3 + 2;
        long j4 = (j3 >>> 32) + ((iArr[i2 + 2] & 4294967295L) * j) + (iArr2[i6] & 4294967295L);
        iArr2[i6] = (int) j4;
        int i7 = i3 + 3;
        long j5 = (j4 >>> 32) + ((iArr[i2 + 3] & 4294967295L) * j) + (iArr2[i7] & 4294967295L);
        iArr2[i7] = (int) j5;
        int i8 = i3 + 4;
        long j6 = (j5 >>> 32) + ((iArr[i2 + 4] & 4294967295L) * j) + (iArr2[i8] & 4294967295L);
        iArr2[i8] = (int) j6;
        int i9 = i3 + 5;
        long j7 = (j6 >>> 32) + ((iArr[i2 + 5] & 4294967295L) * j) + (iArr2[i9] & 4294967295L);
        iArr2[i9] = (int) j7;
        int i10 = i3 + 6;
        long j8 = (j7 >>> 32) + (j * (iArr[i2 + 6] & 4294967295L)) + (iArr2[i10] & 4294967295L);
        iArr2[i10] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int mulWordDwordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        int i3 = i2 + 0;
        long j3 = ((j & 4294967295L) * j2) + (iArr[i3] & 4294967295L) + 0;
        iArr[i3] = (int) j3;
        int i4 = i2 + 1;
        long j4 = (j3 >>> 32) + (j2 * (j >>> 32)) + (iArr[i4] & 4294967295L);
        iArr[i4] = (int) j4;
        int i5 = i2 + 2;
        long j5 = (j4 >>> 32) + (iArr[i5] & 4294967295L);
        iArr[i5] = (int) j5;
        return (j5 >>> 32) == 0 ? 0 : Nat.incAt(7, iArr, i2, 3);
    }

    public static void square(int[] iArr, int i, int[] iArr2, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        long j = iArr[i + 0] & 4294967295L;
        int i7 = 14;
        int i8 = 6;
        int i9 = 0;
        while (true) {
            int i10 = i8 - 1;
            long j2 = iArr[i + i8] & 4294967295L;
            long j3 = j2 * j2;
            int i11 = i7 - 1;
            iArr2[i2 + i11] = ((int) (j3 >>> 33)) | (i9 << 31);
            i7 = i11 - 1;
            iArr2[i2 + i7] = (int) (j3 >>> 1);
            i9 = (int) j3;
            if (i10 <= 0) {
                long j4 = j * j;
                iArr2[i2 + 0] = (int) j4;
                int i12 = (int) (j4 >>> 32);
                long j5 = iArr[i + 1] & 4294967295L;
                int i13 = i2 + 2;
                long j6 = iArr2[i13];
                long j7 = (((i9 << 31) & 4294967295L) | (j4 >>> 33)) + (j5 * j);
                int i14 = (int) j7;
                iArr2[i2 + 1] = (i14 << 1) | (i12 & 1);
                long j8 = iArr[i + 2] & 4294967295L;
                int i15 = i2 + 3;
                long j9 = iArr2[i15];
                int i16 = i2 + 4;
                long j10 = iArr2[i16];
                long j11 = (j6 & 4294967295L) + (j7 >>> 32) + (j8 * j);
                int i17 = (int) j11;
                iArr2[i13] = (i14 >>> 31) | (i17 << 1);
                long j12 = (j9 & 4294967295L) + (j11 >>> 32) + (j8 * j5);
                long j13 = (j10 & 4294967295L) + (j12 >>> 32);
                long j14 = iArr[i + 3] & 4294967295L;
                long j15 = (iArr2[i3] & 4294967295L) + (j13 >>> 32);
                int i18 = i2 + 6;
                long j16 = iArr2[i18];
                long j17 = (j12 & 4294967295L) + (j14 * j);
                int i19 = (int) j17;
                iArr2[i15] = (i17 >>> 31) | (i19 << 1);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j14 * j5);
                long j19 = (j15 & 4294967295L) + (j18 >>> 32) + (j14 * j8);
                long j20 = (j16 & 4294967295L) + (j15 >>> 32) + (j19 >>> 32);
                long j21 = iArr[i + 4] & 4294967295L;
                long j22 = (iArr2[i4] & 4294967295L) + (j20 >>> 32);
                int i20 = i2 + 8;
                long j23 = iArr2[i20];
                long j24 = (j18 & 4294967295L) + (j21 * j);
                int i21 = (int) j24;
                iArr2[i16] = (i19 >>> 31) | (i21 << 1);
                long j25 = (j19 & 4294967295L) + (j24 >>> 32) + (j21 * j5);
                long j26 = (j20 & 4294967295L) + (j25 >>> 32) + (j21 * j8);
                long j27 = (j22 & 4294967295L) + (j26 >>> 32) + (j21 * j14);
                long j28 = (j23 & 4294967295L) + (j22 >>> 32) + (j27 >>> 32);
                long j29 = iArr[i + 5] & 4294967295L;
                long j30 = (iArr2[i5] & 4294967295L) + (j28 >>> 32);
                int i22 = i2 + 10;
                long j31 = iArr2[i22];
                long j32 = (j25 & 4294967295L) + (j29 * j);
                int i23 = (int) j32;
                iArr2[i2 + 5] = (i21 >>> 31) | (i23 << 1);
                long j33 = (j26 & 4294967295L) + (j32 >>> 32) + (j29 * j5);
                long j34 = (j27 & 4294967295L) + (j33 >>> 32) + (j29 * j8);
                long j35 = (j28 & 4294967295L) + (j34 >>> 32) + (j29 * j14);
                long j36 = (j30 & 4294967295L) + (j35 >>> 32) + (j29 * j21);
                long j37 = (j31 & 4294967295L) + (j30 >>> 32) + (j36 >>> 32);
                long j38 = iArr[i + 6] & 4294967295L;
                long j39 = (iArr2[i6] & 4294967295L) + (j37 >>> 32);
                int i24 = i2 + 12;
                long j40 = iArr2[i24];
                long j41 = (j33 & 4294967295L) + (j38 * j);
                int i25 = (int) j41;
                iArr2[i18] = (i23 >>> 31) | (i25 << 1);
                long j42 = (j34 & 4294967295L) + (j41 >>> 32) + (j5 * j38);
                long j43 = (j42 >>> 32) + (j38 * j8) + (j35 & 4294967295L);
                long j44 = (j36 & 4294967295L) + (j43 >>> 32) + (j38 * j14);
                long j45 = (j37 & 4294967295L) + (j44 >>> 32) + (j38 * j21);
                long j46 = (4294967295L & j39) + (j45 >>> 32) + (j38 * j29);
                long j47 = (j40 & 4294967295L) + (j39 >>> 32) + (j46 >>> 32);
                int i26 = (int) j42;
                iArr2[i2 + 7] = (i25 >>> 31) | (i26 << 1);
                int i27 = (int) j43;
                iArr2[i20] = (i26 >>> 31) | (i27 << 1);
                int i28 = (int) j44;
                iArr2[i2 + 9] = (i27 >>> 31) | (i28 << 1);
                int i29 = (int) j45;
                iArr2[i22] = (i28 >>> 31) | (i29 << 1);
                int i30 = (int) j46;
                iArr2[i2 + 11] = (i29 >>> 31) | (i30 << 1);
                int i31 = (int) j47;
                iArr2[i24] = (i30 >>> 31) | (i31 << 1);
                int i32 = i2 + 13;
                iArr2[i32] = ((iArr2[i32] + ((int) (j47 >>> 32))) << 1) | (i31 >>> 31);
                return;
            }
            i8 = i10;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 6;
        int i2 = 14;
        int i3 = 0;
        while (true) {
            int i4 = i - 1;
            long j2 = iArr[i] & 4294967295L;
            long j3 = j2 * j2;
            int i5 = i2 - 1;
            iArr2[i5] = (i3 << 31) | ((int) (j3 >>> 33));
            i2 = i5 - 1;
            iArr2[i2] = (int) (j3 >>> 1);
            i3 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                iArr2[0] = (int) j4;
                int i6 = (int) (j4 >>> 32);
                long j5 = iArr[1] & 4294967295L;
                long j6 = iArr2[2];
                long j7 = ((j4 >>> 33) | ((i3 << 31) & 4294967295L)) + (j5 * j);
                int i7 = (int) j7;
                iArr2[1] = (i7 << 1) | (i6 & 1);
                long j8 = iArr[2] & 4294967295L;
                long j9 = iArr2[3];
                long j10 = iArr2[4];
                long j11 = (j6 & 4294967295L) + (j7 >>> 32) + (j8 * j);
                int i8 = (int) j11;
                iArr2[2] = (i8 << 1) | (i7 >>> 31);
                long j12 = (j9 & 4294967295L) + (j11 >>> 32) + (j8 * j5);
                long j13 = (j10 & 4294967295L) + (j12 >>> 32);
                long j14 = iArr[3] & 4294967295L;
                long j15 = (iArr2[5] & 4294967295L) + (j13 >>> 32);
                long j16 = iArr2[6];
                long j17 = (j12 & 4294967295L) + (j14 * j);
                int i9 = (int) j17;
                iArr2[3] = (i8 >>> 31) | (i9 << 1);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j14 * j5);
                long j19 = (j15 & 4294967295L) + (j18 >>> 32) + (j14 * j8);
                long j20 = (j16 & 4294967295L) + (j15 >>> 32) + (j19 >>> 32);
                long j21 = iArr[4] & 4294967295L;
                long j22 = (iArr2[7] & 4294967295L) + (j20 >>> 32);
                long j23 = iArr2[8];
                long j24 = (j18 & 4294967295L) + (j21 * j);
                int i10 = (int) j24;
                iArr2[4] = (i9 >>> 31) | (i10 << 1);
                long j25 = (j19 & 4294967295L) + (j24 >>> 32) + (j21 * j5);
                long j26 = (j20 & 4294967295L) + (j25 >>> 32) + (j21 * j8);
                long j27 = (j22 & 4294967295L) + (j26 >>> 32) + (j21 * j14);
                long j28 = (j23 & 4294967295L) + (j22 >>> 32) + (j27 >>> 32);
                long j29 = iArr[5] & 4294967295L;
                long j30 = (iArr2[9] & 4294967295L) + (j28 >>> 32);
                long j31 = iArr2[10];
                long j32 = (j25 & 4294967295L) + (j29 * j);
                int i11 = (int) j32;
                iArr2[5] = (i10 >>> 31) | (i11 << 1);
                long j33 = (j26 & 4294967295L) + (j32 >>> 32) + (j29 * j5);
                long j34 = (j27 & 4294967295L) + (j33 >>> 32) + (j29 * j8);
                long j35 = (j28 & 4294967295L) + (j34 >>> 32) + (j29 * j14);
                long j36 = (j30 & 4294967295L) + (j35 >>> 32) + (j29 * j21);
                long j37 = (j31 & 4294967295L) + (j30 >>> 32) + (j36 >>> 32);
                long j38 = iArr[6] & 4294967295L;
                long j39 = (iArr2[11] & 4294967295L) + (j37 >>> 32);
                long j40 = iArr2[12];
                long j41 = (j33 & 4294967295L) + (j38 * j);
                int i12 = (int) j41;
                iArr2[6] = (i11 >>> 31) | (i12 << 1);
                long j42 = (j34 & 4294967295L) + (j41 >>> 32) + (j38 * j5);
                long j43 = (j42 >>> 32) + (j38 * j8) + (j35 & 4294967295L);
                long j44 = (j36 & 4294967295L) + (j43 >>> 32) + (j38 * j14);
                long j45 = (j37 & 4294967295L) + (j44 >>> 32) + (j38 * j21);
                long j46 = (4294967295L & j39) + (j45 >>> 32) + (j38 * j29);
                long j47 = (j40 & 4294967295L) + (j39 >>> 32) + (j46 >>> 32);
                int i13 = (int) j42;
                iArr2[7] = (i12 >>> 31) | (i13 << 1);
                int i14 = (int) j43;
                iArr2[8] = (i13 >>> 31) | (i14 << 1);
                int i15 = (int) j44;
                iArr2[9] = (i14 >>> 31) | (i15 << 1);
                int i16 = (int) j45;
                iArr2[10] = (i15 >>> 31) | (i16 << 1);
                int i17 = (int) j46;
                iArr2[11] = (i16 >>> 31) | (i17 << 1);
                int i18 = (int) j47;
                iArr2[12] = (i17 >>> 31) | (i18 << 1);
                iArr2[13] = (i18 >>> 31) | ((iArr2[13] + ((int) (j47 >>> 32))) << 1);
                return;
            }
            i = i4;
        }
    }

    public static int sub(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((iArr[i + 0] & 4294967295L) - (iArr2[i2 + 0] & 4294967295L)) + 0;
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((iArr[i + 1] & 4294967295L) - (iArr2[i2 + 1] & 4294967295L));
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[i + 2] & 4294967295L) - (iArr2[i2 + 2] & 4294967295L));
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[i + 3] & 4294967295L) - (iArr2[i2 + 3] & 4294967295L));
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr[i + 4] & 4294967295L) - (iArr2[i2 + 4] & 4294967295L));
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr[i + 5] & 4294967295L) - (iArr2[i2 + 5] & 4294967295L));
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr[i + 6] & 4294967295L) - (iArr2[i2 + 6] & 4294967295L));
        iArr3[i3 + 6] = (int) j7;
        return (int) (j7 >> 32);
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr[6] & 4294967295L) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j7;
        return (int) (j7 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((iArr3[0] & 4294967295L) - (iArr[0] & 4294967295L)) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + (((iArr3[1] & 4294967295L) - (iArr[1] & 4294967295L)) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + (((iArr3[2] & 4294967295L) - (iArr[2] & 4294967295L)) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + (((iArr3[3] & 4294967295L) - (iArr[3] & 4294967295L)) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + (((iArr3[4] & 4294967295L) - (iArr[4] & 4294967295L)) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + (((iArr3[5] & 4294967295L) - (iArr[5] & 4294967295L)) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + (((iArr3[6] & 4294967295L) - (iArr[6] & 4294967295L)) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j7;
        return (int) (j7 >> 32);
    }

    public static int subFrom(int[] iArr, int i, int[] iArr2, int i2) {
        int i3 = i2 + 0;
        long j = ((iArr2[i3] & 4294967295L) - (iArr[i + 0] & 4294967295L)) + 0;
        iArr2[i3] = (int) j;
        int i4 = i2 + 1;
        long j2 = (j >> 32) + ((iArr2[i4] & 4294967295L) - (iArr[i + 1] & 4294967295L));
        iArr2[i4] = (int) j2;
        int i5 = i2 + 2;
        long j3 = (j2 >> 32) + ((iArr2[i5] & 4294967295L) - (iArr[i + 2] & 4294967295L));
        iArr2[i5] = (int) j3;
        int i6 = i2 + 3;
        long j4 = (j3 >> 32) + ((iArr2[i6] & 4294967295L) - (iArr[i + 3] & 4294967295L));
        iArr2[i6] = (int) j4;
        int i7 = i2 + 4;
        long j5 = (j4 >> 32) + ((iArr2[i7] & 4294967295L) - (iArr[i + 4] & 4294967295L));
        iArr2[i7] = (int) j5;
        int i8 = i2 + 5;
        long j6 = (j5 >> 32) + ((iArr2[i8] & 4294967295L) - (iArr[i + 5] & 4294967295L));
        iArr2[i8] = (int) j6;
        int i9 = i2 + 6;
        long j7 = (j6 >> 32) + ((iArr2[i9] & 4294967295L) - (iArr[i + 6] & 4294967295L));
        iArr2[i9] = (int) j7;
        return (int) (j7 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L));
        iArr2[4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L));
        iArr2[5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr2[6] & 4294967295L) - (4294967295L & iArr[6]));
        iArr2[6] = (int) j7;
        return (int) (j7 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[28];
        for (int i = 0; i < 7; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (6 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
    }
}
