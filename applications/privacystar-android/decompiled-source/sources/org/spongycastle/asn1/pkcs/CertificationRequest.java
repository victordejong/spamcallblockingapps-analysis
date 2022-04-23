package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/pkcs/CertificationRequest.class */
public class CertificationRequest extends ASN1Object {
    protected CertificationRequestInfo reqInfo;
    protected AlgorithmIdentifier sigAlgId;
    protected DERBitString sigBits;

    /* JADX INFO: Access modifiers changed from: protected */
    public CertificationRequest() {
        this.reqInfo = null;
        this.sigAlgId = null;
        this.sigBits = null;
    }

    public CertificationRequest(ASN1Sequence aSN1Sequence) {
        this.reqInfo = null;
        this.sigAlgId = null;
        this.sigBits = null;
        this.reqInfo = CertificationRequestInfo.getInstance(aSN1Sequence.getObjectAt(0));
        this.sigAlgId = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(1));
        this.sigBits = (DERBitString) aSN1Sequence.getObjectAt(2);
    }

    public CertificationRequest(CertificationRequestInfo certificationRequestInfo, AlgorithmIdentifier algorithmIdentifier, DERBitString dERBitString) {
        this.reqInfo = null;
        this.sigAlgId = null;
        this.sigBits = null;
        this.reqInfo = certificationRequestInfo;
        this.sigAlgId = algorithmIdentifier;
        this.sigBits = dERBitString;
    }

    public static CertificationRequest getInstance(Object obj) {
        if (obj instanceof CertificationRequest) {
            return (CertificationRequest) obj;
        }
        if (obj != null) {
            return new CertificationRequest(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public CertificationRequestInfo getCertificationRequestInfo() {
        return this.reqInfo;
    }

    public DERBitString getSignature() {
        return this.sigBits;
    }

    public AlgorithmIdentifier getSignatureAlgorithm() {
        return this.sigAlgId;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.reqInfo);
        aSN1EncodableVector.add(this.sigAlgId);
        aSN1EncodableVector.add(this.sigBits);
        return new DERSequence(aSN1EncodableVector);
    }
}
