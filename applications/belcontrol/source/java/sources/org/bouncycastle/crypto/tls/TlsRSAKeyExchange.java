package org.bouncycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.encodings.PKCS1Encoding;
import org.bouncycastle.crypto.engines.RSABlindedEngine;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.util.PublicKeyFactory;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsRSAKeyExchange.class */
public class TlsRSAKeyExchange implements TlsKeyExchange {
    public TlsClientContext context;
    public byte[] premasterSecret;
    public AsymmetricKeyParameter serverPublicKey = null;
    public RSAKeyParameters rsaServerPublicKey = null;

    public TlsRSAKeyExchange(TlsClientContext tlsClientContext) {
        this.context = tlsClientContext;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) {
        this.premasterSecret = new byte[48];
        this.context.getSecureRandom().nextBytes(this.premasterSecret);
        TlsUtils.writeVersion(this.premasterSecret, 0);
        PKCS1Encoding pKCS1Encoding = new PKCS1Encoding(new RSABlindedEngine());
        pKCS1Encoding.init(true, new ParametersWithRandom(this.rsaServerPublicKey, this.context.getSecureRandom()));
        try {
            byte[] bArr = this.premasterSecret;
            byte[] processBlock = pKCS1Encoding.processBlock(bArr, 0, bArr.length);
            TlsUtils.writeUint24(processBlock.length + 2, outputStream);
            TlsUtils.writeOpaque16(processBlock, outputStream);
        } catch (InvalidCipherTextException e) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() {
        byte[] bArr = this.premasterSecret;
        this.premasterSecret = null;
        return bArr;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) {
        if (tlsCredentials instanceof TlsSignerCredentials) {
            return;
        }
        throw new TlsFatalAlert((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Certificate certificate) {
        X509CertificateStructure x509CertificateStructure = certificate.certs[0];
        try {
            AsymmetricKeyParameter createKey = PublicKeyFactory.createKey(x509CertificateStructure.getSubjectPublicKeyInfo());
            this.serverPublicKey = createKey;
            if (createKey.isPrivate()) {
                throw new TlsFatalAlert((short) 80);
            }
            this.rsaServerPublicKey = validateRSAPublicKey((RSAKeyParameters) this.serverPublicKey);
            TlsUtils.validateKeyUsage(x509CertificateStructure, 32);
        } catch (RuntimeException e) {
            throw new TlsFatalAlert((short) 43);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) {
        throw new TlsFatalAlert((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipClientCredentials() {
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
            if (s != 1 && s != 2 && s != 64) {
                throw new TlsFatalAlert((short) 47);
            }
        }
    }

    public RSAKeyParameters validateRSAPublicKey(RSAKeyParameters rSAKeyParameters) {
        if (rSAKeyParameters.getExponent().isProbablePrime(2)) {
            return rSAKeyParameters;
        }
        throw new TlsFatalAlert((short) 47);
    }
}
