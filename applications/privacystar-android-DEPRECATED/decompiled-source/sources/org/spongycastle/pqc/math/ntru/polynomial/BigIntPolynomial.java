package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial.class */
public class BigIntPolynomial {
    private static final double LOG_10_2 = Math.log10(2.0d);
    BigInteger[] coeffs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BigIntPolynomial(int i) {
        this.coeffs = new BigInteger[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.coeffs[i2] = Constants.BIGINT_ZERO;
        }
    }

    public BigIntPolynomial(IntegerPolynomial integerPolynomial) {
        this.coeffs = new BigInteger[integerPolynomial.coeffs.length];
        for (int i = 0; i < this.coeffs.length; i++) {
            this.coeffs[i] = BigInteger.valueOf(integerPolynomial.coeffs[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BigIntPolynomial(BigInteger[] bigIntegerArr) {
        this.coeffs = bigIntegerArr;
    }

    static BigIntPolynomial generateRandomSmall(int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < i2; i4++) {
            arrayList.add(Constants.BIGINT_ONE);
        }
        for (int i5 = 0; i5 < i3; i5++) {
            arrayList.add(BigInteger.valueOf(-1L));
        }
        while (arrayList.size() < i) {
            arrayList.add(Constants.BIGINT_ZERO);
        }
        Collections.shuffle(arrayList, new SecureRandom());
        BigIntPolynomial bigIntPolynomial = new BigIntPolynomial(i);
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            bigIntPolynomial.coeffs[i6] = (BigInteger) arrayList.get(i6);
        }
        return bigIntPolynomial;
    }

    private BigInteger maxCoeffAbs() {
        BigInteger abs = this.coeffs[0].abs();
        for (int i = 1; i < this.coeffs.length; i++) {
            BigInteger abs2 = this.coeffs[i].abs();
            abs = abs;
            if (abs2.compareTo(abs) > 0) {
                abs = abs2;
            }
        }
        return abs;
    }

    private BigIntPolynomial multRecursive(BigIntPolynomial bigIntPolynomial) {
        BigInteger[] bigIntegerArr = this.coeffs;
        BigInteger[] bigIntegerArr2 = bigIntPolynomial.coeffs;
        int length = bigIntPolynomial.coeffs.length;
        if (length <= 1) {
            BigInteger[] clone = Arrays.clone(this.coeffs);
            for (int i = 0; i < this.coeffs.length; i++) {
                clone[i] = clone[i].multiply(bigIntPolynomial.coeffs[0]);
            }
            return new BigIntPolynomial(clone);
        }
        int i2 = length / 2;
        BigIntPolynomial bigIntPolynomial2 = new BigIntPolynomial(Arrays.copyOf(bigIntegerArr, i2));
        BigIntPolynomial bigIntPolynomial3 = new BigIntPolynomial(Arrays.copyOfRange(bigIntegerArr, i2, length));
        BigIntPolynomial bigIntPolynomial4 = new BigIntPolynomial(Arrays.copyOf(bigIntegerArr2, i2));
        BigIntPolynomial bigIntPolynomial5 = new BigIntPolynomial(Arrays.copyOfRange(bigIntegerArr2, i2, length));
        BigIntPolynomial bigIntPolynomial6 = (BigIntPolynomial) bigIntPolynomial2.clone();
        bigIntPolynomial6.add(bigIntPolynomial3);
        BigIntPolynomial bigIntPolynomial7 = (BigIntPolynomial) bigIntPolynomial4.clone();
        bigIntPolynomial7.add(bigIntPolynomial5);
        BigIntPolynomial multRecursive = bigIntPolynomial2.multRecursive(bigIntPolynomial4);
        BigIntPolynomial multRecursive2 = bigIntPolynomial3.multRecursive(bigIntPolynomial5);
        BigIntPolynomial multRecursive3 = bigIntPolynomial6.multRecursive(bigIntPolynomial7);
        multRecursive3.sub(multRecursive);
        multRecursive3.sub(multRecursive2);
        BigIntPolynomial bigIntPolynomial8 = new BigIntPolynomial((length * 2) - 1);
        for (int i3 = 0; i3 < multRecursive.coeffs.length; i3++) {
            bigIntPolynomial8.coeffs[i3] = multRecursive.coeffs[i3];
        }
        for (int i4 = 0; i4 < multRecursive3.coeffs.length; i4++) {
            BigInteger[] bigIntegerArr3 = bigIntPolynomial8.coeffs;
            int i5 = i2 + i4;
            bigIntegerArr3[i5] = bigIntPolynomial8.coeffs[i5].add(multRecursive3.coeffs[i4]);
        }
        for (int i6 = 0; i6 < multRecursive2.coeffs.length; i6++) {
            BigInteger[] bigIntegerArr4 = bigIntPolynomial8.coeffs;
            int i7 = (i2 * 2) + i6;
            bigIntegerArr4[i7] = bigIntPolynomial8.coeffs[i7].add(multRecursive2.coeffs[i6]);
        }
        return bigIntPolynomial8;
    }

    public void add(BigIntPolynomial bigIntPolynomial) {
        if (bigIntPolynomial.coeffs.length > this.coeffs.length) {
            this.coeffs = Arrays.copyOf(this.coeffs, bigIntPolynomial.coeffs.length);
            for (int length = this.coeffs.length; length < this.coeffs.length; length++) {
                this.coeffs[length] = Constants.BIGINT_ZERO;
            }
        }
        for (int i = 0; i < bigIntPolynomial.coeffs.length; i++) {
            this.coeffs[i] = this.coeffs[i].add(bigIntPolynomial.coeffs[i]);
        }
    }

    void add(BigIntPolynomial bigIntPolynomial, BigInteger bigInteger) {
        add(bigIntPolynomial);
        mod(bigInteger);
    }

    public Object clone() {
        return new BigIntPolynomial((BigInteger[]) this.coeffs.clone());
    }

    public BigDecimalPolynomial div(BigDecimal bigDecimal, int i) {
        BigDecimal divide = Constants.BIGDEC_ONE.divide(bigDecimal, ((int) (maxCoeffAbs().bitLength() * LOG_10_2)) + 1 + i + 1, 6);
        BigDecimalPolynomial bigDecimalPolynomial = new BigDecimalPolynomial(this.coeffs.length);
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            bigDecimalPolynomial.coeffs[i2] = new BigDecimal(this.coeffs[i2]).multiply(divide).setScale(i, 6);
        }
        return bigDecimalPolynomial;
    }

    public void div(BigInteger bigInteger) {
        BigInteger divide = bigInteger.add(Constants.BIGINT_ONE).divide(BigInteger.valueOf(2L));
        for (int i = 0; i < this.coeffs.length; i++) {
            this.coeffs[i] = this.coeffs[i].compareTo(Constants.BIGINT_ZERO) > 0 ? this.coeffs[i].add(divide) : this.coeffs[i].add(divide.negate());
            this.coeffs[i] = this.coeffs[i].divide(bigInteger);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.areEqual(this.coeffs, ((BigIntPolynomial) obj).coeffs);
    }

    public BigInteger[] getCoeffs() {
        return Arrays.clone(this.coeffs);
    }

    public int getMaxCoeffLength() {
        return ((int) (maxCoeffAbs().bitLength() * LOG_10_2)) + 1;
    }

    public int hashCode() {
        return 31 + Arrays.hashCode(this.coeffs);
    }

    public void mod(BigInteger bigInteger) {
        for (int i = 0; i < this.coeffs.length; i++) {
            this.coeffs[i] = this.coeffs[i].mod(bigInteger);
        }
    }

    public BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial) {
        int length = this.coeffs.length;
        if (bigIntPolynomial.coeffs.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        BigIntPolynomial multRecursive = multRecursive(bigIntPolynomial);
        if (multRecursive.coeffs.length > length) {
            for (int i = length; i < multRecursive.coeffs.length; i++) {
                BigInteger[] bigIntegerArr = multRecursive.coeffs;
                int i2 = i - length;
                bigIntegerArr[i2] = multRecursive.coeffs[i2].add(multRecursive.coeffs[i]);
            }
            multRecursive.coeffs = Arrays.copyOf(multRecursive.coeffs, length);
        }
        return multRecursive;
    }

    void mult(int i) {
        mult(BigInteger.valueOf(i));
    }

    public void mult(BigInteger bigInteger) {
        for (int i = 0; i < this.coeffs.length; i++) {
            this.coeffs[i] = this.coeffs[i].multiply(bigInteger);
        }
    }

    public void sub(BigIntPolynomial bigIntPolynomial) {
        if (bigIntPolynomial.coeffs.length > this.coeffs.length) {
            this.coeffs = Arrays.copyOf(this.coeffs, bigIntPolynomial.coeffs.length);
            for (int length = this.coeffs.length; length < this.coeffs.length; length++) {
                this.coeffs[length] = Constants.BIGINT_ZERO;
            }
        }
        for (int i = 0; i < bigIntPolynomial.coeffs.length; i++) {
            this.coeffs[i] = this.coeffs[i].subtract(bigIntPolynomial.coeffs[i]);
        }
    }

    BigInteger sumCoeffs() {
        BigInteger bigInteger = Constants.BIGINT_ZERO;
        for (int i = 0; i < this.coeffs.length; i++) {
            bigInteger = bigInteger.add(this.coeffs[i]);
        }
        return bigInteger;
    }
}
