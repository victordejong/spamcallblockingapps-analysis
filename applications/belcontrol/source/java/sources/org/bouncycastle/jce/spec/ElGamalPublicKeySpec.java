package org.bouncycastle.jce.spec;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ElGamalPublicKeySpec.class */
public class ElGamalPublicKeySpec extends ElGamalKeySpec {

    /* renamed from: y */
    private BigInteger f7641y;

    public ElGamalPublicKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f7641y = bigInteger;
    }

    public BigInteger getY() {
        return this.f7641y;
    }
}
