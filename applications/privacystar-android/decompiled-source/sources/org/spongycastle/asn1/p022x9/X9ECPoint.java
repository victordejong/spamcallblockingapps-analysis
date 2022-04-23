package org.spongycastle.asn1.p022x9;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.asn1.x9.X9ECPoint */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/X9ECPoint.class */
public class X9ECPoint extends ASN1Object {

    /* renamed from: c */
    private ECCurve f963c;
    private final ASN1OctetString encoding;

    /* renamed from: p */
    private ECPoint f964p;

    public X9ECPoint(ECCurve eCCurve, ASN1OctetString aSN1OctetString) {
        this(eCCurve, aSN1OctetString.getOctets());
    }

    public X9ECPoint(ECCurve eCCurve, byte[] bArr) {
        this.f963c = eCCurve;
        this.encoding = new DEROctetString(Arrays.clone(bArr));
    }

    public X9ECPoint(ECPoint eCPoint) {
        this(eCPoint, false);
    }

    public X9ECPoint(ECPoint eCPoint, boolean z) {
        this.f964p = eCPoint.normalize();
        this.encoding = new DEROctetString(eCPoint.getEncoded(z));
    }

    public ECPoint getPoint() {
        ECPoint eCPoint;
        synchronized (this) {
            if (this.f964p == null) {
                this.f964p = this.f963c.decodePoint(this.encoding.getOctets()).normalize();
            }
            eCPoint = this.f964p;
        }
        return eCPoint;
    }

    public byte[] getPointEncoding() {
        return Arrays.clone(this.encoding.getOctets());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        if (r0[0] == 3) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isPointCompressed() {
        /*
            r3 = this;
            r0 = r3
            org.spongycastle.asn1.ASN1OctetString r0 = r0.encoding
            byte[] r0 = r0.getOctets()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0029
            r0 = r5
            r6 = r0
            r0 = r4
            int r0 = r0.length
            if (r0 <= 0) goto L_0x0029
            r0 = r4
            r1 = 0
            r0 = r0[r1]
            r1 = 2
            if (r0 == r1) goto L_0x0027
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 0
            r0 = r0[r1]
            r1 = 3
            if (r0 != r1) goto L_0x0029
        L_0x0027:
            r0 = 1
            r6 = r0
        L_0x0029:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.p022x9.X9ECPoint.isPointCompressed():boolean");
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.encoding;
    }
}
