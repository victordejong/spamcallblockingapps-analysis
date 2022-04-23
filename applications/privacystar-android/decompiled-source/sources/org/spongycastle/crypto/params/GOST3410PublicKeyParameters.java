package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/GOST3410PublicKeyParameters.class */
public class GOST3410PublicKeyParameters extends GOST3410KeyParameters {

    /* renamed from: y */
    private BigInteger f1422y;

    public GOST3410PublicKeyParameters(BigInteger bigInteger, GOST3410Parameters gOST3410Parameters) {
        super(false, gOST3410Parameters);
        this.f1422y = bigInteger;
    }

    public BigInteger getY() {
        return this.f1422y;
    }
}
