package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.SubjectKeyIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/OriginatorIdentifierOrKey.class */
public class OriginatorIdentifierOrKey extends ASN1Encodable implements ASN1Choice {

    /* renamed from: id */
    private DEREncodable f7222id;

    public OriginatorIdentifierOrKey(ASN1OctetString aSN1OctetString) {
        this(new SubjectKeyIdentifier(aSN1OctetString));
    }

    public OriginatorIdentifierOrKey(DERObject dERObject) {
        this.f7222id = dERObject;
    }

    public OriginatorIdentifierOrKey(IssuerAndSerialNumber issuerAndSerialNumber) {
        this.f7222id = issuerAndSerialNumber;
    }

    public OriginatorIdentifierOrKey(OriginatorPublicKey originatorPublicKey) {
        this.f7222id = new DERTaggedObject(false, 1, originatorPublicKey);
    }

    public OriginatorIdentifierOrKey(SubjectKeyIdentifier subjectKeyIdentifier) {
        this.f7222id = new DERTaggedObject(false, 0, subjectKeyIdentifier);
    }

    public static OriginatorIdentifierOrKey getInstance(Object obj) {
        if (obj == null || (obj instanceof OriginatorIdentifierOrKey)) {
            return (OriginatorIdentifierOrKey) obj;
        }
        if (obj instanceof IssuerAndSerialNumber) {
            return new OriginatorIdentifierOrKey((IssuerAndSerialNumber) obj);
        }
        if (obj instanceof SubjectKeyIdentifier) {
            return new OriginatorIdentifierOrKey((SubjectKeyIdentifier) obj);
        }
        if (obj instanceof OriginatorPublicKey) {
            return new OriginatorIdentifierOrKey((OriginatorPublicKey) obj);
        }
        if (obj instanceof ASN1TaggedObject) {
            return new OriginatorIdentifierOrKey((ASN1TaggedObject) obj);
        }
        throw new IllegalArgumentException("Invalid OriginatorIdentifierOrKey: " + obj.getClass().getName());
    }

    public static OriginatorIdentifierOrKey getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            return getInstance(aSN1TaggedObject.getObject());
        }
        throw new IllegalArgumentException("Can't implicitly tag OriginatorIdentifierOrKey");
    }

    public DEREncodable getId() {
        return this.f7222id;
    }

    public IssuerAndSerialNumber getIssuerAndSerialNumber() {
        DEREncodable dEREncodable = this.f7222id;
        if (dEREncodable instanceof IssuerAndSerialNumber) {
            return (IssuerAndSerialNumber) dEREncodable;
        }
        return null;
    }

    public OriginatorPublicKey getOriginatorKey() {
        DEREncodable dEREncodable = this.f7222id;
        if (!(dEREncodable instanceof ASN1TaggedObject) || ((ASN1TaggedObject) dEREncodable).getTagNo() != 1) {
            return null;
        }
        return OriginatorPublicKey.getInstance((ASN1TaggedObject) this.f7222id, false);
    }

    public SubjectKeyIdentifier getSubjectKeyIdentifier() {
        DEREncodable dEREncodable = this.f7222id;
        if (!(dEREncodable instanceof ASN1TaggedObject) || ((ASN1TaggedObject) dEREncodable).getTagNo() != 0) {
            return null;
        }
        return SubjectKeyIdentifier.getInstance((ASN1TaggedObject) this.f7222id, false);
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.f7222id.getDERObject();
    }
}
