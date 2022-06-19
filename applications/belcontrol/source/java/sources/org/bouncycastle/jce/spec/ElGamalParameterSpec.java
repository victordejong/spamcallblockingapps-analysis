package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ElGamalParameterSpec.class */
public class ElGamalParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: g */
    private BigInteger f7638g;

    /* renamed from: p */
    private BigInteger f7639p;

    public ElGamalParameterSpec(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f7639p = bigInteger;
        this.f7638g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f7638g;
    }

    public BigInteger getP() {
        return this.f7639p;
    }
}
