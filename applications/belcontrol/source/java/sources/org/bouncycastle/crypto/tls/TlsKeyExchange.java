package org.bouncycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsKeyExchange.class */
public interface TlsKeyExchange {
    void generateClientKeyExchange(OutputStream outputStream);

    byte[] generatePremasterSecret();

    void processClientCredentials(TlsCredentials tlsCredentials);

    void processServerCertificate(Certificate certificate);

    void processServerKeyExchange(InputStream inputStream);

    void skipClientCredentials();

    void skipServerCertificate();

    void skipServerKeyExchange();

    void validateCertificateRequest(CertificateRequest certificateRequest);
}
