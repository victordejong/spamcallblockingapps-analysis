package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ECPrivateKeyParameters.class */
public class ECPrivateKeyParameters extends ECKeyParameters {

    /* renamed from: d */
    BigInteger f1411d;

    public ECPrivateKeyParameters(BigInteger bigInteger, ECDomainParameters eCDomainParameters) {
        super(true, eCDomainParameters);
        this.f1411d = bigInteger;
    }

    public BigInteger getD() {
        return this.f1411d;
    }
}
