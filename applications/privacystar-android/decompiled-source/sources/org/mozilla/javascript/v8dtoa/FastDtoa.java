package org.mozilla.javascript.v8dtoa;

import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/v8dtoa/FastDtoa.class */
public class FastDtoa {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int kFastDtoaMaximalLength = 17;
    static final int kTen4 = 10000;
    static final int kTen5 = 100000;
    static final int kTen6 = 1000000;
    static final int kTen7 = 10000000;
    static final int kTen8 = 100000000;
    static final int kTen9 = 1000000000;
    static final int maximal_target_exponent = -32;
    static final int minimal_target_exponent = -60;

    static long biggestPowerTen(int i, int i2) {
        int i3;
        int i4 = 1;
        switch (i2) {
            case 30:
            case 31:
            case 32:
                if (kTen9 <= i) {
                    i4 = 9;
                    i3 = kTen9;
                    break;
                }
            case 27:
            case 28:
            case 29:
                if (kTen8 <= i) {
                    i4 = 8;
                    i3 = kTen8;
                    break;
                }
            case 24:
            case 25:
            case 26:
                if (kTen7 <= i) {
                    i4 = 7;
                    i3 = kTen7;
                    break;
                }
            case 20:
            case 21:
            case 22:
            case 23:
                if (kTen6 <= i) {
                    i4 = 6;
                    i3 = kTen6;
                    break;
                }
            case 17:
            case 18:
            case 19:
                if (100000 <= i) {
                    i4 = 5;
                    i3 = 100000;
                    break;
                }
            case 14:
            case 15:
            case 16:
                if (10000 <= i) {
                    i4 = 4;
                    i3 = 10000;
                    break;
                }
            case 10:
            case 11:
            case 12:
            case 13:
                if (1000 <= i) {
                    i4 = 3;
                    i3 = 1000;
                    break;
                }
            case 7:
            case 8:
            case 9:
                if (100 <= i) {
                    i4 = 2;
                    i3 = 100;
                    break;
                }
            case 4:
            case 5:
            case 6:
                if (10 <= i) {
                    i3 = 10;
                    break;
                }
            case 1:
            case 2:
            case 3:
                if (1 <= i) {
                    i4 = 0;
                    i3 = 1;
                    break;
                }
            case 0:
                i4 = -1;
                i3 = 0;
                break;
            default:
                i4 = 0;
                i3 = 0;
                break;
        }
        return (i3 << 32) | (BodyPartID.bodyIdMax & i4);
    }

    static boolean digitGen(DiyFp diyFp, DiyFp diyFp2, DiyFp diyFp3, FastDtoaBuilder fastDtoaBuilder, int i) {
        DiyFp diyFp4 = new DiyFp(diyFp.m204f() - 1, diyFp.m205e());
        DiyFp diyFp5 = new DiyFp(diyFp3.m204f() + 1, diyFp3.m205e());
        DiyFp minus = DiyFp.minus(diyFp5, diyFp4);
        DiyFp diyFp6 = new DiyFp(1 << (-diyFp2.m205e()), diyFp2.m205e());
        int f = (int) ((diyFp5.m204f() >>> (-diyFp6.m205e())) & BodyPartID.bodyIdMax);
        long f2 = diyFp5.m204f() & (diyFp6.m204f() - 1);
        long biggestPowerTen = biggestPowerTen(f, 64 - (-diyFp6.m205e()));
        int i2 = (int) ((biggestPowerTen >>> 32) & BodyPartID.bodyIdMax);
        int i3 = ((int) (biggestPowerTen & BodyPartID.bodyIdMax)) + 1;
        while (i3 > 0) {
            fastDtoaBuilder.append((char) ((f / i2) + 48));
            f %= i2;
            i3--;
            long j = (f << (-diyFp6.m205e())) + f2;
            if (j < minus.m204f()) {
                fastDtoaBuilder.point = (fastDtoaBuilder.end - i) + i3;
                return roundWeed(fastDtoaBuilder, DiyFp.minus(diyFp5, diyFp2).m204f(), minus.m204f(), j, i2 << (-diyFp6.m205e()), 1L);
            }
            i2 /= 10;
        }
        long j2 = 1;
        do {
            long j3 = f2 * 5;
            j2 *= 5;
            minus.setF(minus.m204f() * 5);
            minus.setE(minus.m205e() + 1);
            diyFp6.setF(diyFp6.m204f() >>> 1);
            diyFp6.setE(diyFp6.m205e() + 1);
            fastDtoaBuilder.append((char) (((int) ((j3 >>> (-diyFp6.m205e())) & BodyPartID.bodyIdMax)) + 48));
            f2 = j3 & (diyFp6.m204f() - 1);
            i3--;
        } while (f2 >= minus.m204f());
        fastDtoaBuilder.point = (fastDtoaBuilder.end - i) + i3;
        return roundWeed(fastDtoaBuilder, DiyFp.minus(diyFp5, diyFp2).m204f() * j2, minus.m204f(), f2, diyFp6.m204f(), j2);
    }

    public static boolean dtoa(double d, FastDtoaBuilder fastDtoaBuilder) {
        return grisu3(d, fastDtoaBuilder);
    }

    static boolean grisu3(double d, FastDtoaBuilder fastDtoaBuilder) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        DiyFp asNormalizedDiyFp = DoubleHelper.asNormalizedDiyFp(doubleToLongBits);
        DiyFp diyFp = new DiyFp();
        DiyFp diyFp2 = new DiyFp();
        DoubleHelper.normalizedBoundaries(doubleToLongBits, diyFp, diyFp2);
        DiyFp diyFp3 = new DiyFp();
        int cachedPower = CachedPowers.getCachedPower(asNormalizedDiyFp.m205e() + 64, minimal_target_exponent, maximal_target_exponent, diyFp3);
        return digitGen(DiyFp.times(diyFp, diyFp3), DiyFp.times(asNormalizedDiyFp, diyFp3), DiyFp.times(diyFp2, diyFp3), fastDtoaBuilder, cachedPower);
    }

    public static String numberToString(double d) {
        FastDtoaBuilder fastDtoaBuilder = new FastDtoaBuilder();
        return numberToString(d, fastDtoaBuilder) ? fastDtoaBuilder.format() : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [double] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [double] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean numberToString(double r5, org.mozilla.javascript.v8dtoa.FastDtoaBuilder r7) {
        /*
            r0 = r7
            r0.reset()
            r0 = r5
            r8 = r0
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
            r0 = r7
            r1 = 45
            r0.append(r1)
            r0 = r5
            double r0 = -r0
            r8 = r0
        L_0x0015:
            r0 = r8
            r1 = r7
            boolean r0 = dtoa(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.v8dtoa.FastDtoa.numberToString(double, org.mozilla.javascript.v8dtoa.FastDtoaBuilder):boolean");
    }

    static boolean roundWeed(FastDtoaBuilder fastDtoaBuilder, long j, long j2, long j3, long j4, long j5) {
        long j6 = j - j5;
        long j7 = j + j5;
        while (j3 < j6 && j2 - j3 >= j4) {
            j3 += j4;
            if (j3 >= j6 && j6 - j3 < j3 - j6) {
                break;
            }
            fastDtoaBuilder.decreaseLast();
        }
        if (j3 < j7 && j2 - j3 >= j4) {
            long j8 = j3 + j4;
            if (j8 < j7 || j7 - j3 > j8 - j7) {
                return false;
            }
        }
        boolean z = false;
        if (2 * j5 <= j3) {
            z = false;
            if (j3 <= j2 - (4 * j5)) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
        if ((((r5 < 0) ^ r9) ^ (r7 < 0)) != false) goto L_0x0044;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean uint64_lte(long r5, long r7) {
        /*
            r0 = r5
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r9
            if (r0 >= 0) goto L_0x0018
            r0 = 1
            r9 = r0
            goto L_0x001b
        L_0x0018:
            r0 = 0
            r9 = r0
        L_0x001b:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0027
            r0 = 1
            r11 = r0
            goto L_0x002a
        L_0x0027:
            r0 = 0
            r11 = r0
        L_0x002a:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0036
            r0 = 1
            r12 = r0
            goto L_0x0039
        L_0x0036:
            r0 = 0
            r12 = r0
        L_0x0039:
            r0 = r11
            r1 = r9
            r0 = r0 ^ r1
            r1 = r12
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0047
        L_0x0044:
            r0 = 1
            r10 = r0
        L_0x0047:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.v8dtoa.FastDtoa.uint64_lte(long, long):boolean");
    }
}
