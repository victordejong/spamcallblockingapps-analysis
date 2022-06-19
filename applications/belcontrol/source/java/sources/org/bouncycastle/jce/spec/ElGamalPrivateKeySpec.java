package org.bouncycastle.jce.spec;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ElGamalPrivateKeySpec.class */
public class ElGamalPrivateKeySpec extends ElGamalKeySpec {

    /* renamed from: x */
    private BigInteger f7640x;

    public ElGamalPrivateKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f7640x = bigInteger;
    }

    public BigInteger getX() {
        return this.f7640x;
    }
}
