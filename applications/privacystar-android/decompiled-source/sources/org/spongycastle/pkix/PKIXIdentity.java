package org.spongycastle.pkix;

import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectKeyIdentifier;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.cms.KeyTransRecipientId;
import org.spongycastle.cms.RecipientId;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkix/PKIXIdentity.class */
public class PKIXIdentity {
    private final X509CertificateHolder[] certificateHolders;
    private final PrivateKeyInfo privateKeyInfo;

    public PKIXIdentity(PrivateKeyInfo privateKeyInfo, X509CertificateHolder[] x509CertificateHolderArr) {
        this.privateKeyInfo = privateKeyInfo;
        this.certificateHolders = new X509CertificateHolder[x509CertificateHolderArr.length];
        System.arraycopy(x509CertificateHolderArr, 0, this.certificateHolders, 0, x509CertificateHolderArr.length);
    }

    private byte[] getSubjectKeyIdentifier() {
        SubjectKeyIdentifier fromExtensions = SubjectKeyIdentifier.fromExtensions(this.certificateHolders[0].getExtensions());
        if (fromExtensions == null) {
            return null;
        }
        return fromExtensions.getKeyIdentifier();
    }

    public X509CertificateHolder getCertificate() {
        return this.certificateHolders[0];
    }

    public PrivateKeyInfo getPrivateKeyInfo() {
        return this.privateKeyInfo;
    }

    public RecipientId getRecipientId() {
        return new KeyTransRecipientId(this.certificateHolders[0].getIssuer(), this.certificateHolders[0].getSerialNumber(), getSubjectKeyIdentifier());
    }
}
