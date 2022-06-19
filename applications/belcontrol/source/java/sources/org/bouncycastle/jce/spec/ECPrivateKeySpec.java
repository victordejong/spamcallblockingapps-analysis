package org.bouncycastle.jce.spec;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ECPrivateKeySpec.class */
public class ECPrivateKeySpec extends ECKeySpec {

    /* renamed from: d */
    private BigInteger f7636d;

    public ECPrivateKeySpec(BigInteger bigInteger, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        this.f7636d = bigInteger;
    }

    public BigInteger getD() {
        return this.f7636d;
    }
}
