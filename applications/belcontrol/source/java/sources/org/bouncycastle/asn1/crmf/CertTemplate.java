package org.bouncycastle.asn1.crmf;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509Extensions;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/crmf/CertTemplate.class */
public class CertTemplate extends ASN1Encodable {
    private X509Extensions extensions;
    private X500Name issuer;
    private DERBitString issuerUID;
    private SubjectPublicKeyInfo publicKey;
    private ASN1Sequence seq;
    private DERInteger serialNumber;
    private AlgorithmIdentifier signingAlg;
    private X500Name subject;
    private DERBitString subjectUID;
    private OptionalValidity validity;
    private DERInteger version;

    private CertTemplate(ASN1Sequence aSN1Sequence) {
        this.seq = aSN1Sequence;
        Enumeration objects = aSN1Sequence.getObjects();
        while (objects.hasMoreElements()) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
            switch (aSN1TaggedObject.getTagNo()) {
                case 0:
                    this.version = DERInteger.getInstance(aSN1TaggedObject, false);
                    break;
                case 1:
                    this.serialNumber = DERInteger.getInstance(aSN1TaggedObject, false);
                    break;
                case 2:
                    this.signingAlg = AlgorithmIdentifier.getInstance(aSN1TaggedObject, false);
                    break;
                case 3:
                    this.issuer = X500Name.getInstance(aSN1TaggedObject, true);
                    break;
                case 4:
                    this.validity = OptionalValidity.getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, false));
                    break;
                case 5:
                    this.subject = X500Name.getInstance(aSN1TaggedObject, true);
                    break;
                case 6:
                    this.publicKey = SubjectPublicKeyInfo.getInstance(aSN1TaggedObject, false);
                    break;
                case 7:
                    this.issuerUID = DERBitString.getInstance(aSN1TaggedObject, false);
                    break;
                case 8:
                    this.subjectUID = DERBitString.getInstance(aSN1TaggedObject, false);
                    break;
                case 9:
                    this.extensions = X509Extensions.getInstance(aSN1TaggedObject, false);
                    break;
                default:
                    throw new IllegalArgumentException("unknown tag: " + aSN1TaggedObject.getTagNo());
            }
        }
    }

    public static CertTemplate getInstance(Object obj) {
        if (obj instanceof CertTemplate) {
            return (CertTemplate) obj;
        }
        if (obj == null) {
            return null;
        }
        return new CertTemplate(ASN1Sequence.getInstance(obj));
    }

    public X509Extensions getExtensions() {
        return this.extensions;
    }

    public X500Name getIssuer() {
        return this.issuer;
    }

    public DERBitString getIssuerUID() {
        return this.issuerUID;
    }

    public SubjectPublicKeyInfo getPublicKey() {
        return this.publicKey;
    }

    public DERInteger getSerialNumber() {
        return this.serialNumber;
    }

    public AlgorithmIdentifier getSigningAlg() {
        return this.signingAlg;
    }

    public X500Name getSubject() {
        return this.subject;
    }

    public DERBitString getSubjectUID() {
        return this.subjectUID;
    }

    public OptionalValidity getValidity() {
        return this.validity;
    }

    public int getVersion() {
        return this.version.getValue().intValue();
    }

    public void setPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.publicKey = subjectPublicKeyInfo;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.seq;
    }
}
