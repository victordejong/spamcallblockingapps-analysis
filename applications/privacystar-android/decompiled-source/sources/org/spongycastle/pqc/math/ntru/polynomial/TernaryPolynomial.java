package org.spongycastle.pqc.math.ntru.polynomial;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial.class */
public interface TernaryPolynomial extends Polynomial {
    void clear();

    int[] getNegOnes();

    int[] getOnes();

    @Override // org.spongycastle.pqc.math.ntru.polynomial.Polynomial
    IntegerPolynomial mult(IntegerPolynomial integerPolynomial);

    int size();
}
