package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DSAPrivateKeyParameters.class */
public class DSAPrivateKeyParameters extends DSAKeyParameters {

    /* renamed from: x */
    private BigInteger f7568x;

    public DSAPrivateKeyParameters(BigInteger bigInteger, DSAParameters dSAParameters) {
        super(true, dSAParameters);
        this.f7568x = bigInteger;
    }

    public BigInteger getX() {
        return this.f7568x;
    }
}
