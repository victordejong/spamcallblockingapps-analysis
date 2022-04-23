package org.spongycastle.jce.spec;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/ElGamalPrivateKeySpec.class */
public class ElGamalPrivateKeySpec extends ElGamalKeySpec {

    /* renamed from: x */
    private BigInteger f1523x;

    public ElGamalPrivateKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f1523x = bigInteger;
    }

    public BigInteger getX() {
        return this.f1523x;
    }
}
