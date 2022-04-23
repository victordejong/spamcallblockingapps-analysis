package com.google.common.primitives;

import java.io.Serializable;
import java.math.BigInteger;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedLong.class */
public final class UnsignedLong extends Number implements Comparable<UnsignedLong>, Serializable {
    public static final long UNSIGNED_MASK = Long.MAX_VALUE;
    public final long value;
    public static final UnsignedLong ZERO = new UnsignedLong(0);
    public static final UnsignedLong ONE = new UnsignedLong(1);
    public static final UnsignedLong MAX_VALUE = new UnsignedLong(-1);

    public UnsignedLong(long j) {
        this.value = j;
    }

    public static UnsignedLong fromLongBits(long j) {
        return new UnsignedLong(j);
    }

    public static UnsignedLong valueOf(long j) {
        C4933n.m24785a(j >= 0, "value (%s) is outside the range for an unsigned long value", j);
        return fromLongBits(j);
    }

    public static UnsignedLong valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedLong valueOf(String str, int i) {
        return fromLongBits(UnsignedLongs.m7778a(str, i));
    }

    public static UnsignedLong valueOf(BigInteger bigInteger) {
        C4933n.m24795a(bigInteger);
        C4933n.m24782a(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return fromLongBits(bigInteger.longValue());
    }

    public BigInteger bigIntegerValue() {
        BigInteger valueOf = BigInteger.valueOf(this.value & Long.MAX_VALUE);
        BigInteger bigInteger = valueOf;
        if (this.value < 0) {
            bigInteger = valueOf.setBit(63);
        }
        return bigInteger;
    }

    public int compareTo(UnsignedLong unsignedLong) {
        C4933n.m24795a(unsignedLong);
        return UnsignedLongs.m7779a(this.value, unsignedLong.value);
    }

    public UnsignedLong dividedBy(UnsignedLong unsignedLong) {
        long j = this.value;
        C4933n.m24795a(unsignedLong);
        return fromLongBits(UnsignedLongs.m7776b(j, unsignedLong.value));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [double] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.lang.Number
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double doubleValue() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.value
            r6 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r1 = r6
            long r0 = r0 & r1
            double r0 = (double) r0
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0021
            r0 = r8
            boolean r0 = java.lang.Double.isNaN(r0)
            r0 = r8
            r1 = 4890909195324358656(0x43e0000000000000, double:9.223372036854776E18)
            double r0 = r0 + r1
            r10 = r0
        L_0x0021:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.UnsignedLong.doubleValue():double");
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof UnsignedLong) {
            z = false;
            if (this.value == ((UnsignedLong) obj).value) {
                z = true;
            }
        }
        return z;
    }

    @Override // java.lang.Number
    public float floatValue() {
        long j = this.value;
        float f = (float) (Long.MAX_VALUE & j);
        float f2 = f;
        if (j < 0) {
            f2 = f + 9.223372E18f;
        }
        return f2;
    }

    public int hashCode() {
        return Longs.m7803a(this.value);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public UnsignedLong minus(UnsignedLong unsignedLong) {
        long j = this.value;
        C4933n.m24795a(unsignedLong);
        return fromLongBits(j - unsignedLong.value);
    }

    public UnsignedLong mod(UnsignedLong unsignedLong) {
        long j = this.value;
        C4933n.m24795a(unsignedLong);
        return fromLongBits(UnsignedLongs.m7775c(j, unsignedLong.value));
    }

    public UnsignedLong plus(UnsignedLong unsignedLong) {
        long j = this.value;
        C4933n.m24795a(unsignedLong);
        return fromLongBits(j + unsignedLong.value);
    }

    public UnsignedLong times(UnsignedLong unsignedLong) {
        long j = this.value;
        C4933n.m24795a(unsignedLong);
        return fromLongBits(j * unsignedLong.value);
    }

    public String toString() {
        return UnsignedLongs.m7777b(this.value);
    }

    public String toString(int i) {
        return UnsignedLongs.m7780a(this.value, i);
    }
}
