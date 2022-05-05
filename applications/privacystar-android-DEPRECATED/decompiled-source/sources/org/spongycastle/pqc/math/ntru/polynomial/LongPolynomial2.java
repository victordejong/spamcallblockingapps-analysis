package org.spongycastle.pqc.math.ntru.polynomial;

import android.support.p001v4.media.session.PlaybackStateCompat;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2.class */
public class LongPolynomial2 {
    private long[] coeffs;
    private int numCoeffs;

    private LongPolynomial2(int i) {
        this.coeffs = new long[i];
    }

    public LongPolynomial2(IntegerPolynomial integerPolynomial) {
        long j;
        this.numCoeffs = integerPolynomial.coeffs.length;
        this.coeffs = new long[(this.numCoeffs + 1) / 2];
        int i = 0;
        int i2 = 0;
        while (i < this.numCoeffs) {
            int i3 = i + 1;
            int i4 = integerPolynomial.coeffs[i];
            while (i4 < 0) {
                i4 += 2048;
            }
            if (i3 < this.numCoeffs) {
                i = i3 + 1;
                j = integerPolynomial.coeffs[i3];
            } else {
                i = i3;
                j = 0;
            }
            while (j < 0) {
                j += PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
            }
            this.coeffs[i2] = i4 + (j << 24);
            i2++;
        }
    }

    private LongPolynomial2(long[] jArr) {
        this.coeffs = jArr;
    }

    private void add(LongPolynomial2 longPolynomial2) {
        if (longPolynomial2.coeffs.length > this.coeffs.length) {
            this.coeffs = Arrays.copyOf(this.coeffs, longPolynomial2.coeffs.length);
        }
        for (int i = 0; i < longPolynomial2.coeffs.length; i++) {
            this.coeffs[i] = (this.coeffs[i] + longPolynomial2.coeffs[i]) & 34342963199L;
        }
    }

    private LongPolynomial2 multRecursive(LongPolynomial2 longPolynomial2) {
        long[] jArr = this.coeffs;
        long[] jArr2 = longPolynomial2.coeffs;
        int length = longPolynomial2.coeffs.length;
        if (length <= 32) {
            int i = length * 2;
            LongPolynomial2 longPolynomial22 = new LongPolynomial2(new long[i]);
            for (int i2 = 0; i2 < i; i2++) {
                for (int max = Math.max(0, (i2 - length) + 1); max <= Math.min(i2, length - 1); max++) {
                    long j = jArr[i2 - max] * jArr2[max];
                    longPolynomial22.coeffs[i2] = (longPolynomial22.coeffs[i2] + (j & ((j & 2047) + 34342961152L))) & 34342963199L;
                    long[] jArr3 = longPolynomial22.coeffs;
                    int i3 = i2 + 1;
                    jArr3[i3] = (longPolynomial22.coeffs[i3] + ((j >>> 48) & 2047)) & 34342963199L;
                }
            }
            return longPolynomial22;
        }
        int i4 = length / 2;
        LongPolynomial2 longPolynomial23 = new LongPolynomial2(Arrays.copyOf(jArr, i4));
        LongPolynomial2 longPolynomial24 = new LongPolynomial2(Arrays.copyOfRange(jArr, i4, length));
        LongPolynomial2 longPolynomial25 = new LongPolynomial2(Arrays.copyOf(jArr2, i4));
        LongPolynomial2 longPolynomial26 = new LongPolynomial2(Arrays.copyOfRange(jArr2, i4, length));
        LongPolynomial2 longPolynomial27 = (LongPolynomial2) longPolynomial23.clone();
        longPolynomial27.add(longPolynomial24);
        LongPolynomial2 longPolynomial28 = (LongPolynomial2) longPolynomial25.clone();
        longPolynomial28.add(longPolynomial26);
        LongPolynomial2 multRecursive = longPolynomial23.multRecursive(longPolynomial25);
        LongPolynomial2 multRecursive2 = longPolynomial24.multRecursive(longPolynomial26);
        LongPolynomial2 multRecursive3 = longPolynomial27.multRecursive(longPolynomial28);
        multRecursive3.sub(multRecursive);
        multRecursive3.sub(multRecursive2);
        LongPolynomial2 longPolynomial29 = new LongPolynomial2(length * 2);
        for (int i5 = 0; i5 < multRecursive.coeffs.length; i5++) {
            longPolynomial29.coeffs[i5] = multRecursive.coeffs[i5] & 34342963199L;
        }
        for (int i6 = 0; i6 < multRecursive3.coeffs.length; i6++) {
            long[] jArr4 = longPolynomial29.coeffs;
            int i7 = i4 + i6;
            jArr4[i7] = (longPolynomial29.coeffs[i7] + multRecursive3.coeffs[i6]) & 34342963199L;
        }
        for (int i8 = 0; i8 < multRecursive2.coeffs.length; i8++) {
            long[] jArr5 = longPolynomial29.coeffs;
            int i9 = (i4 * 2) + i8;
            jArr5[i9] = (longPolynomial29.coeffs[i9] + multRecursive2.coeffs[i8]) & 34342963199L;
        }
        return longPolynomial29;
    }

    private void sub(LongPolynomial2 longPolynomial2) {
        if (longPolynomial2.coeffs.length > this.coeffs.length) {
            this.coeffs = Arrays.copyOf(this.coeffs, longPolynomial2.coeffs.length);
        }
        for (int i = 0; i < longPolynomial2.coeffs.length; i++) {
            this.coeffs[i] = 34342963199L & ((this.coeffs[i] + 140737496743936L) - longPolynomial2.coeffs[i]);
        }
    }

    public Object clone() {
        LongPolynomial2 longPolynomial2 = new LongPolynomial2((long[]) this.coeffs.clone());
        longPolynomial2.numCoeffs = this.numCoeffs;
        return longPolynomial2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LongPolynomial2) {
            return Arrays.areEqual(this.coeffs, ((LongPolynomial2) obj).coeffs);
        }
        return false;
    }

    public LongPolynomial2 mult(LongPolynomial2 longPolynomial2) {
        int length = this.coeffs.length;
        if (longPolynomial2.coeffs.length == length && this.numCoeffs == longPolynomial2.numCoeffs) {
            LongPolynomial2 multRecursive = multRecursive(longPolynomial2);
            if (multRecursive.coeffs.length > length) {
                if (this.numCoeffs % 2 == 0) {
                    for (int i = length; i < multRecursive.coeffs.length; i++) {
                        long[] jArr = multRecursive.coeffs;
                        int i2 = i - length;
                        jArr[i2] = (multRecursive.coeffs[i2] + multRecursive.coeffs[i]) & 34342963199L;
                    }
                    multRecursive.coeffs = Arrays.copyOf(multRecursive.coeffs, length);
                } else {
                    for (int i3 = length; i3 < multRecursive.coeffs.length; i3++) {
                        long[] jArr2 = multRecursive.coeffs;
                        int i4 = i3 - length;
                        jArr2[i4] = multRecursive.coeffs[i4] + (multRecursive.coeffs[i3 - 1] >> 24);
                        multRecursive.coeffs[i4] = multRecursive.coeffs[i4] + ((2047 & multRecursive.coeffs[i3]) << 24);
                        long[] jArr3 = multRecursive.coeffs;
                        jArr3[i4] = jArr3[i4] & 34342963199L;
                    }
                    multRecursive.coeffs = Arrays.copyOf(multRecursive.coeffs, length);
                    long[] jArr4 = multRecursive.coeffs;
                    int length2 = multRecursive.coeffs.length - 1;
                    jArr4[length2] = jArr4[length2] & 2047;
                }
            }
            LongPolynomial2 longPolynomial22 = new LongPolynomial2(multRecursive.coeffs);
            longPolynomial22.numCoeffs = this.numCoeffs;
            return longPolynomial22;
        }
        throw new IllegalArgumentException("Number of coefficients must be the same");
    }

    public void mult2And(int i) {
        long j = i;
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            this.coeffs[i2] = (this.coeffs[i2] << 1) & ((j << 24) + j);
        }
    }

    public void subAnd(LongPolynomial2 longPolynomial2, int i) {
        long j = i;
        for (int i2 = 0; i2 < longPolynomial2.coeffs.length; i2++) {
            this.coeffs[i2] = ((this.coeffs[i2] + 140737496743936L) - longPolynomial2.coeffs[i2]) & ((j << 24) + j);
        }
    }

    public IntegerPolynomial toIntegerPolynomial() {
        int[] iArr = new int[this.numCoeffs];
        int i = 0;
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            int i3 = i + 1;
            iArr[i] = (int) (this.coeffs[i2] & 2047);
            if (i3 < this.numCoeffs) {
                i = i3 + 1;
                iArr[i3] = (int) ((this.coeffs[i2] >> 24) & 2047);
            } else {
                i = i3;
            }
        }
        return new IntegerPolynomial(iArr);
    }
}
