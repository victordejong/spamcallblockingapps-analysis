package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/Resultant.class */
public class Resultant {
    public BigInteger res;
    public BigIntPolynomial rho;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Resultant(BigIntPolynomial bigIntPolynomial, BigInteger bigInteger) {
        this.rho = bigIntPolynomial;
        this.res = bigInteger;
    }
}
