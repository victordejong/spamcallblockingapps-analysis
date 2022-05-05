package org.spongycastle.pqc.math.linearalgebra;

import android.support.p001v4.view.InputDeviceCompat;
import com.mixpanel.android.java_websocket.WebSocket;
import com.privacystar.core.service.analytics.p009fo.FOAnalyticsConstants;
import com.privacystar.core.util.pdus.PduHeaders;
import com.zendesk.service.HttpConstants;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import okhttp3.internal.http.StatusLine;
import org.mozilla.classfile.ByteCode;
import org.spongycastle.math.Primes;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/IntegerFunctions.class */
public final class IntegerFunctions {
    private static final long SMALL_PRIME_PRODUCT = 152125131763605L;

    /* renamed from: sr */
    private static SecureRandom f1804sr;
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private static final BigInteger FOUR = BigInteger.valueOf(4);
    private static final int[] SMALL_PRIMES = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41};
    private static final int[] jacobiTable = {0, 1, 0, -1, 0, -1, 0, 1};

    private IntegerFunctions() {
    }

    public static BigInteger binomial(int i, int i2) {
        BigInteger bigInteger = ONE;
        if (i == 0) {
            return i2 == 0 ? bigInteger : ZERO;
        }
        int i3 = i2;
        if (i2 > (i >>> 1)) {
            i3 = i - i2;
        }
        for (int i4 = 1; i4 <= i3; i4++) {
            bigInteger = bigInteger.multiply(BigInteger.valueOf(i - (i4 - 1))).divide(BigInteger.valueOf(i4));
        }
        return bigInteger;
    }

    public static int bitCount(int i) {
        int i2 = 0;
        while (i != 0) {
            i2 += i & 1;
            i >>>= 1;
        }
        return i2;
    }

    public static int ceilLog(int i) {
        int i2 = 1;
        int i3 = 0;
        while (i2 < i) {
            i2 <<= 1;
            i3++;
        }
        return i3;
    }

    public static int ceilLog(BigInteger bigInteger) {
        int i = 0;
        for (BigInteger bigInteger2 = ONE; bigInteger2.compareTo(bigInteger) < 0; bigInteger2 = bigInteger2.shiftLeft(1)) {
            i++;
        }
        return i;
    }

    public static int ceilLog256(int i) {
        if (i == 0) {
            return 1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = -i;
        }
        int i3 = 0;
        while (i2 > 0) {
            i3++;
            i2 >>>= 8;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int ceilLog256(long r5) {
        /*
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x000a
            r0 = 1
            return r0
        L_0x000a:
            r0 = r5
            r8 = r0
            r0 = r7
            if (r0 >= 0) goto L_0x0013
            r0 = r5
            long r0 = -r0
            r8 = r0
        L_0x0013:
            r0 = 0
            r7 = r0
        L_0x0015:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0026
            int r7 = r7 + 1
            r0 = r8
            r1 = 8
            long r0 = r0 >>> r1
            r8 = r0
            goto L_0x0015
        L_0x0026:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.ceilLog256(long):int");
    }

    public static BigInteger divideAndRound(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.signum() < 0 ? divideAndRound(bigInteger.negate(), bigInteger2).negate() : bigInteger2.signum() < 0 ? divideAndRound(bigInteger, bigInteger2.negate()).negate() : bigInteger.shiftLeft(1).add(bigInteger2).divide(bigInteger2.shiftLeft(1));
    }

    public static BigInteger[] divideAndRound(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        BigInteger[] bigIntegerArr2 = new BigInteger[bigIntegerArr.length];
        for (int i = 0; i < bigIntegerArr.length; i++) {
            bigIntegerArr2[i] = divideAndRound(bigIntegerArr[i], bigInteger);
        }
        return bigIntegerArr2;
    }

    public static int[] extGCD(int i, int i2) {
        BigInteger[] extgcd = extgcd(BigInteger.valueOf(i), BigInteger.valueOf(i2));
        return new int[]{extgcd[0].intValue(), extgcd[1].intValue(), extgcd[2].intValue()};
    }

    public static BigInteger[] extgcd(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = ONE;
        BigInteger bigInteger4 = ZERO;
        BigInteger bigInteger5 = bigInteger3;
        BigInteger bigInteger6 = bigInteger;
        if (bigInteger2.signum() != 0) {
            BigInteger bigInteger7 = ZERO;
            BigInteger bigInteger8 = bigInteger3;
            BigInteger bigInteger9 = bigInteger;
            BigInteger bigInteger10 = bigInteger2;
            while (bigInteger10.signum() != 0) {
                BigInteger[] divideAndRemainder = bigInteger9.divideAndRemainder(bigInteger10);
                BigInteger bigInteger11 = divideAndRemainder[0];
                bigInteger10 = divideAndRemainder[1];
                bigInteger7 = bigInteger8.subtract(bigInteger11.multiply(bigInteger7));
                bigInteger9 = bigInteger10;
                bigInteger8 = bigInteger7;
            }
            bigInteger4 = bigInteger9.subtract(bigInteger.multiply(bigInteger8)).divide(bigInteger2);
            bigInteger5 = bigInteger8;
            bigInteger6 = bigInteger9;
        }
        return new BigInteger[]{bigInteger6, bigInteger5, bigInteger4};
    }

    public static float floatPow(float f, int i) {
        float f2 = 1.0f;
        while (i > 0) {
            f2 *= f;
            i--;
        }
        return f2;
    }

    public static int floorLog(int i) {
        if (i <= 0) {
            return -1;
        }
        int i2 = 0;
        for (int i3 = i >>> 1; i3 > 0; i3 >>>= 1) {
            i2++;
        }
        return i2;
    }

    public static int floorLog(BigInteger bigInteger) {
        int i = -1;
        for (BigInteger bigInteger2 = ONE; bigInteger2.compareTo(bigInteger) <= 0; bigInteger2 = bigInteger2.shiftLeft(1)) {
            i++;
        }
        return i;
    }

    public static int gcd(int i, int i2) {
        return BigInteger.valueOf(i).gcd(BigInteger.valueOf(i2)).intValue();
    }

    public static float intRoot(int i, int i2) {
        float f = i / i2;
        float f2 = 0.0f;
        while (Math.abs(f2 - f) > 1.0E-4d) {
            float floatPow = floatPow(f, i2);
            while (Float.isInfinite(floatPow)) {
                f = (f + f2) / 2.0f;
                floatPow = floatPow(f, i2);
            }
            f2 = f;
            f -= (floatPow - i) / (i2 * floatPow(f, i2 - 1));
        }
        return f;
    }

    public static byte[] integerToOctets(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.abs().toByteArray();
        if ((bigInteger.bitLength() & 7) != 0) {
            return byteArray;
        }
        byte[] bArr = new byte[bigInteger.bitLength() >> 3];
        System.arraycopy(byteArray, 1, bArr, 0, bArr.length);
        return bArr;
    }

    public static boolean isIncreasing(int[] iArr) {
        for (int i = 1; i < iArr.length; i++) {
            int i2 = i - 1;
            if (iArr[i2] >= iArr[i]) {
                PrintStream printStream = System.out;
                printStream.println("a[" + i2 + "] = " + iArr[i2] + " >= " + iArr[i] + " = a[" + i + "]");
                return false;
            }
        }
        return true;
    }

    public static int isPower(int i, int i2) {
        if (i <= 0) {
            return -1;
        }
        int i3 = 0;
        int i4 = i;
        while (i4 > 1) {
            if (i4 % i2 != 0) {
                return -1;
            }
            i4 /= i2;
            i3++;
        }
        return i3;
    }

    public static boolean isPrime(int i) {
        if (i < 2) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if ((i & 1) == 0) {
            return false;
        }
        if (i < 42) {
            for (int i2 = 0; i2 < SMALL_PRIMES.length; i2++) {
                if (i == SMALL_PRIMES[i2]) {
                    return true;
                }
            }
        }
        if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0 || i % 11 == 0 || i % 13 == 0 || i % 17 == 0 || i % 19 == 0 || i % 23 == 0 || i % 29 == 0 || i % 31 == 0 || i % 37 == 0 || i % 41 == 0) {
            return false;
        }
        return BigInteger.valueOf(i).isProbablePrime(20);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [long] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int jacobi(java.math.BigInteger r6, java.math.BigInteger r7) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.jacobi(java.math.BigInteger, java.math.BigInteger):int");
    }

    public static BigInteger leastCommonMultiple(BigInteger[] bigIntegerArr) {
        int length = bigIntegerArr.length;
        BigInteger bigInteger = bigIntegerArr[0];
        for (int i = 1; i < length; i++) {
            bigInteger = bigInteger.multiply(bigIntegerArr[i]).divide(bigInteger.gcd(bigIntegerArr[i]));
        }
        return bigInteger;
    }

    public static int leastDiv(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = -i;
        }
        if (i2 == 0) {
            return 1;
        }
        if ((i2 & 1) == 0) {
            return 2;
        }
        for (int i3 = 3; i3 <= i2 / i3; i3 += 2) {
            if (i2 % i3 == 0) {
                return i3;
            }
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [double] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r5v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double log(double r5) {
        /*
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0014
            r0 = r5
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0014
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r1 = r5
            double r0 = r0 / r1
            double r0 = log(r0)
            double r0 = -r0
            return r0
        L_0x0014:
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r5
            r10 = r0
        L_0x001c:
            r0 = r10
            r1 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0039
            r0 = r10
            r1 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r0 = r0 / r1
            r10 = r0
            int r9 = r9 + 1
            r0 = r7
            r1 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r0 = r0 * r1
            r7 = r0
            goto L_0x001c
        L_0x0039:
            r0 = r5
            r1 = r7
            double r0 = r0 / r1
            double r0 = logBKM(r0)
            r5 = r0
            r0 = r9
            double r0 = (double) r0
            r1 = r5
            double r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.log(double):double");
    }

    public static double log(long j) {
        int floorLog = floorLog(BigInteger.valueOf(j));
        return floorLog + logBKM(j / (1 << floorLog));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [double] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [double] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2, types: [double] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double logBKM(double r8) {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.logBKM(double):double");
    }

    public static int maxPower(int i) {
        int i2 = 0;
        int i3 = 0;
        if (i != 0) {
            int i4 = 1;
            while (true) {
                i2 = i3;
                if ((i & i4) != 0) {
                    break;
                }
                i3++;
                i4 <<= 1;
            }
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long mod(long r5, long r7) {
        /*
            r0 = r5
            r1 = r7
            long r0 = r0 % r1
            r9 = r0
            r0 = r9
            r5 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0014
            r0 = r9
            r1 = r7
            long r0 = r0 + r1
            r5 = r0
        L_0x0014:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.mod(long, long):long");
    }

    public static int modInverse(int i, int i2) {
        return BigInteger.valueOf(i).modInverse(BigInteger.valueOf(i2)).intValue();
    }

    public static long modInverse(long j, long j2) {
        return BigInteger.valueOf(j).modInverse(BigInteger.valueOf(j2)).longValue();
    }

    public static int modPow(int i, int i2, int i3) {
        if (i3 <= 0 || i3 * i3 > Integer.MAX_VALUE || i2 < 0) {
            return 0;
        }
        int i4 = ((i % i3) + i3) % i3;
        int i5 = 1;
        while (i2 > 0) {
            i5 = i5;
            if ((i2 & 1) == 1) {
                i5 = (i5 * i4) % i3;
            }
            i4 = (i4 * i4) % i3;
            i2 >>>= 1;
        }
        return i5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.math.BigInteger nextPrime(long r7) {
        /*
            r0 = r7
            r1 = 1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x000d
            r0 = 2
            java.math.BigInteger r0 = java.math.BigInteger.valueOf(r0)
            return r0
        L_0x000d:
            r0 = r7
            r1 = 2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001c
            r0 = 3
            java.math.BigInteger r0 = java.math.BigInteger.valueOf(r0)
            return r0
        L_0x001c:
            r0 = r7
            r1 = 1
            long r0 = r0 + r1
            r1 = r7
            r2 = 1
            long r1 = r1 & r2
            long r0 = r0 + r1
            r9 = r0
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x002a:
            r0 = r9
            r1 = r7
            r2 = 1
            long r1 = r1 << r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x007b
            r0 = r11
            if (r0 != 0) goto L_0x007b
            r0 = 3
            r14 = r0
        L_0x003c:
            r0 = r14
            r1 = r9
            r2 = 1
            long r1 = r1 >> r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0061
            r0 = r11
            if (r0 != 0) goto L_0x0061
            r0 = r9
            r1 = r14
            long r0 = r0 % r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0056
            r0 = 1
            r11 = r0
        L_0x0056:
            r0 = r14
            r1 = 2
            long r0 = r0 + r1
            r14 = r0
            goto L_0x003c
        L_0x0061:
            r0 = r11
            if (r0 == 0) goto L_0x0069
            goto L_0x006c
        L_0x0069:
            r0 = r9
            r12 = r0
        L_0x006c:
            r0 = r11
            r1 = 1
            r0 = r0 ^ r1
            r11 = r0
            r0 = r9
            r1 = 2
            long r0 = r0 + r1
            r9 = r0
            goto L_0x002a
        L_0x007b:
            r0 = r12
            java.math.BigInteger r0 = java.math.BigInteger.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.nextPrime(long):java.math.BigInteger");
    }

    public static BigInteger nextProbablePrime(BigInteger bigInteger) {
        return nextProbablePrime(bigInteger, 20);
    }

    public static BigInteger nextProbablePrime(BigInteger bigInteger, int i) {
        if (bigInteger.signum() < 0 || bigInteger.signum() == 0 || bigInteger.equals(ONE)) {
            return TWO;
        }
        BigInteger add = bigInteger.add(ONE);
        BigInteger bigInteger2 = add;
        if (!add.testBit(0)) {
            bigInteger2 = add.add(ONE);
        }
        while (true) {
            if (bigInteger2.bitLength() > 6) {
                long longValue = bigInteger2.remainder(BigInteger.valueOf(SMALL_PRIME_PRODUCT)).longValue();
                if (longValue % 3 == 0 || longValue % 5 == 0 || longValue % 7 == 0 || longValue % 11 == 0 || longValue % 13 == 0 || longValue % 17 == 0 || longValue % 19 == 0 || longValue % 23 == 0 || longValue % 29 == 0 || longValue % 31 == 0 || longValue % 37 == 0 || longValue % 41 == 0) {
                    bigInteger2 = bigInteger2.add(TWO);
                }
            }
            if (bigInteger2.bitLength() >= 4 && !bigInteger2.isProbablePrime(i)) {
                bigInteger2 = bigInteger2.add(TWO);
            }
            return bigInteger2;
        }
    }

    public static int nextSmallerPrime(int i) {
        if (i <= 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        int i2 = (i & 1) == 0 ? i - 1 : i - 2;
        while (true) {
            if (!(i2 > 3) || !(!isPrime(i2))) {
                return i2;
            }
            i2 -= 2;
        }
    }

    public static BigInteger octetsToInteger(byte[] bArr) {
        return octetsToInteger(bArr, 0, bArr.length);
    }

    public static BigInteger octetsToInteger(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 1];
        bArr2[0] = (byte) 0;
        System.arraycopy(bArr, i, bArr2, 1, i2);
        return new BigInteger(bArr2);
    }

    public static int order(int i, int i2) {
        int i3 = i % i2;
        if (i3 == 0) {
            throw new IllegalArgumentException(i + " is not an element of Z/(" + i2 + "Z)^*; it is not meaningful to compute its order.");
        }
        int i4 = 1;
        while (i3 != 1) {
            int i5 = (i3 * i) % i2;
            i3 = i5;
            if (i5 < 0) {
                i3 = i5 + i2;
            }
            i4++;
        }
        return i4;
    }

    public static boolean passesSmallPrimeTest(BigInteger bigInteger) {
        for (int i : new int[]{2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, ByteCode.IFNONNULL, Primes.SMALL_FACTOR_LIMIT, 223, 227, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_CONTENT_NOT_ACCEPTED, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_NOT_SUPPORTED, 239, 241, 251, InputDeviceCompat.SOURCE_KEYBOARD, 263, 269, 271, 277, 281, 283, 293, StatusLine.HTTP_TEMP_REDIRECT, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, HttpConstants.HTTP_UNAUTHORIZED, HttpConstants.HTTP_CONFLICT, 419, 421, 431, 433, 439, WebSocket.DEFAULT_WSS_PORT, 449, 457, 461, 463, 467, 479, 487, 491, 499, HttpConstants.HTTP_UNAVAILABLE, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, FOAnalyticsConstants.ACTIVATION_CATEGORY_SETTING_VIEW, FOAnalyticsConstants.ACTIVATION_SCAM_OFF, FOAnalyticsConstants.ACTIVATION_TELEMARKETING_UPSELL_CLICK, FOAnalyticsConstants.ACTIVATION_CHARITY_ON, FOAnalyticsConstants.ACTIVATION_CHARITY_UPSELL_CLICK, FOAnalyticsConstants.PERMISSIONS_MANAGE_CALLS_POPUP_VIEW, FOAnalyticsConstants.PERMISSIONS_MANAGE_CALLS_DENY, FOAnalyticsConstants.PERMISSIONS_NOTIFICATION_POPUP_VIEW, FOAnalyticsConstants.NUMBER_DETAILS_ADD_CONTACT, FOAnalyticsConstants.NUMBER_REPORT_SUBMIT, FOAnalyticsConstants.SIDE_MENU_ACTIVITY, FOAnalyticsConstants.SIDE_MENU_DASHBOARD, FOAnalyticsConstants.ALLOW_ADD_NUMBER, FOAnalyticsConstants.SETTINGS_PAGE_VIEW, FOAnalyticsConstants.SETTINGS_NUISANCE_OFF, FOAnalyticsConstants.SETTINGS_ACCOUNT_SERVICES_OFF, FOAnalyticsConstants.SETTINGS_SURVEY_OFF, FOAnalyticsConstants.ACTIVATION_SUCCESS_CLICK, 1153, 1163, 1171, 1181, 1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499}) {
            if (bigInteger.mod(BigInteger.valueOf(i)).equals(ZERO)) {
                return false;
            }
        }
        return true;
    }

    public static int pow(int i, int i2) {
        int i3 = 1;
        while (i2 > 0) {
            i3 = i3;
            if ((i2 & 1) == 1) {
                i3 *= i;
            }
            i *= i;
            i2 >>>= 1;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long pow(long r5, int r7) {
        /*
            r0 = 1
            r8 = r0
        L_0x0002:
            r0 = r7
            if (r0 <= 0) goto L_0x0023
            r0 = r8
            r10 = r0
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            r1 = 1
            if (r0 != r1) goto L_0x0015
            r0 = r8
            r1 = r5
            long r0 = r0 * r1
            r10 = r0
        L_0x0015:
            r0 = r5
            r1 = r5
            long r0 = r0 * r1
            r5 = r0
            r0 = r7
            r1 = 1
            int r0 = r0 >>> r1
            r7 = r0
            r0 = r10
            r8 = r0
            goto L_0x0002
        L_0x0023:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.pow(long, int):long");
    }

    public static BigInteger randomize(BigInteger bigInteger) {
        if (f1804sr == null) {
            f1804sr = new SecureRandom();
        }
        return randomize(bigInteger, f1804sr);
    }

    public static BigInteger randomize(BigInteger bigInteger, SecureRandom secureRandom) {
        int bitLength = bigInteger.bitLength();
        BigInteger valueOf = BigInteger.valueOf(0L);
        SecureRandom secureRandom2 = secureRandom;
        if (secureRandom == null) {
            secureRandom2 = f1804sr != null ? f1804sr : new SecureRandom();
        }
        for (int i = 0; i < 20; i++) {
            valueOf = new BigInteger(bitLength, secureRandom2);
            if (valueOf.compareTo(bigInteger) < 0) {
                return valueOf;
            }
        }
        return valueOf.mod(bigInteger);
    }

    public static BigInteger reduceInto(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger.subtract(bigInteger2).mod(bigInteger3.subtract(bigInteger2)).add(bigInteger2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.math.BigInteger ressol(java.math.BigInteger r7, java.math.BigInteger r8) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.ressol(java.math.BigInteger, java.math.BigInteger):java.math.BigInteger");
    }

    public static BigInteger squareRoot(BigInteger bigInteger) {
        if (bigInteger.compareTo(ZERO) < 0) {
            throw new ArithmeticException("cannot extract root of negative number" + bigInteger + ".");
        }
        int bitLength = bigInteger.bitLength();
        BigInteger bigInteger2 = ZERO;
        BigInteger bigInteger3 = ZERO;
        int i = bitLength;
        BigInteger bigInteger4 = bigInteger2;
        BigInteger bigInteger5 = bigInteger3;
        if ((bitLength & 1) != 0) {
            bigInteger4 = bigInteger2.add(ONE);
            i = bitLength - 1;
            bigInteger5 = bigInteger3;
        }
        while (i > 0) {
            int i2 = i - 1;
            int i3 = i2 - 1;
            BigInteger add = bigInteger5.multiply(FOUR).add(BigInteger.valueOf((bigInteger.testBit(i2) ? 2 : 0) + (bigInteger.testBit(i3) ? 1 : 0)));
            BigInteger add2 = bigInteger4.multiply(FOUR).add(ONE);
            BigInteger multiply = bigInteger4.multiply(TWO);
            i = i3;
            bigInteger4 = multiply;
            bigInteger5 = add;
            if (add.compareTo(add2) != -1) {
                bigInteger4 = multiply.add(ONE);
                bigInteger5 = add.subtract(add2);
                i = i3;
            }
        }
        return bigInteger4;
    }
}
