package org.spongycastle.jce.spec;

import org.spongycastle.math.p032ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/ECPublicKeySpec.class */
public class ECPublicKeySpec extends ECKeySpec {

    /* renamed from: q */
    private ECPoint f1520q;

    public ECPublicKeySpec(ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        if (eCPoint.getCurve() != null) {
            this.f1520q = eCPoint.normalize();
        } else {
            this.f1520q = eCPoint;
        }
    }

    public ECPoint getQ() {
        return this.f1520q;
    }
}
