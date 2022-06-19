package org.bouncycastle.asn1.ess;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.IssuerSerial;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ess/ESSCertID.class */
public class ESSCertID extends ASN1Encodable {
    private ASN1OctetString certHash;
    private IssuerSerial issuerSerial;

    public ESSCertID(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() < 1 || aSN1Sequence.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        this.certHash = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(0));
        if (aSN1Sequence.size() <= 1) {
            return;
        }
        this.issuerSerial = IssuerSerial.getInstance(aSN1Sequence.getObjectAt(1));
    }

    public ESSCertID(byte[] bArr) {
        this.certHash = new DEROctetString(bArr);
    }

    public ESSCertID(byte[] bArr, IssuerSerial issuerSerial) {
        this.certHash = new DEROctetString(bArr);
        this.issuerSerial = issuerSerial;
    }

    public static ESSCertID getInstance(Object obj) {
        if (obj == null || (obj instanceof ESSCertID)) {
            return (ESSCertID) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new ESSCertID((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("unknown object in 'ESSCertID' factory : " + obj.getClass().getName() + ".");
    }

    public byte[] getCertHash() {
        return this.certHash.getOctets();
    }

    public IssuerSerial getIssuerSerial() {
        return this.issuerSerial;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.certHash);
        IssuerSerial issuerSerial = this.issuerSerial;
        if (issuerSerial != null) {
            aSN1EncodableVector.add(issuerSerial);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
