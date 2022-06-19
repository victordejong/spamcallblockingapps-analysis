package org.bson.types;

import com.facebook.appevents.AppEventsConstants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:org/bson/types/Decimal128.class */
public final class Decimal128 extends Number implements Comparable<Decimal128> {
    private static final int EXPONENT_OFFSET = 6176;
    private static final int MAX_BIT_LENGTH = 113;
    private static final int MAX_EXPONENT = 6111;
    private static final int MIN_EXPONENT = -6176;
    private static final long SIGN_BIT_MASK = Long.MIN_VALUE;
    private static final long serialVersionUID = 4570973266503637887L;
    private final long high;
    private final long low;
    private static final BigInteger BIG_INT_TEN = new BigInteger("10");
    private static final BigInteger BIG_INT_ONE = new BigInteger("1");
    private static final BigInteger BIG_INT_ZERO = new BigInteger(AppEventsConstants.EVENT_PARAM_VALUE_NO);
    private static final Set<String> NaN_STRINGS = new HashSet(Collections.singletonList("nan"));
    private static final Set<String> NEGATIVE_NaN_STRINGS = new HashSet(Collections.singletonList("-nan"));
    private static final Set<String> POSITIVE_INFINITY_STRINGS = new HashSet(Arrays.asList("inf", "+inf", "infinity", "+infinity"));
    private static final Set<String> NEGATIVE_INFINITY_STRINGS = new HashSet(Arrays.asList("-inf", "-infinity"));
    private static final long INFINITY_MASK = 8646911284551352320L;
    public static final Decimal128 POSITIVE_INFINITY = fromIEEE754BIDEncoding(INFINITY_MASK, 0);
    public static final Decimal128 NEGATIVE_INFINITY = fromIEEE754BIDEncoding(-576460752303423488L, 0);
    public static final Decimal128 NEGATIVE_NaN = fromIEEE754BIDEncoding(-288230376151711744L, 0);
    private static final long NaN_MASK = 8935141660703064064L;
    public static final Decimal128 NaN = fromIEEE754BIDEncoding(NaN_MASK, 0);
    public static final Decimal128 POSITIVE_ZERO = fromIEEE754BIDEncoding(3476778912330022912L, 0);
    public static final Decimal128 NEGATIVE_ZERO = fromIEEE754BIDEncoding(-5746593124524752896L, 0);

    public Decimal128(long j) {
        this(new BigDecimal(j, MathContext.DECIMAL128));
    }

    private Decimal128(long j, long j2) {
        this.high = j;
        this.low = j2;
    }

    public Decimal128(BigDecimal bigDecimal) {
        this(bigDecimal, bigDecimal.signum() == -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c0, code lost:
        if (r9 != false) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private Decimal128(java.math.BigDecimal r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bson.types.Decimal128.<init>(java.math.BigDecimal, boolean):void");
    }

    private BigDecimal bigDecimalValueNoNegativeZeroCheck() {
        int i = -getExponent();
        if (twoHighestCombinationBitsAreSet()) {
            return BigDecimal.valueOf(0L, i);
        }
        return new BigDecimal(new BigInteger(isNegative() ? -1 : 1, getBytes()), i);
    }

    private BigDecimal clampAndRound(BigDecimal bigDecimal) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        if ((-bigDecimal.scale()) > MAX_EXPONENT) {
            int i = (-bigDecimal.scale()) - MAX_EXPONENT;
            if (bigDecimal.unscaledValue().equals(BIG_INT_ZERO)) {
                bigDecimal2 = new BigDecimal(bigDecimal.unscaledValue(), -6111);
                return bigDecimal2;
            } else if (bigDecimal.precision() + i <= 34) {
                bigDecimal3 = new BigDecimal(bigDecimal.unscaledValue().multiply(BIG_INT_TEN.pow(i)), bigDecimal.scale() + i);
                bigDecimal2 = bigDecimal3;
                return bigDecimal2;
            } else {
                throw new NumberFormatException("Exponent is out of range for Decimal128 encoding of " + bigDecimal);
            }
        } else if ((-bigDecimal.scale()) < MIN_EXPONENT) {
            int scale = bigDecimal.scale() - EXPONENT_OFFSET;
            bigDecimal3 = new BigDecimal(bigDecimal.unscaledValue().divide(ensureExactRounding(bigDecimal, scale) == 0 ? BIG_INT_ONE : BIG_INT_TEN.pow(scale)), bigDecimal.scale() - scale);
            bigDecimal2 = bigDecimal3;
            return bigDecimal2;
        } else {
            BigDecimal round = bigDecimal.round(MathContext.DECIMAL128);
            int precision = bigDecimal.precision() - round.precision();
            bigDecimal2 = round;
            if (precision > 0) {
                ensureExactRounding(bigDecimal, precision);
                bigDecimal2 = round;
            }
            return bigDecimal2;
        }
    }

    private int ensureExactRounding(BigDecimal bigDecimal, int i) {
        String bigInteger = bigDecimal.unscaledValue().abs().toString();
        int max = Math.max(0, bigInteger.length() - i);
        for (int i2 = max; i2 < bigInteger.length(); i2++) {
            if (bigInteger.charAt(i2) != '0') {
                throw new NumberFormatException("Conversion to Decimal128 would require inexact rounding of " + bigDecimal);
            }
        }
        return max;
    }

    public static Decimal128 fromIEEE754BIDEncoding(long j, long j2) {
        return new Decimal128(j, j2);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    private byte[] getBytes() {
        byte[] bArr = new byte[15];
        char c = 255;
        for (int i = 14; i >= 7; i--) {
            bArr[i] = (byte) ((this.low & c) >>> ((14 - i) << 3));
            c <<= '\b';
        }
        char c2 = 255;
        for (int i2 = 6; i2 >= 1; i2--) {
            bArr[i2] = (byte) ((this.high & c2) >>> ((6 - i2) << 3));
            c2 <<= '\b';
        }
        bArr[0] = (byte) ((281474976710656L & this.high) >>> 48);
        return bArr;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    private int getExponent() {
        char c;
        char c2;
        if (twoHighestCombinationBitsAreSet()) {
            c = this.high & 2305807824841605120L;
            c2 = '/';
        } else {
            c = this.high & 9223231299366420480L;
            c2 = '1';
        }
        return ((int) (c >>> c2)) - EXPONENT_OFFSET;
    }

    private boolean hasDifferentSign(BigDecimal bigDecimal) {
        return isNegative() && bigDecimal.signum() == 0;
    }

    private boolean isZero(BigDecimal bigDecimal) {
        return !isNaN() && !isInfinite() && bigDecimal.compareTo(BigDecimal.ZERO) == 0;
    }

    public static Decimal128 parse(String str) {
        String lowerCase = str.toLowerCase();
        if (NaN_STRINGS.contains(lowerCase)) {
            return NaN;
        }
        if (NEGATIVE_NaN_STRINGS.contains(lowerCase)) {
            return NEGATIVE_NaN;
        }
        if (POSITIVE_INFINITY_STRINGS.contains(lowerCase)) {
            return POSITIVE_INFINITY;
        }
        if (NEGATIVE_INFINITY_STRINGS.contains(lowerCase)) {
            return NEGATIVE_INFINITY;
        }
        BigDecimal bigDecimal = new BigDecimal(str);
        boolean z = false;
        if (str.charAt(0) == '-') {
            z = true;
        }
        return new Decimal128(bigDecimal, z);
    }

    private String toStringWithBigDecimal() {
        StringBuilder sb = new StringBuilder();
        BigDecimal bigDecimalValueNoNegativeZeroCheck = bigDecimalValueNoNegativeZeroCheck();
        String bigInteger = bigDecimalValueNoNegativeZeroCheck.unscaledValue().abs().toString();
        if (isNegative()) {
            sb.append('-');
        }
        int i = -bigDecimalValueNoNegativeZeroCheck.scale();
        int length = (bigInteger.length() - 1) + i;
        if (i > 0 || length < -6) {
            sb.append(bigInteger.charAt(0));
            if (bigInteger.length() > 1) {
                sb.append('.');
                sb.append((CharSequence) bigInteger, 1, bigInteger.length());
            }
            sb.append('E');
            if (length > 0) {
                sb.append('+');
            }
            sb.append(length);
        } else if (i == 0) {
            sb.append(bigInteger);
        } else {
            int length2 = (-i) - bigInteger.length();
            if (length2 >= 0) {
                sb.append('0');
                sb.append('.');
                for (int i2 = 0; i2 < length2; i2++) {
                    sb.append('0');
                }
                sb.append((CharSequence) bigInteger, 0, bigInteger.length());
            } else {
                int i3 = -length2;
                sb.append((CharSequence) bigInteger, 0, i3);
                sb.append('.');
                sb.append((CharSequence) bigInteger, i3, i3 - i);
            }
        }
        return sb.toString();
    }

    private boolean twoHighestCombinationBitsAreSet() {
        return (this.high & 6917529027641081856L) == 6917529027641081856L;
    }

    public BigDecimal bigDecimalValue() {
        if (!isNaN()) {
            if (isInfinite()) {
                throw new ArithmeticException("Infinity can not be converted to a BigDecimal");
            }
            BigDecimal bigDecimalValueNoNegativeZeroCheck = bigDecimalValueNoNegativeZeroCheck();
            if (isNegative() && bigDecimalValueNoNegativeZeroCheck.signum() == 0) {
                throw new ArithmeticException("Negative zero can not be converted to a BigDecimal");
            }
            return bigDecimalValueNoNegativeZeroCheck;
        }
        throw new ArithmeticException("NaN can not be converted to a BigDecimal");
    }

    public int compareTo(Decimal128 decimal128) {
        if (isNaN()) {
            return !decimal128.isNaN();
        }
        if (isInfinite()) {
            if (isNegative()) {
                return (!decimal128.isInfinite() || !decimal128.isNegative()) ? -1 : 0;
            } else if (decimal128.isNaN()) {
                return -1;
            } else {
                return (!decimal128.isInfinite() || decimal128.isNegative()) ? 1 : 0;
            }
        }
        BigDecimal bigDecimalValueNoNegativeZeroCheck = bigDecimalValueNoNegativeZeroCheck();
        BigDecimal bigDecimalValueNoNegativeZeroCheck2 = decimal128.bigDecimalValueNoNegativeZeroCheck();
        if (isZero(bigDecimalValueNoNegativeZeroCheck) && decimal128.isZero(bigDecimalValueNoNegativeZeroCheck2)) {
            if (hasDifferentSign(bigDecimalValueNoNegativeZeroCheck)) {
                return decimal128.hasDifferentSign(bigDecimalValueNoNegativeZeroCheck2) ? 0 : -1;
            } else if (decimal128.hasDifferentSign(bigDecimalValueNoNegativeZeroCheck2)) {
                return 1;
            }
        }
        if (decimal128.isNaN()) {
            return -1;
        }
        return decimal128.isInfinite() ? decimal128.isNegative() ? 1 : -1 : bigDecimalValueNoNegativeZeroCheck.compareTo(bigDecimalValueNoNegativeZeroCheck2);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        if (isNaN()) {
            return Double.NaN;
        }
        if (isInfinite()) {
            return isNegative() ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        BigDecimal bigDecimalValueNoNegativeZeroCheck = bigDecimalValueNoNegativeZeroCheck();
        if (!hasDifferentSign(bigDecimalValueNoNegativeZeroCheck)) {
            return bigDecimalValueNoNegativeZeroCheck.doubleValue();
        }
        return 0.0d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Decimal128 decimal128 = (Decimal128) obj;
        return this.high == decimal128.high && this.low == decimal128.low;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) doubleValue();
    }

    public long getHigh() {
        return this.high;
    }

    public long getLow() {
        return this.low;
    }

    public int hashCode() {
        long j = this.low;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.high;
        return (i * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) doubleValue();
    }

    public boolean isFinite() {
        return !isInfinite();
    }

    public boolean isInfinite() {
        return (this.high & INFINITY_MASK) == INFINITY_MASK;
    }

    public boolean isNaN() {
        return (this.high & NaN_MASK) == NaN_MASK;
    }

    public boolean isNegative() {
        return (this.high & Long.MIN_VALUE) == Long.MIN_VALUE;
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) doubleValue();
    }

    public String toString() {
        return isNaN() ? "NaN" : isInfinite() ? isNegative() ? "-Infinity" : "Infinity" : toStringWithBigDecimal();
    }
}
