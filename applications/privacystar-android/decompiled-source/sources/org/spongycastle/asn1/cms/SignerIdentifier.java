package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERTaggedObject;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/SignerIdentifier.class */
public class SignerIdentifier extends ASN1Object implements ASN1Choice {

    /* renamed from: id */
    private ASN1Encodable f875id;

    public SignerIdentifier(ASN1OctetString aSN1OctetString) {
        this.f875id = new DERTaggedObject(false, 0, aSN1OctetString);
    }

    public SignerIdentifier(ASN1Primitive aSN1Primitive) {
        this.f875id = aSN1Primitive;
    }

    public SignerIdentifier(IssuerAndSerialNumber issuerAndSerialNumber) {
        this.f875id = issuerAndSerialNumber;
    }

    public static SignerIdentifier getInstance(Object obj) {
        if (obj == null || (obj instanceof SignerIdentifier)) {
            return (SignerIdentifier) obj;
        }
        if (obj instanceof IssuerAndSerialNumber) {
            return new SignerIdentifier((IssuerAndSerialNumber) obj);
        }
        if (obj instanceof ASN1OctetString) {
            return new SignerIdentifier((ASN1OctetString) obj);
        }
        if (obj instanceof ASN1Primitive) {
            return new SignerIdentifier((ASN1Primitive) obj);
        }
        throw new IllegalArgumentException("Illegal object in SignerIdentifier: " + obj.getClass().getName());
    }

    public ASN1Encodable getId() {
        return this.f875id instanceof ASN1TaggedObject ? ASN1OctetString.getInstance((ASN1TaggedObject) this.f875id, false) : this.f875id;
    }

    public boolean isTagged() {
        return this.f875id instanceof ASN1TaggedObject;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.f875id.toASN1Primitive();
    }
}
