package org.spongycastle.crypto.params;

import org.spongycastle.math.p032ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ECPublicKeyParameters.class */
public class ECPublicKeyParameters extends ECKeyParameters {

    /* renamed from: Q */
    private final ECPoint f1412Q;

    public ECPublicKeyParameters(ECPoint eCPoint, ECDomainParameters eCDomainParameters) {
        super(false, eCDomainParameters);
        this.f1412Q = validate(eCPoint);
    }

    private ECPoint validate(ECPoint eCPoint) {
        if (eCPoint == null) {
            throw new IllegalArgumentException("point has null value");
        } else if (eCPoint.isInfinity()) {
            throw new IllegalArgumentException("point at infinity");
        } else {
            ECPoint normalize = eCPoint.normalize();
            if (normalize.isValid()) {
                return normalize;
            }
            throw new IllegalArgumentException("point not on curve");
        }
    }

    public ECPoint getQ() {
        return this.f1412Q;
    }
}
