package org.bouncycastle.crypto.tls;

import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DSAPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/DefaultTlsSignerCredentials.class */
public class DefaultTlsSignerCredentials implements TlsSignerCredentials {
    public Certificate clientCert;
    public AsymmetricKeyParameter clientPrivateKey;
    public TlsSigner clientSigner;
    public TlsClientContext context;

    public DefaultTlsSignerCredentials(TlsClientContext tlsClientContext, Certificate certificate, AsymmetricKeyParameter asymmetricKeyParameter) {
        TlsSigner tlsECDSASigner;
        if (certificate != null) {
            if (certificate.certs.length == 0) {
                throw new IllegalArgumentException("'clientCertificate' cannot be empty");
            }
            if (asymmetricKeyParameter == null) {
                throw new IllegalArgumentException("'clientPrivateKey' cannot be null");
            }
            if (!asymmetricKeyParameter.isPrivate()) {
                throw new IllegalArgumentException("'clientPrivateKey' must be private");
            }
            if (asymmetricKeyParameter instanceof RSAKeyParameters) {
                tlsECDSASigner = new TlsRSASigner();
            } else if (asymmetricKeyParameter instanceof DSAPrivateKeyParameters) {
                tlsECDSASigner = new TlsDSSSigner();
            } else if (!(asymmetricKeyParameter instanceof ECPrivateKeyParameters)) {
                throw new IllegalArgumentException("'clientPrivateKey' type not supported: " + asymmetricKeyParameter.getClass().getName());
            } else {
                tlsECDSASigner = new TlsECDSASigner();
            }
            this.clientSigner = tlsECDSASigner;
            this.context = tlsClientContext;
            this.clientCert = certificate;
            this.clientPrivateKey = asymmetricKeyParameter;
            return;
        }
        throw new IllegalArgumentException("'clientCertificate' cannot be null");
    }

    @Override // org.bouncycastle.crypto.tls.TlsSignerCredentials
    public byte[] generateCertificateSignature(byte[] bArr) {
        try {
            return this.clientSigner.calculateRawSignature(this.context.getSecureRandom(), this.clientPrivateKey, bArr);
        } catch (CryptoException e) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsCredentials
    public Certificate getCertificate() {
        return this.clientCert;
    }
}
