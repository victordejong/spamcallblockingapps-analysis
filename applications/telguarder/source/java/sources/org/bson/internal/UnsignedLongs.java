package org.bson.internal;

import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:org/bson/internal/UnsignedLongs.class */
public final class UnsignedLongs {
    private static final long MAX_VALUE = -1;
    private static final long[] MAX_VALUE_DIVS = new long[37];
    private static final int[] MAX_VALUE_MODS = new int[37];
    private static final int[] MAX_SAFE_DIGITS = new int[37];

    static {
        BigInteger bigInteger = new BigInteger("10000000000000000", 16);
        for (int i = 2; i <= 36; i++) {
            long j = i;
            MAX_VALUE_DIVS[i] = divide(-1L, j);
            MAX_VALUE_MODS[i] = (int) remainder(-1L, j);
            MAX_SAFE_DIGITS[i] = bigInteger.toString(i).length() - 1;
        }
    }

    private UnsignedLongs() {
    }

    public static int compare(long j, long j2) {
        return compareLongs(j - Long.MIN_VALUE, j2 - Long.MIN_VALUE);
    }

    private static int compareLongs(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        return i < 0 ? -1 : i == 0 ? 0 : 1;
    }

    private static long divide(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? 0L : 1L;
        } else if (j >= 0) {
            return j / j2;
        } else {
            int i = 1;
            long j3 = ((j >>> 1) / j2) << 1;
            if (compare(j - (j3 * j2), j2) < 0) {
                i = 0;
            }
            return j3 + i;
        }
    }

    private static boolean overflowInParse(long j, int i, int i2) {
        boolean z = true;
        if (j >= 0) {
            long[] jArr = MAX_VALUE_DIVS;
            if (j < jArr[i2]) {
                return false;
            }
            if (j > jArr[i2]) {
                return true;
            }
            z = i > MAX_VALUE_MODS[i2];
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    public static long parse(String str) {
        if (str.length() != 0) {
            int i = MAX_SAFE_DIGITS[10];
            char c = 0;
            for (int i2 = 0; i2 < str.length(); i2++) {
                int digit = Character.digit(str.charAt(i2), 10);
                if (digit == -1) {
                    throw new NumberFormatException(str);
                }
                if (i2 > i - 1 && overflowInParse(c, digit, 10)) {
                    throw new NumberFormatException("Too large for unsigned long: " + str);
                }
                c = (c * 10) + digit;
            }
            return c;
        }
        throw new NumberFormatException("empty string");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    private static long remainder(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? j : j - j2;
        } else if (j >= 0) {
            return j % j2;
        } else {
            long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
            int compare = compare(j3, j2);
            ?? r9 = j2;
            if (compare < 0) {
                r9 = 0;
            }
            return j3 - r9;
        }
    }

    public static String toString(long j) {
        if (j >= 0) {
            return Long.toString(j);
        }
        long j2 = (j >>> 1) / 5;
        return Long.toString(j2) + (j - (10 * j2));
    }
}
