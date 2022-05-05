package org.spongycastle.pqc.math.ntru.polynomial;

import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5.class */
public class LongPolynomial5 {
    private long[] coeffs;
    private int numCoeffs;

    public LongPolynomial5(IntegerPolynomial integerPolynomial) {
        this.numCoeffs = integerPolynomial.coeffs.length;
        this.coeffs = new long[(this.numCoeffs + 4) / 5];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.numCoeffs; i3++) {
            long[] jArr = this.coeffs;
            jArr[i] = jArr[i] | (integerPolynomial.coeffs[i3] << i2);
            int i4 = i2 + 12;
            i = i;
            i2 = i4;
            if (i4 >= 60) {
                i++;
                i2 = 0;
            }
        }
    }

    private LongPolynomial5(long[] jArr, int i) {
        this.coeffs = jArr;
        this.numCoeffs = i;
    }

    public LongPolynomial5 mult(TernaryPolynomial ternaryPolynomial) {
        long j;
        int i;
        long[][] jArr = new long[5][(this.coeffs.length + ((ternaryPolynomial.size() + 4) / 5)) - 1];
        int[] ones = ternaryPolynomial.getOnes();
        for (int i2 = 0; i2 != ones.length; i2++) {
            int i3 = ones[i2];
            int i4 = i3 / 5;
            int i5 = i3 - (i4 * 5);
            for (int i6 = 0; i6 < this.coeffs.length; i6++) {
                jArr[i5][i4] = (jArr[i5][i4] + this.coeffs[i6]) & 576319980446939135L;
                i4++;
            }
        }
        int[] negOnes = ternaryPolynomial.getNegOnes();
        for (int i7 = 0; i7 != negOnes.length; i7++) {
            int i8 = negOnes[i7];
            int i9 = i8 / 5;
            int i10 = i8 - (i9 * 5);
            for (int i11 = 0; i11 < this.coeffs.length; i11++) {
                jArr[i10][i9] = ((jArr[i10][i9] + 576601524159907840L) - this.coeffs[i11]) & 576319980446939135L;
                i9++;
            }
        }
        long[] copyOf = Arrays.copyOf(jArr[0], jArr[0].length + 1);
        for (int i12 = 1; i12 <= 4; i12++) {
            int i13 = i12 * 12;
            int i14 = 60 - i13;
            int length = jArr[i12].length;
            int i15 = 0;
            while (i15 < length) {
                long j2 = jArr[i12][i15];
                copyOf[i15] = (copyOf[i15] + ((jArr[i12][i15] & ((1 << i14) - 1)) << i13)) & 576319980446939135L;
                i15++;
                copyOf[i15] = (copyOf[i15] + (j2 >> i14)) & 576319980446939135L;
            }
        }
        int i16 = this.numCoeffs;
        for (int length2 = this.coeffs.length - 1; length2 < copyOf.length; length2++) {
            if (length2 == this.coeffs.length - 1) {
                j = this.numCoeffs == 5 ? 0L : copyOf[length2] >> ((i16 % 5) * 12);
                i = 0;
            } else {
                j = copyOf[length2];
                i = (length2 * 5) - this.numCoeffs;
            }
            int i17 = i / 5;
            int i18 = i - (i17 * 5);
            copyOf[i17] = (copyOf[i17] + (j << (i18 * 12))) & 576319980446939135L;
            int i19 = i17 + 1;
            if (i19 < this.coeffs.length) {
                copyOf[i19] = (copyOf[i19] + (j >> ((5 - i18) * 12))) & 576319980446939135L;
            }
        }
        return new LongPolynomial5(copyOf, this.numCoeffs);
    }

    public IntegerPolynomial toIntegerPolynomial() {
        int[] iArr = new int[this.numCoeffs];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.numCoeffs; i3++) {
            iArr[i3] = (int) ((this.coeffs[i] >> i2) & 2047);
            int i4 = i2 + 12;
            i = i;
            i2 = i4;
            if (i4 >= 60) {
                i++;
                i2 = 0;
            }
        }
        return new IntegerPolynomial(iArr);
    }
}
