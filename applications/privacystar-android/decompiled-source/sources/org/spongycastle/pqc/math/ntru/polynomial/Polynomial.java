package org.spongycastle.pqc.math.ntru.polynomial;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/Polynomial.class */
public interface Polynomial {
    BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial);

    IntegerPolynomial mult(IntegerPolynomial integerPolynomial);

    IntegerPolynomial mult(IntegerPolynomial integerPolynomial, int i);

    IntegerPolynomial toIntegerPolynomial();
}
