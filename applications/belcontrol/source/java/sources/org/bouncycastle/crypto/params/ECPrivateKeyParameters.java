package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ECPrivateKeyParameters.class */
public class ECPrivateKeyParameters extends ECKeyParameters {

    /* renamed from: d */
    public BigInteger f7573d;

    public ECPrivateKeyParameters(BigInteger bigInteger, ECDomainParameters eCDomainParameters) {
        super(true, eCDomainParameters);
        this.f7573d = bigInteger;
    }

    public BigInteger getD() {
        return this.f7573d;
    }
}
