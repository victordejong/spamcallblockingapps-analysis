package org.bouncycastle.crypto.tls;

import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.agreement.DHBasicAgreement;
import org.bouncycastle.crypto.agreement.ECDHBasicAgreement;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials.class */
public class DefaultTlsAgreementCredentials implements TlsAgreementCredentials {
    public BasicAgreement basicAgreement;
    public Certificate clientCert;
    public AsymmetricKeyParameter clientPrivateKey;

    public DefaultTlsAgreementCredentials(Certificate certificate, AsymmetricKeyParameter asymmetricKeyParameter) {
        BasicAgreement eCDHBasicAgreement;
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
            if (asymmetricKeyParameter instanceof DHPrivateKeyParameters) {
                eCDHBasicAgreement = new DHBasicAgreement();
            } else if (!(asymmetricKeyParameter instanceof ECPrivateKeyParameters)) {
                throw new IllegalArgumentException("'clientPrivateKey' type not supported: " + asymmetricKeyParameter.getClass().getName());
            } else {
                eCDHBasicAgreement = new ECDHBasicAgreement();
            }
            this.basicAgreement = eCDHBasicAgreement;
            this.clientCert = certificate;
            this.clientPrivateKey = asymmetricKeyParameter;
            return;
        }
        throw new IllegalArgumentException("'clientCertificate' cannot be null");
    }

    @Override // org.bouncycastle.crypto.tls.TlsAgreementCredentials
    public byte[] generateAgreement(AsymmetricKeyParameter asymmetricKeyParameter) {
        this.basicAgreement.init(this.clientPrivateKey);
        return BigIntegers.asUnsignedByteArray(this.basicAgreement.calculateAgreement(asymmetricKeyParameter));
    }

    @Override // org.bouncycastle.crypto.tls.TlsCredentials
    public Certificate getCertificate() {
        return this.clientCert;
    }
}
