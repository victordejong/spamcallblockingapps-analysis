package org.bouncycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.agreement.ECDHBasicAgreement;
import org.bouncycastle.crypto.generators.ECKeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyGenerationParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.util.PublicKeyFactory;
import org.bouncycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsECDHKeyExchange.class */
public class TlsECDHKeyExchange implements TlsKeyExchange {
    public TlsAgreementCredentials agreementCredentials;
    public TlsClientContext context;
    public ECPrivateKeyParameters ecAgreeClientPrivateKey = null;
    public ECPublicKeyParameters ecAgreeServerPublicKey;
    public int keyExchange;
    public AsymmetricKeyParameter serverPublicKey;
    public TlsSigner tlsSigner;

    public TlsECDHKeyExchange(TlsClientContext tlsClientContext, int i) {
        TlsRSASigner tlsRSASigner = null;
        switch (i) {
            case 16:
            case 18:
                break;
            case 17:
                tlsRSASigner = new TlsECDSASigner();
                break;
            case 19:
                tlsRSASigner = new TlsRSASigner();
                break;
            default:
                throw new IllegalArgumentException("unsupported key exchange algorithm");
        }
        this.tlsSigner = tlsRSASigner;
        this.context = tlsClientContext;
        this.keyExchange = i;
    }

    public boolean areOnSameCurve(ECDomainParameters eCDomainParameters, ECDomainParameters eCDomainParameters2) {
        return eCDomainParameters.getCurve().equals(eCDomainParameters2.getCurve()) && eCDomainParameters.getG().equals(eCDomainParameters2.getG()) && eCDomainParameters.getN().equals(eCDomainParameters2.getN()) && eCDomainParameters.getH().equals(eCDomainParameters2.getH());
    }

    public byte[] calculateECDHBasicAgreement(ECPublicKeyParameters eCPublicKeyParameters, ECPrivateKeyParameters eCPrivateKeyParameters) {
        ECDHBasicAgreement eCDHBasicAgreement = new ECDHBasicAgreement();
        eCDHBasicAgreement.init(eCPrivateKeyParameters);
        return BigIntegers.asUnsignedByteArray(eCDHBasicAgreement.calculateAgreement(eCPublicKeyParameters));
    }

    public byte[] externalizeKey(ECPublicKeyParameters eCPublicKeyParameters) {
        return eCPublicKeyParameters.getQ().getEncoded();
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) {
        if (this.agreementCredentials != null) {
            TlsUtils.writeUint24(0, outputStream);
        } else {
            generateEphemeralClientKeyExchange(this.ecAgreeServerPublicKey.getParameters(), outputStream);
        }
    }

    public AsymmetricCipherKeyPair generateECKeyPair(ECDomainParameters eCDomainParameters) {
        ECKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
        eCKeyPairGenerator.init(new ECKeyGenerationParameters(eCDomainParameters, this.context.getSecureRandom()));
        return eCKeyPairGenerator.generateKeyPair();
    }

    public void generateEphemeralClientKeyExchange(ECDomainParameters eCDomainParameters, OutputStream outputStream) {
        AsymmetricCipherKeyPair generateECKeyPair = generateECKeyPair(eCDomainParameters);
        this.ecAgreeClientPrivateKey = (ECPrivateKeyParameters) generateECKeyPair.getPrivate();
        byte[] externalizeKey = externalizeKey((ECPublicKeyParameters) generateECKeyPair.getPublic());
        TlsUtils.writeUint24(externalizeKey.length + 1, outputStream);
        TlsUtils.writeOpaque8(externalizeKey, outputStream);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() {
        TlsAgreementCredentials tlsAgreementCredentials = this.agreementCredentials;
        return tlsAgreementCredentials != null ? tlsAgreementCredentials.generateAgreement(this.ecAgreeServerPublicKey) : calculateECDHBasicAgreement(this.ecAgreeServerPublicKey, this.ecAgreeClientPrivateKey);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) {
        if (tlsCredentials instanceof TlsAgreementCredentials) {
            this.agreementCredentials = (TlsAgreementCredentials) tlsCredentials;
        } else if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Certificate certificate) {
        int i;
        X509CertificateStructure x509CertificateStructure = certificate.certs[0];
        try {
            AsymmetricKeyParameter createKey = PublicKeyFactory.createKey(x509CertificateStructure.getSubjectPublicKeyInfo());
            this.serverPublicKey = createKey;
            TlsSigner tlsSigner = this.tlsSigner;
            if (tlsSigner == null) {
                try {
                    this.ecAgreeServerPublicKey = validateECPublicKey((ECPublicKeyParameters) createKey);
                    i = 8;
                } catch (ClassCastException e) {
                    throw new TlsFatalAlert((short) 46);
                }
            } else if (!tlsSigner.isValidPublicKey(createKey)) {
                throw new TlsFatalAlert((short) 46);
            } else {
                i = 128;
            }
            TlsUtils.validateKeyUsage(x509CertificateStructure, i);
        } catch (RuntimeException e2) {
            throw new TlsFatalAlert((short) 43);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) {
        throw new TlsFatalAlert((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipClientCredentials() {
        this.agreementCredentials = null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerCertificate() {
        throw new TlsFatalAlert((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerKeyExchange() {
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(CertificateRequest certificateRequest) {
        short[] certificateTypes;
        for (short s : certificateRequest.getCertificateTypes()) {
            if (s != 1 && s != 2) {
                switch (s) {
                    case 64:
                    case 65:
                    case 66:
                        break;
                    default:
                        throw new TlsFatalAlert((short) 47);
                }
            }
        }
    }

    public ECPublicKeyParameters validateECPublicKey(ECPublicKeyParameters eCPublicKeyParameters) {
        return eCPublicKeyParameters;
    }
}
