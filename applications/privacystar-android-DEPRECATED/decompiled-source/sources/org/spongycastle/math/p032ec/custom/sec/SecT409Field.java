package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Interleave;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat448;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecT409Field */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecT409Field.class */
public class SecT409Field {
    private static final long M25 = 33554431;
    private static final long M59 = 576460752303423487L;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr2[6] ^ jArr[6];
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 0; i < 13; i++) {
            jArr3[i] = jArr[i] ^ jArr2[i];
        }
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        long[] fromBigInteger64 = Nat448.fromBigInteger64(bigInteger);
        reduce39(fromBigInteger64, 0);
        return fromBigInteger64;
    }

    protected static void implCompactExt(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = jArr[8];
        long j10 = jArr[9];
        long j11 = jArr[10];
        long j12 = jArr[11];
        long j13 = jArr[12];
        long j14 = jArr[13];
        jArr[0] = j ^ (j2 << 59);
        jArr[1] = (j2 >>> 5) ^ (j3 << 54);
        jArr[2] = (j3 >>> 10) ^ (j4 << 49);
        jArr[3] = (j4 >>> 15) ^ (j5 << 44);
        jArr[4] = (j5 >>> 20) ^ (j6 << 39);
        jArr[5] = (j6 >>> 25) ^ (j7 << 34);
        jArr[6] = (j7 >>> 30) ^ (j8 << 29);
        jArr[7] = (j8 >>> 35) ^ (j9 << 24);
        jArr[8] = (j9 >>> 40) ^ (j10 << 19);
        jArr[9] = (j10 >>> 45) ^ (j11 << 14);
        jArr[10] = (j11 >>> 50) ^ (j12 << 9);
        jArr[11] = ((j12 >>> 55) ^ (j13 << 4)) ^ (j14 << 63);
        jArr[12] = (j13 >>> 60) ^ (j14 >>> 1);
        jArr[13] = 0;
    }

    protected static void implExpand(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        jArr2[0] = j & M59;
        jArr2[1] = ((j >>> 59) ^ (j2 << 5)) & M59;
        jArr2[2] = ((j2 >>> 54) ^ (j3 << 10)) & M59;
        jArr2[3] = ((j3 >>> 49) ^ (j4 << 15)) & M59;
        jArr2[4] = ((j4 >>> 44) ^ (j5 << 20)) & M59;
        jArr2[5] = ((j5 >>> 39) ^ (j6 << 25)) & M59;
        jArr2[6] = (j6 >>> 34) ^ (j7 << 30);
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[7];
        long[] jArr5 = new long[7];
        implExpand(jArr, jArr4);
        implExpand(jArr2, jArr5);
        for (int i = 0; i < 7; i++) {
            implMulwAcc(jArr4, jArr5[i], jArr3, i);
        }
        implCompactExt(jArr3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static void implMulwAcc(long[] r10, long r11, long[] r13, int r14) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.custom.sec.SecT409Field.implMulwAcc(long[], long, long[], int):void");
    }

    protected static void implSquare(long[] jArr, long[] jArr2) {
        for (int i = 0; i < 6; i++) {
            Interleave.expand64To128(jArr[i], jArr2, i << 1);
        }
        jArr2[12] = Interleave.expand32to64((int) jArr[6]);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat448.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat448.create64();
        long[] create642 = Nat448.create64();
        long[] create643 = Nat448.create64();
        square(jArr, create64);
        squareN(create64, 1, create642);
        multiply(create64, create642, create64);
        squareN(create642, 1, create642);
        multiply(create64, create642, create64);
        squareN(create64, 3, create642);
        multiply(create64, create642, create64);
        squareN(create64, 6, create642);
        multiply(create64, create642, create64);
        squareN(create64, 12, create642);
        multiply(create64, create642, create643);
        squareN(create643, 24, create64);
        squareN(create64, 24, create642);
        multiply(create64, create642, create64);
        squareN(create64, 48, create642);
        multiply(create64, create642, create64);
        squareN(create64, 96, create642);
        multiply(create64, create642, create64);
        squareN(create64, 192, create642);
        multiply(create64, create642, create64);
        multiply(create64, create643, jArr2);
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat448.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        reduce(createExt64, jArr3);
    }

    public static void multiplyAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat448.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        addExt(jArr3, createExt64, jArr3);
    }

    public static void reduce(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = jArr[12];
        long j10 = j8 ^ (j9 >>> 2);
        long j11 = jArr[11];
        long j12 = (j7 ^ ((j9 >>> 25) ^ (j9 << 62))) ^ (j11 >>> 2);
        long j13 = jArr[10];
        long j14 = jArr[9];
        long j15 = jArr[8];
        long j16 = j12 >>> 25;
        jArr2[0] = (j ^ (j10 << 39)) ^ j16;
        jArr2[1] = (j16 << 23) ^ ((j2 ^ (j15 << 39)) ^ ((j10 >>> 25) ^ (j10 << 62)));
        jArr2[2] = ((j3 ^ (j14 << 39)) ^ ((j15 >>> 25) ^ (j15 << 62))) ^ (j10 >>> 2);
        jArr2[3] = ((j4 ^ (j13 << 39)) ^ ((j14 >>> 25) ^ (j14 << 62))) ^ (j15 >>> 2);
        jArr2[4] = ((j5 ^ (j11 << 39)) ^ ((j13 >>> 25) ^ (j13 << 62))) ^ (j14 >>> 2);
        jArr2[5] = ((j6 ^ (j9 << 39)) ^ ((j11 >>> 25) ^ (j11 << 62))) ^ (j13 >>> 2);
        jArr2[6] = j12 & M25;
    }

    public static void reduce39(long[] jArr, int i) {
        int i2 = i + 6;
        long j = jArr[i2];
        long j2 = j >>> 25;
        jArr[i] = jArr[i] ^ j2;
        int i3 = i + 1;
        jArr[i3] = (j2 << 23) ^ jArr[i3];
        jArr[i2] = j & M25;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        long j = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        long unshuffle3 = Interleave.unshuffle(jArr[2]);
        long unshuffle4 = Interleave.unshuffle(jArr[3]);
        long j2 = (unshuffle3 >>> 32) | (unshuffle4 & (-4294967296L));
        long unshuffle5 = Interleave.unshuffle(jArr[4]);
        long unshuffle6 = Interleave.unshuffle(jArr[5]);
        long j3 = (unshuffle5 >>> 32) | (unshuffle6 & (-4294967296L));
        long unshuffle7 = Interleave.unshuffle(jArr[6]);
        long j4 = unshuffle7 >>> 32;
        jArr2[0] = ((unshuffle & BodyPartID.bodyIdMax) | (unshuffle2 << 32)) ^ (j << 44);
        jArr2[1] = (((unshuffle3 & BodyPartID.bodyIdMax) | (unshuffle4 << 32)) ^ (j2 << 44)) ^ (j >>> 20);
        jArr2[2] = (((unshuffle5 & BodyPartID.bodyIdMax) | (unshuffle6 << 32)) ^ (j3 << 44)) ^ (j2 >>> 20);
        jArr2[3] = (((BodyPartID.bodyIdMax & unshuffle7) ^ (j4 << 44)) ^ (j3 >>> 20)) ^ (j << 13);
        jArr2[4] = ((j4 >>> 20) ^ (j2 << 13)) ^ (j >>> 51);
        jArr2[5] = (j2 >>> 51) ^ (j3 << 13);
        jArr2[6] = (j4 << 13) ^ (j3 >>> 51);
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(13);
        implSquare(jArr, create64);
        reduce(create64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(13);
        implSquare(jArr, create64);
        addExt(jArr2, create64, jArr2);
    }

    public static void squareN(long[] jArr, int i, long[] jArr2) {
        long[] create64 = Nat.create64(13);
        implSquare(jArr, create64);
        reduce(create64, jArr2);
        while (true) {
            i--;
            if (i > 0) {
                implSquare(jArr2, create64);
                reduce(create64, jArr2);
            } else {
                return;
            }
        }
    }

    public static int trace(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }
}
