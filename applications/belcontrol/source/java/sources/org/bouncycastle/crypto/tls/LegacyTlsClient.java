package org.bouncycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/LegacyTlsClient.class */
public class LegacyTlsClient extends DefaultTlsClient {
    public CertificateVerifyer verifyer;

    public LegacyTlsClient(CertificateVerifyer certificateVerifyer) {
        this.verifyer = certificateVerifyer;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsAuthentication getAuthentication() {
        return new LegacyTlsAuthentication(this.verifyer);
    }
}
