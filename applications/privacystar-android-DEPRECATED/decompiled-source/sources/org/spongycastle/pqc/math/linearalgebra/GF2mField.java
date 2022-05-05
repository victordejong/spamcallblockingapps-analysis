package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/GF2mField.class */
public class GF2mField {
    private int degree;
    private int polynomial;

    public GF2mField(int i) {
        this.degree = 0;
        if (i >= 32) {
            throw new IllegalArgumentException(" Error: the degree of field is too large ");
        } else if (i < 1) {
            throw new IllegalArgumentException(" Error: the degree of field is non-positive ");
        } else {
            this.degree = i;
            this.polynomial = PolynomialRingGF2.getIrreduciblePolynomial(i);
        }
    }

    public GF2mField(int i, int i2) {
        this.degree = 0;
        if (i != PolynomialRingGF2.degree(i2)) {
            throw new IllegalArgumentException(" Error: the degree is not correct");
        } else if (!PolynomialRingGF2.isIrreducible(i2)) {
            throw new IllegalArgumentException(" Error: given polynomial is reducible");
        } else {
            this.degree = i;
            this.polynomial = i2;
        }
    }

    public GF2mField(GF2mField gF2mField) {
        this.degree = 0;
        this.degree = gF2mField.degree;
        this.polynomial = gF2mField.polynomial;
    }

    public GF2mField(byte[] bArr) {
        this.degree = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.polynomial = LittleEndianConversions.OS2IP(bArr);
        if (!PolynomialRingGF2.isIrreducible(this.polynomial)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.degree = PolynomialRingGF2.degree(this.polynomial);
    }

    private static String polyToString(int i) {
        String str = "";
        if (i == 0) {
            str = "0";
        } else {
            if (((byte) (i & 1)) == 1) {
                str = "1";
            }
            int i2 = i >>> 1;
            int i3 = 1;
            while (i2 != 0) {
                str = str;
                if (((byte) (i2 & 1)) == 1) {
                    str = str + "+x^" + i3;
                }
                i2 >>>= 1;
                i3++;
            }
        }
        return str;
    }

    public int add(int i, int i2) {
        return i ^ i2;
    }

    public String elementToStr(int i) {
        String str = "";
        for (int i2 = 0; i2 < this.degree; i2++) {
            str = (((byte) i) & 1) == 0 ? "0" + str : "1" + str;
            i >>>= 1;
        }
        return str;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2mField)) {
            return false;
        }
        GF2mField gF2mField = (GF2mField) obj;
        return this.degree == gF2mField.degree && this.polynomial == gF2mField.polynomial;
    }

    public int exp(int i, int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        int i3 = i;
        int i4 = i2;
        if (i2 < 0) {
            i3 = inverse(i);
            i4 = -i2;
        }
        int i5 = 1;
        while (i4 != 0) {
            i5 = i5;
            if ((i4 & 1) == 1) {
                i5 = mult(i5, i3);
            }
            i3 = mult(i3, i3);
            i4 >>>= 1;
        }
        return i5;
    }

    public int getDegree() {
        return this.degree;
    }

    public byte[] getEncoded() {
        return LittleEndianConversions.I2OSP(this.polynomial);
    }

    public int getPolynomial() {
        return this.polynomial;
    }

    public int getRandomElement(SecureRandom secureRandom) {
        return RandUtils.nextInt(secureRandom, 1 << this.degree);
    }

    public int getRandomNonZeroElement() {
        return getRandomNonZeroElement(new SecureRandom());
    }

    public int getRandomNonZeroElement(SecureRandom secureRandom) {
        int nextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
        int i = 0;
        while (nextInt == 0 && i < 1048576) {
            nextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
            i++;
        }
        if (i == 1048576) {
            nextInt = 1;
        }
        return nextInt;
    }

    public int hashCode() {
        return this.polynomial;
    }

    public int inverse(int i) {
        return exp(i, (1 << this.degree) - 2);
    }

    public boolean isElementOfThisField(int i) {
        boolean z = false;
        if (this.degree == 31) {
            if (i >= 0) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i >= 0) {
            z2 = false;
            if (i < (1 << this.degree)) {
                z2 = true;
            }
        }
        return z2;
    }

    public int mult(int i, int i2) {
        return PolynomialRingGF2.modMultiply(i, i2, this.polynomial);
    }

    public int sqRoot(int i) {
        int i2 = i;
        for (int i3 = 1; i3 < this.degree; i3++) {
            i2 = mult(i2, i2);
        }
        return i2;
    }

    public String toString() {
        return "Finite Field GF(2^" + this.degree + ") = GF(2)[X]/<" + polyToString(this.polynomial) + "> ";
    }
}
