package org.bouncycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.agreement.DHBasicAgreement;
import org.bouncycastle.crypto.generators.DHBasicKeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHKeyGenerationParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.crypto.util.PublicKeyFactory;
import org.bouncycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsDHKeyExchange.class */
public class TlsDHKeyExchange implements TlsKeyExchange {
    public static final BigInteger ONE = BigInteger.valueOf(1);
    public static final BigInteger TWO = BigInteger.valueOf(2);
    public TlsAgreementCredentials agreementCredentials;
    public TlsClientContext context;
    public int keyExchange;
    public TlsSigner tlsSigner;
    public AsymmetricKeyParameter serverPublicKey = null;
    public DHPublicKeyParameters dhAgreeServerPublicKey = null;
    public DHPrivateKeyParameters dhAgreeClientPrivateKey = null;

    public TlsDHKeyExchange(TlsClientContext tlsClientContext, int i) {
        TlsRSASigner tlsRSASigner;
        if (i == 3) {
            tlsRSASigner = new TlsDSSSigner();
        } else if (i != 5) {
            tlsRSASigner = null;
            if (i != 7) {
                if (i != 9) {
                    throw new IllegalArgumentException("unsupported key exchange algorithm");
                }
                tlsRSASigner = null;
            }
        } else {
            tlsRSASigner = new TlsRSASigner();
        }
        this.tlsSigner = tlsRSASigner;
        this.context = tlsClientContext;
        this.keyExchange = i;
    }

    public boolean areCompatibleParameters(DHParameters dHParameters, DHParameters dHParameters2) {
        return dHParameters.getP().equals(dHParameters2.getP()) && dHParameters.getG().equals(dHParameters2.getG());
    }

    public byte[] calculateDHBasicAgreement(DHPublicKeyParameters dHPublicKeyParameters, DHPrivateKeyParameters dHPrivateKeyParameters) {
        DHBasicAgreement dHBasicAgreement = new DHBasicAgreement();
        dHBasicAgreement.init(this.dhAgreeClientPrivateKey);
        return BigIntegers.asUnsignedByteArray(dHBasicAgreement.calculateAgreement(this.dhAgreeServerPublicKey));
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) {
        if (this.agreementCredentials != null) {
            TlsUtils.writeUint24(0, outputStream);
        } else {
            generateEphemeralClientKeyExchange(this.dhAgreeServerPublicKey.getParameters(), outputStream);
        }
    }

    public AsymmetricCipherKeyPair generateDHKeyPair(DHParameters dHParameters) {
        DHBasicKeyPairGenerator dHBasicKeyPairGenerator = new DHBasicKeyPairGenerator();
        dHBasicKeyPairGenerator.init(new DHKeyGenerationParameters(this.context.getSecureRandom(), dHParameters));
        return dHBasicKeyPairGenerator.generateKeyPair();
    }

    public void generateEphemeralClientKeyExchange(DHParameters dHParameters, OutputStream outputStream) {
        AsymmetricCipherKeyPair generateDHKeyPair = generateDHKeyPair(dHParameters);
        this.dhAgreeClientPrivateKey = (DHPrivateKeyParameters) generateDHKeyPair.getPrivate();
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(((DHPublicKeyParameters) generateDHKeyPair.getPublic()).getY());
        TlsUtils.writeUint24(asUnsignedByteArray.length + 2, outputStream);
        TlsUtils.writeOpaque16(asUnsignedByteArray, outputStream);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() {
        TlsAgreementCredentials tlsAgreementCredentials = this.agreementCredentials;
        return tlsAgreementCredentials != null ? tlsAgreementCredentials.generateAgreement(this.dhAgreeServerPublicKey) : calculateDHBasicAgreement(this.dhAgreeServerPublicKey, this.dhAgreeClientPrivateKey);
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
                    this.dhAgreeServerPublicKey = validateDHPublicKey((DHPublicKeyParameters) createKey);
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
            if (s != 1 && s != 2 && s != 3 && s != 4 && s != 64) {
                throw new TlsFatalAlert((short) 47);
            }
        }
    }

    public DHPublicKeyParameters validateDHPublicKey(DHPublicKeyParameters dHPublicKeyParameters) {
        BigInteger y = dHPublicKeyParameters.getY();
        DHParameters parameters = dHPublicKeyParameters.getParameters();
        BigInteger p = parameters.getP();
        BigInteger g = parameters.getG();
        if (p.isProbablePrime(2)) {
            BigInteger bigInteger = TWO;
            if (g.compareTo(bigInteger) < 0 || g.compareTo(p.subtract(bigInteger)) > 0) {
                throw new TlsFatalAlert((short) 47);
            }
            if (y.compareTo(bigInteger) >= 0 && y.compareTo(p.subtract(ONE)) <= 0) {
                return dHPublicKeyParameters;
            }
            throw new TlsFatalAlert((short) 47);
        }
        throw new TlsFatalAlert((short) 47);
    }
}
