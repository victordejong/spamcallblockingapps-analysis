package com.google.common.primitives;

import java.math.BigInteger;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedInteger.class */
public final class UnsignedInteger extends Number implements Comparable<UnsignedInteger> {
    public final int value;
    public static final UnsignedInteger ZERO = fromIntBits(0);
    public static final UnsignedInteger ONE = fromIntBits(1);
    public static final UnsignedInteger MAX_VALUE = fromIntBits(-1);

    public UnsignedInteger(int i) {
        this.value = i & (-1);
    }

    public static UnsignedInteger fromIntBits(int i) {
        return new UnsignedInteger(i);
    }

    public static UnsignedInteger valueOf(long j) {
        C4933n.m24785a((4294967295L & j) == j, "value (%s) is outside the range for an unsigned integer value", j);
        return fromIntBits((int) j);
    }

    public static UnsignedInteger valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedInteger valueOf(String str, int i) {
        return fromIntBits(UnsignedInts.m7786a(str, i));
    }

    public static UnsignedInteger valueOf(BigInteger bigInteger) {
        C4933n.m24795a(bigInteger);
        C4933n.m24782a(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, "value (%s) is outside the range for an unsigned integer value", bigInteger);
        return fromIntBits(bigInteger.intValue());
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(longValue());
    }

    public int compareTo(UnsignedInteger unsignedInteger) {
        C4933n.m24795a(unsignedInteger);
        return UnsignedInts.m7787a(this.value, unsignedInteger.value);
    }

    public UnsignedInteger dividedBy(UnsignedInteger unsignedInteger) {
        int i = this.value;
        C4933n.m24795a(unsignedInteger);
        return fromIntBits(UnsignedInts.m7784b(i, unsignedInteger.value));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof UnsignedInteger) {
            z = false;
            if (this.value == ((UnsignedInteger) obj).value) {
                z = true;
            }
        }
        return z;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) longValue();
    }

    public int hashCode() {
        return this.value;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return UnsignedInts.m7785b(this.value);
    }

    public UnsignedInteger minus(UnsignedInteger unsignedInteger) {
        int i = this.value;
        C4933n.m24795a(unsignedInteger);
        return fromIntBits(i - unsignedInteger.value);
    }

    public UnsignedInteger mod(UnsignedInteger unsignedInteger) {
        int i = this.value;
        C4933n.m24795a(unsignedInteger);
        return fromIntBits(UnsignedInts.m7783c(i, unsignedInteger.value));
    }

    public UnsignedInteger plus(UnsignedInteger unsignedInteger) {
        int i = this.value;
        C4933n.m24795a(unsignedInteger);
        return fromIntBits(i + unsignedInteger.value);
    }

    public UnsignedInteger times(UnsignedInteger unsignedInteger) {
        int i = this.value;
        C4933n.m24795a(unsignedInteger);
        return fromIntBits(i * unsignedInteger.value);
    }

    public String toString() {
        return toString(10);
    }

    public String toString(int i) {
        return UnsignedInts.m7782d(this.value, i);
    }
}
