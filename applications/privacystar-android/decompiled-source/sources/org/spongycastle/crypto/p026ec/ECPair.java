package org.spongycastle.crypto.p026ec;

import org.spongycastle.math.p032ec.ECPoint;
/* renamed from: org.spongycastle.crypto.ec.ECPair */
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/ec/ECPair.class */
public class ECPair {

    /* renamed from: x */
    private final ECPoint f1178x;

    /* renamed from: y */
    private final ECPoint f1179y;

    public ECPair(ECPoint eCPoint, ECPoint eCPoint2) {
        this.f1178x = eCPoint;
        this.f1179y = eCPoint2;
    }

    public boolean equals(Object obj) {
        return obj instanceof ECPair ? equals((ECPair) obj) : false;
    }

    public boolean equals(ECPair eCPair) {
        return eCPair.getX().equals(getX()) && eCPair.getY().equals(getY());
    }

    public ECPoint getX() {
        return this.f1178x;
    }

    public ECPoint getY() {
        return this.f1179y;
    }

    public int hashCode() {
        return this.f1178x.hashCode() + (this.f1179y.hashCode() * 37);
    }
}
