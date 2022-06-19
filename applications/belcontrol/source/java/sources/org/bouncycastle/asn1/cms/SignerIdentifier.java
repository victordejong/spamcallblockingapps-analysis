package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/SignerIdentifier.class */
public class SignerIdentifier extends ASN1Encodable implements ASN1Choice {

    /* renamed from: id */
    private DEREncodable f7224id;

    public SignerIdentifier(ASN1OctetString aSN1OctetString) {
        this.f7224id = new DERTaggedObject(false, 0, aSN1OctetString);
    }

    public SignerIdentifier(DERObject dERObject) {
        this.f7224id = dERObject;
    }

    public SignerIdentifier(IssuerAndSerialNumber issuerAndSerialNumber) {
        this.f7224id = issuerAndSerialNumber;
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
        if (obj instanceof DERObject) {
            return new SignerIdentifier((DERObject) obj);
        }
        throw new IllegalArgumentException("Illegal object in SignerIdentifier: " + obj.getClass().getName());
    }

    public DEREncodable getId() {
        DEREncodable dEREncodable = this.f7224id;
        ASN1OctetString aSN1OctetString = dEREncodable;
        if (dEREncodable instanceof ASN1TaggedObject) {
            aSN1OctetString = ASN1OctetString.getInstance((ASN1TaggedObject) dEREncodable, false);
        }
        return aSN1OctetString;
    }

    public boolean isTagged() {
        return this.f7224id instanceof ASN1TaggedObject;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.f7224id.getDERObject();
    }
}
