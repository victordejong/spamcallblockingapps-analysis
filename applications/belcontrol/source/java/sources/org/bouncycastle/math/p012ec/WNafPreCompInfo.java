package org.bouncycastle.math.p012ec;
/* renamed from: org.bouncycastle.math.ec.WNafPreCompInfo */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/WNafPreCompInfo.class */
public class WNafPreCompInfo implements PreCompInfo {
    private ECPoint[] preComp = null;
    private ECPoint twiceP = null;

    public ECPoint[] getPreComp() {
        return this.preComp;
    }

    public ECPoint getTwiceP() {
        return this.twiceP;
    }

    public void setPreComp(ECPoint[] eCPointArr) {
        this.preComp = eCPointArr;
    }

    public void setTwiceP(ECPoint eCPoint) {
        this.twiceP = eCPoint;
    }
}
