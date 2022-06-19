package org.bouncycastle.crypto.params;

import org.bouncycastle.math.p012ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ECPublicKeyParameters.class */
public class ECPublicKeyParameters extends ECKeyParameters {

    /* renamed from: Q */
    public ECPoint f7574Q;

    public ECPublicKeyParameters(ECPoint eCPoint, ECDomainParameters eCDomainParameters) {
        super(false, eCDomainParameters);
        this.f7574Q = eCPoint;
    }

    public ECPoint getQ() {
        return this.f7574Q;
    }
}
