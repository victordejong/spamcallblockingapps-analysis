package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/ElGamalParameterSpec.class */
public class ElGamalParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: g */
    private BigInteger f1521g;

    /* renamed from: p */
    private BigInteger f1522p;

    public ElGamalParameterSpec(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f1522p = bigInteger;
        this.f1521g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f1521g;
    }

    public BigInteger getP() {
        return this.f1522p;
    }
}
