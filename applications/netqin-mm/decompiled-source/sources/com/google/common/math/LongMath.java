package com.google.common.math;

import java.math.RoundingMode;
import p131c.p161d.p266c.p272f.C5066e;
/* loaded from: classes2-dex2jar.jar:com/google/common/math/LongMath.class */
public final class LongMath {

    /* loaded from: classes2-dex2jar.jar:com/google/common/math/LongMath$MillerRabinTester.class */
    public enum MillerRabinTester {
        SMALL { // from class: com.google.common.math.LongMath.MillerRabinTester.1
            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long mulMod(long j, long j2, long j3) {
                return (j * j2) % j3;
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long squareMod(long j, long j2) {
                return (j * j) % j2;
            }
        },
        LARGE { // from class: com.google.common.math.LongMath.MillerRabinTester.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v1, types: [long] */
            /* JADX WARN: Type inference failed for: r16v0 */
            /* JADX WARN: Type inference failed for: r16v1, types: [long] */
            /* JADX WARN: Type inference failed for: r16v3 */
            /* JADX WARN: Unknown variable types count: 2 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private long plusMod(long r8, long r10, long r12) {
                /*
                    r7 = this;
                    r0 = r8
                    r1 = r10
                    long r0 = r0 + r1
                    r14 = r0
                    r0 = r14
                    r16 = r0
                    r0 = r8
                    r1 = r12
                    r2 = r10
                    long r1 = r1 - r2
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 < 0) goto L_0x0019
                    r0 = r14
                    r1 = r12
                    long r0 = r0 - r1
                    r16 = r0
                L_0x0019:
                    r0 = r16
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.MillerRabinTester.C77062.plusMod(long, long, long):long");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v5, types: [long] */
            /* JADX WARN: Type inference failed for: r6v1, types: [long] */
            /* JADX WARN: Type inference failed for: r6v2 */
            /* JADX WARN: Type inference failed for: r6v3 */
            /* JADX WARN: Unknown variable types count: 2 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private long times2ToThe32Mod(long r6, long r8) {
                /*
                    r5 = this;
                    r0 = 32
                    r10 = r0
                L_0x0004:
                    r0 = r10
                    r1 = r6
                    int r1 = java.lang.Long.numberOfLeadingZeros(r1)
                    int r0 = java.lang.Math.min(r0, r1)
                    r11 = r0
                    r0 = r6
                    r1 = r11
                    long r0 = r0 << r1
                    r1 = r8
                    long r0 = com.google.common.primitives.UnsignedLongs.m7775c(r0, r1)
                    r12 = r0
                    r0 = r10
                    r1 = r11
                    int r0 = r0 - r1
                    r11 = r0
                    r0 = r11
                    r10 = r0
                    r0 = r12
                    r6 = r0
                    r0 = r11
                    if (r0 > 0) goto L_0x0004
                    r0 = r12
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.MillerRabinTester.C77062.times2ToThe32Mod(long, long):long");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v10, types: [long] */
            /* JADX WARN: Type inference failed for: r10v1 */
            /* JADX WARN: Type inference failed for: r10v2, types: [long] */
            /* JADX WARN: Type inference failed for: r10v4 */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // com.google.common.math.LongMath.MillerRabinTester
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public long mulMod(long r10, long r12, long r14) {
                /*
                    r9 = this;
                    r0 = r10
                    r1 = 32
                    long r0 = r0 >>> r1
                    r16 = r0
                    r0 = r12
                    r1 = 32
                    long r0 = r0 >>> r1
                    r18 = r0
                    r0 = r10
                    r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
                    long r0 = r0 & r1
                    r20 = r0
                    r0 = r12
                    r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
                    long r0 = r0 & r1
                    r22 = r0
                    r0 = r9
                    r1 = r16
                    r2 = r18
                    long r1 = r1 * r2
                    r2 = r14
                    long r0 = r0.times2ToThe32Mod(r1, r2)
                    r1 = r16
                    r2 = r22
                    long r1 = r1 * r2
                    long r0 = r0 + r1
                    r12 = r0
                    r0 = r12
                    r10 = r0
                    r0 = r12
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 >= 0) goto L_0x003b
                    r0 = r12
                    r1 = r14
                    long r0 = com.google.common.primitives.UnsignedLongs.m7775c(r0, r1)
                    r10 = r0
                L_0x003b:
                    r0 = r20
                    int r0 = java.lang.Long.signum(r0)
                    r0 = r9
                    r1 = r9
                    r2 = r10
                    r3 = r18
                    r4 = r20
                    long r3 = r3 * r4
                    long r2 = r2 + r3
                    r3 = r14
                    long r1 = r1.times2ToThe32Mod(r2, r3)
                    r2 = r20
                    r3 = r22
                    long r2 = r2 * r3
                    r3 = r14
                    long r2 = com.google.common.primitives.UnsignedLongs.m7775c(r2, r3)
                    r3 = r14
                    long r0 = r0.plusMod(r1, r2, r3)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.MillerRabinTester.C77062.mulMod(long, long, long):long");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v8, types: [long] */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v2, types: [long] */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // com.google.common.math.LongMath.MillerRabinTester
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public long squareMod(long r9, long r11) {
                /*
                    r8 = this;
                    r0 = r9
                    r1 = 32
                    long r0 = r0 >>> r1
                    r13 = r0
                    r0 = r9
                    r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
                    long r0 = r0 & r1
                    r15 = r0
                    r0 = r8
                    r1 = r13
                    r2 = r13
                    long r1 = r1 * r2
                    r2 = r11
                    long r0 = r0.times2ToThe32Mod(r1, r2)
                    r17 = r0
                    r0 = r13
                    r1 = r15
                    long r0 = r0 * r1
                    r1 = 2
                    long r0 = r0 * r1
                    r13 = r0
                    r0 = r13
                    r9 = r0
                    r0 = r13
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 >= 0) goto L_0x0035
                    r0 = r13
                    r1 = r11
                    long r0 = com.google.common.primitives.UnsignedLongs.m7775c(r0, r1)
                    r9 = r0
                L_0x0035:
                    r0 = r8
                    r1 = r8
                    r2 = r17
                    r3 = r9
                    long r2 = r2 + r3
                    r3 = r11
                    long r1 = r1.times2ToThe32Mod(r2, r3)
                    r2 = r15
                    r3 = r15
                    long r2 = r2 * r3
                    r3 = r11
                    long r2 = com.google.common.primitives.UnsignedLongs.m7775c(r2, r3)
                    r3 = r11
                    long r0 = r0.plusMod(r1, r2, r3)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.MillerRabinTester.C77062.squareMod(long, long):long");
            }
        };

        /* synthetic */ MillerRabinTester(C7707a aVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0 */
        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v13 */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v2, types: [long] */
        /* JADX WARN: Type inference failed for: r8v0, types: [com.google.common.math.LongMath$MillerRabinTester] */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long powMod(long r9, long r11, long r13) {
            /*
                r8 = this;
                r0 = 1
                r15 = r0
            L_0x0003:
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0033
                r0 = r15
                r17 = r0
                r0 = r11
                r1 = 1
                long r0 = r0 & r1
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0020
                r0 = r8
                r1 = r15
                r2 = r9
                r3 = r13
                long r0 = r0.mulMod(r1, r2, r3)
                r17 = r0
            L_0x0020:
                r0 = r8
                r1 = r9
                r2 = r13
                long r0 = r0.squareMod(r1, r2)
                r9 = r0
                r0 = r11
                r1 = 1
                long r0 = r0 >> r1
                r11 = r0
                r0 = r17
                r15 = r0
                goto L_0x0003
            L_0x0033:
                r0 = r15
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.MillerRabinTester.powMod(long, long, long):long");
        }

        public static boolean test(long j, long j2) {
            return (j2 <= 3037000499L ? SMALL : LARGE).testWitness(j, j2);
        }

        private boolean testWitness(long j, long j2) {
            long j3 = j2 - 1;
            int numberOfTrailingZeros = Long.numberOfTrailingZeros(j3);
            long j4 = j % j2;
            if (j4 == 0) {
                return true;
            }
            long powMod = powMod(j4, j3 >> numberOfTrailingZeros, j2);
            if (powMod == 1) {
                return true;
            }
            int i = 0;
            while (powMod != j3) {
                i++;
                if (i == numberOfTrailingZeros) {
                    return false;
                }
                powMod = squareMod(powMod, j2);
            }
            return true;
        }

        public abstract long mulMod(long j, long j2, long j3);

        public abstract long squareMod(long j, long j2);
    }

    /* renamed from: com.google.common.math.LongMath$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/math/LongMath$a.class */
    public static /* synthetic */ class C7707a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30875a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[RoundingMode.values().length];
            f30875a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30875a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30875a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30875a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30875a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30875a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f30875a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f30875a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: a */
    public static long m7894a(long j, long j2) {
        long j3 = j + j2;
        boolean z = true;
        boolean z2 = (j ^ j2) < 0;
        if ((j ^ j3) < 0) {
            z = false;
        }
        C5066e.m24573a(z2 | z, "checkedAdd", j, j2);
        return j3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m7893a(long r7, long r9, java.math.RoundingMode r11) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.m7893a(long, long, java.math.RoundingMode):long");
    }
}
