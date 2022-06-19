package org.bouncycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.agreement.srp.SRP6Client;
import org.bouncycastle.crypto.agreement.srp.SRP6Util;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.p010io.SignerInputStream;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.util.PublicKeyFactory;
import org.bouncycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsSRPKeyExchange.class */
public class TlsSRPKeyExchange implements TlsKeyExchange {
    public TlsClientContext context;
    public byte[] identity;
    public int keyExchange;
    public byte[] password;
    public TlsSigner tlsSigner;
    public AsymmetricKeyParameter serverPublicKey = null;

    /* renamed from: s */
    public byte[] f7605s = null;

    /* renamed from: B */
    public BigInteger f7604B = null;
    public SRP6Client srpClient = new SRP6Client();

    public TlsSRPKeyExchange(TlsClientContext tlsClientContext, int i, byte[] bArr, byte[] bArr2) {
        TlsRSASigner tlsRSASigner = null;
        switch (i) {
            case 21:
                break;
            case 22:
                tlsRSASigner = new TlsDSSSigner();
                break;
            case 23:
                tlsRSASigner = new TlsRSASigner();
                break;
            default:
                throw new IllegalArgumentException("unsupported key exchange algorithm");
        }
        this.tlsSigner = tlsRSASigner;
        this.context = tlsClientContext;
        this.keyExchange = i;
        this.identity = bArr;
        this.password = bArr2;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) {
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(this.srpClient.generateClientCredentials(this.f7605s, this.identity, this.password));
        TlsUtils.writeUint24(asUnsignedByteArray.length + 2, outputStream);
        TlsUtils.writeOpaque16(asUnsignedByteArray, outputStream);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() {
        try {
            return BigIntegers.asUnsignedByteArray(this.srpClient.calculateSecret(this.f7604B));
        } catch (CryptoException e) {
            throw new TlsFatalAlert((short) 47);
        }
    }

    public Signer initSigner(TlsSigner tlsSigner, SecurityParameters securityParameters) {
        Signer createVerifyer = tlsSigner.createVerifyer(this.serverPublicKey);
        byte[] bArr = securityParameters.clientRandom;
        createVerifyer.update(bArr, 0, bArr.length);
        byte[] bArr2 = securityParameters.serverRandom;
        createVerifyer.update(bArr2, 0, bArr2.length);
        return createVerifyer;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) {
        throw new TlsFatalAlert((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Certificate certificate) {
        if (this.tlsSigner != null) {
            X509CertificateStructure x509CertificateStructure = certificate.certs[0];
            try {
                AsymmetricKeyParameter createKey = PublicKeyFactory.createKey(x509CertificateStructure.getSubjectPublicKeyInfo());
                this.serverPublicKey = createKey;
                if (!this.tlsSigner.isValidPublicKey(createKey)) {
                    throw new TlsFatalAlert((short) 46);
                }
                TlsUtils.validateKeyUsage(x509CertificateStructure, 128);
                return;
            } catch (RuntimeException e) {
                throw new TlsFatalAlert((short) 43);
            }
        }
        throw new TlsFatalAlert((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) {
        Signer signer;
        SignerInputStream signerInputStream;
        SecurityParameters securityParameters = this.context.getSecurityParameters();
        TlsSigner tlsSigner = this.tlsSigner;
        if (tlsSigner != null) {
            signer = initSigner(tlsSigner, securityParameters);
            signerInputStream = new SignerInputStream(inputStream, signer);
        } else {
            signer = null;
            signerInputStream = inputStream;
        }
        byte[] readOpaque16 = TlsUtils.readOpaque16(signerInputStream);
        byte[] readOpaque162 = TlsUtils.readOpaque16(signerInputStream);
        byte[] readOpaque8 = TlsUtils.readOpaque8(signerInputStream);
        byte[] readOpaque163 = TlsUtils.readOpaque16(signerInputStream);
        if (signer == null || signer.verifySignature(TlsUtils.readOpaque16(inputStream))) {
            BigInteger bigInteger = new BigInteger(1, readOpaque16);
            BigInteger bigInteger2 = new BigInteger(1, readOpaque162);
            this.f7605s = readOpaque8;
            try {
                this.f7604B = SRP6Util.validatePublicValue(bigInteger, new BigInteger(1, readOpaque163));
                this.srpClient.init(bigInteger, bigInteger2, new SHA1Digest(), this.context.getSecureRandom());
                return;
            } catch (CryptoException e) {
                throw new TlsFatalAlert((short) 47);
            }
        }
        throw new TlsFatalAlert((short) 42);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipClientCredentials() {
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerCertificate() {
        if (this.tlsSigner == null) {
            return;
        }
        throw new TlsFatalAlert((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerKeyExchange() {
        throw new TlsFatalAlert((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(CertificateRequest certificateRequest) {
        throw new TlsFatalAlert((short) 10);
    }
}
