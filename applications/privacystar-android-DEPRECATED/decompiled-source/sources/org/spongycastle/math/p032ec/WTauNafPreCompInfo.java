package org.spongycastle.math.p032ec;

import org.spongycastle.math.p032ec.ECPoint;
/* renamed from: org.spongycastle.math.ec.WTauNafPreCompInfo */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/WTauNafPreCompInfo.class */
public class WTauNafPreCompInfo implements PreCompInfo {
    protected ECPoint.AbstractF2m[] preComp = null;

    public ECPoint.AbstractF2m[] getPreComp() {
        return this.preComp;
    }

    public void setPreComp(ECPoint.AbstractF2m[] abstractF2mArr) {
        this.preComp = abstractF2mArr;
    }
}
