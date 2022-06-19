package org.bouncycastle.math.p012ec;

import org.bouncycastle.math.p012ec.ECPoint;
/* renamed from: org.bouncycastle.math.ec.WTauNafPreCompInfo */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/WTauNafPreCompInfo.class */
public class WTauNafPreCompInfo implements PreCompInfo {
    private ECPoint.F2m[] preComp;

    public WTauNafPreCompInfo(ECPoint.F2m[] f2mArr) {
        this.preComp = null;
        this.preComp = f2mArr;
    }

    public ECPoint.F2m[] getPreComp() {
        return this.preComp;
    }
}
