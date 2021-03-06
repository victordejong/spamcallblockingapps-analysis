package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ocsp/CertStatus.class */
public class CertStatus extends ASN1Encodable implements ASN1Choice {
    private int tagNo;
    private DEREncodable value;

    public CertStatus() {
        this.tagNo = 0;
        this.value = new DERNull();
    }

    public CertStatus(int i, DEREncodable dEREncodable) {
        this.tagNo = i;
        this.value = dEREncodable;
    }

    public CertStatus(ASN1TaggedObject aSN1TaggedObject) {
        DERNull dERNull;
        this.tagNo = aSN1TaggedObject.getTagNo();
        int tagNo = aSN1TaggedObject.getTagNo();
        if (tagNo == 0) {
            dERNull = new DERNull();
        } else if (tagNo == 1) {
            dERNull = RevokedInfo.getInstance(aSN1TaggedObject, false);
        } else if (tagNo != 2) {
            return;
        } else {
            dERNull = new DERNull();
        }
        this.value = dERNull;
    }

    public CertStatus(RevokedInfo revokedInfo) {
        this.tagNo = 1;
        this.value = revokedInfo;
    }

    public static CertStatus getInstance(Object obj) {
        if (obj == null || (obj instanceof CertStatus)) {
            return (CertStatus) obj;
        }
        if (obj instanceof ASN1TaggedObject) {
            return new CertStatus((ASN1TaggedObject) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static CertStatus getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public DEREncodable getStatus() {
        return this.value;
    }

    public int getTagNo() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return new DERTaggedObject(false, this.tagNo, this.value);
    }
}
