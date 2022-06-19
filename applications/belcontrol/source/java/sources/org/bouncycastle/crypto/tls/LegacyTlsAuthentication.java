package org.bouncycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/LegacyTlsAuthentication.class */
public class LegacyTlsAuthentication implements TlsAuthentication {
    public CertificateVerifyer verifyer;

    public LegacyTlsAuthentication(CertificateVerifyer certificateVerifyer) {
        this.verifyer = certificateVerifyer;
    }

    @Override // org.bouncycastle.crypto.tls.TlsAuthentication
    public TlsCredentials getClientCredentials(CertificateRequest certificateRequest) {
        return null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsAuthentication
    public void notifyServerCertificate(Certificate certificate) {
        if (this.verifyer.isValid(certificate.getCerts())) {
            return;
        }
        throw new TlsFatalAlert((short) 90);
    }
}
