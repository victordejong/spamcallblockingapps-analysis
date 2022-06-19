package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DSAPublicKeyParameters.class */
public class DSAPublicKeyParameters extends DSAKeyParameters {

    /* renamed from: y */
    private BigInteger f7569y;

    public DSAPublicKeyParameters(BigInteger bigInteger, DSAParameters dSAParameters) {
        super(false, dSAParameters);
        this.f7569y = bigInteger;
    }

    public BigInteger getY() {
        return this.f7569y;
    }
}
