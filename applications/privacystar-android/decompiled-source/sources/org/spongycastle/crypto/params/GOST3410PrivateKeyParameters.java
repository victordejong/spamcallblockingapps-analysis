package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/GOST3410PrivateKeyParameters.class */
public class GOST3410PrivateKeyParameters extends GOST3410KeyParameters {

    /* renamed from: x */
    private BigInteger f1421x;

    public GOST3410PrivateKeyParameters(BigInteger bigInteger, GOST3410Parameters gOST3410Parameters) {
        super(true, gOST3410Parameters);
        this.f1421x = bigInteger;
    }

    public BigInteger getX() {
        return this.f1421x;
    }
}
