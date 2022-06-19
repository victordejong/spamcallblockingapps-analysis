package org.bouncycastle.jce.spec;

import org.bouncycastle.math.p012ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ECPublicKeySpec.class */
public class ECPublicKeySpec extends ECKeySpec {

    /* renamed from: q */
    private ECPoint f7637q;

    public ECPublicKeySpec(ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        this.f7637q = eCPoint;
    }

    public ECPoint getQ() {
        return this.f7637q;
    }
}
