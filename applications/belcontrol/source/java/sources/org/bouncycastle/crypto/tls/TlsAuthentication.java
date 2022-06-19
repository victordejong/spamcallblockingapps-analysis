package org.bouncycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsAuthentication.class */
public interface TlsAuthentication {
    TlsCredentials getClientCredentials(CertificateRequest certificateRequest);

    void notifyServerCertificate(Certificate certificate);
}
