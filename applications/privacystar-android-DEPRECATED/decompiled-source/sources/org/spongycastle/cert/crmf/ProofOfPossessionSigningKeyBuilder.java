package org.spongycastle.cert.crmf;

import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.crmf.CertRequest;
import org.spongycastle.asn1.crmf.PKMACValue;
import org.spongycastle.asn1.crmf.POPOSigningKey;
import org.spongycastle.asn1.crmf.POPOSigningKeyInput;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.operator.ContentSigner;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder.class */
public class ProofOfPossessionSigningKeyBuilder {
    private CertRequest certRequest;
    private GeneralName name;
    private SubjectPublicKeyInfo pubKeyInfo;
    private PKMACValue publicKeyMAC;

    public ProofOfPossessionSigningKeyBuilder(CertRequest certRequest) {
        this.certRequest = certRequest;
    }

    public ProofOfPossessionSigningKeyBuilder(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.pubKeyInfo = subjectPublicKeyInfo;
    }

    public POPOSigningKey build(ContentSigner contentSigner) {
        POPOSigningKeyInput pOPOSigningKeyInput;
        if (this.name == null || this.publicKeyMAC == null) {
            if (this.certRequest != null) {
                pOPOSigningKeyInput = null;
                CRMFUtil.derEncodeToStream(this.certRequest, contentSigner.getOutputStream());
            } else if (this.name != null) {
                pOPOSigningKeyInput = new POPOSigningKeyInput(this.name, this.pubKeyInfo);
                CRMFUtil.derEncodeToStream(pOPOSigningKeyInput, contentSigner.getOutputStream());
            } else {
                pOPOSigningKeyInput = new POPOSigningKeyInput(this.publicKeyMAC, this.pubKeyInfo);
                CRMFUtil.derEncodeToStream(pOPOSigningKeyInput, contentSigner.getOutputStream());
            }
            return new POPOSigningKey(pOPOSigningKeyInput, contentSigner.getAlgorithmIdentifier(), new DERBitString(contentSigner.getSignature()));
        }
        throw new IllegalStateException("name and publicKeyMAC cannot both be set.");
    }

    public ProofOfPossessionSigningKeyBuilder setPublicKeyMac(PKMACValueGenerator pKMACValueGenerator, char[] cArr) throws CRMFException {
        this.publicKeyMAC = pKMACValueGenerator.generate(cArr, this.pubKeyInfo);
        return this;
    }

    public ProofOfPossessionSigningKeyBuilder setSender(GeneralName generalName) {
        this.name = generalName;
        return this;
    }
}
