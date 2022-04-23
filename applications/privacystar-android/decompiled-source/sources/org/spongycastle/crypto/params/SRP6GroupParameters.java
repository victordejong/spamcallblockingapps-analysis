package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/SRP6GroupParameters.class */
public class SRP6GroupParameters {

    /* renamed from: N */
    private BigInteger f1443N;

    /* renamed from: g */
    private BigInteger f1444g;

    public SRP6GroupParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f1443N = bigInteger;
        this.f1444g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f1444g;
    }

    public BigInteger getN() {
        return this.f1443N;
    }
}
