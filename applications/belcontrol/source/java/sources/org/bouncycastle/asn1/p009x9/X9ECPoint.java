package org.bouncycastle.asn1.p009x9;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.math.p012ec.ECCurve;
import org.bouncycastle.math.p012ec.ECPoint;
/* renamed from: org.bouncycastle.asn1.x9.X9ECPoint */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/X9ECPoint.class */
public class X9ECPoint extends ASN1Encodable {

    /* renamed from: p */
    public ECPoint f7287p;

    public X9ECPoint(ECCurve eCCurve, ASN1OctetString aSN1OctetString) {
        this.f7287p = eCCurve.decodePoint(aSN1OctetString.getOctets());
    }

    public X9ECPoint(ECPoint eCPoint) {
        this.f7287p = eCPoint;
    }

    public ECPoint getPoint() {
        return this.f7287p;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return new DEROctetString(this.f7287p.getEncoded());
    }
}
