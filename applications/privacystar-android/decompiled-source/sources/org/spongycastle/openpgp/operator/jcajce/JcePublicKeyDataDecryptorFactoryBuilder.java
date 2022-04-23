package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.util.Date;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.DHKey;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.jcajce.spec.UserKeyingMaterialSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
import org.spongycastle.openpgp.operator.PGPPad;
import org.spongycastle.openpgp.operator.PublicKeyDataDecryptorFactory;
import org.spongycastle.openpgp.operator.RFC6637Utils;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder.class */
public class JcePublicKeyDataDecryptorFactoryBuilder {
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private OperatorHelper contentHelper = new OperatorHelper(new DefaultJcaJceHelper());
    private JcaPGPKeyConverter keyConverter = new JcaPGPKeyConverter();
    private JcaKeyFingerprintCalculator fingerprintCalculator = new JcaKeyFingerprintCalculator();

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] decryptSessionData(int i, PrivateKey privateKey, byte[][] bArr) throws PGPException {
        Cipher createPublicKeyCipher = this.helper.createPublicKeyCipher(i);
        try {
            createPublicKeyCipher.init(2, privateKey);
            if (i == 2 || i == 1) {
                byte[] bArr2 = bArr[0];
                createPublicKeyCipher.update(bArr2, 2, bArr2.length - 2);
            } else {
                int bitLength = (((DHKey) privateKey).getParams().getP().bitLength() + 7) / 8;
                byte[] bArr3 = new byte[bitLength];
                byte[] bArr4 = bArr[0];
                if (bArr4.length - 2 > bitLength) {
                    createPublicKeyCipher.update(bArr4, 3, bArr4.length - 3);
                } else {
                    System.arraycopy(bArr4, 2, bArr3, bArr3.length - (bArr4.length - 2), bArr4.length - 2);
                    createPublicKeyCipher.update(bArr3);
                }
                byte[] bArr5 = bArr[1];
                for (int i2 = 0; i2 != bArr3.length; i2++) {
                    bArr3[i2] = (byte) 0;
                }
                if (bArr5.length - 2 > bitLength) {
                    createPublicKeyCipher.update(bArr5, 3, bArr5.length - 3);
                } else {
                    System.arraycopy(bArr5, 2, bArr3, bArr3.length - (bArr5.length - 2), bArr5.length - 2);
                    createPublicKeyCipher.update(bArr3);
                }
            }
            try {
                return createPublicKeyCipher.doFinal();
            } catch (Exception e) {
                throw new PGPException("exception decrypting session data", e);
            }
        } catch (InvalidKeyException e2) {
            throw new PGPException("error setting asymmetric cipher", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public byte[] decryptSessionData(JcaPGPKeyConverter jcaPGPKeyConverter, PGPPrivateKey pGPPrivateKey, byte[][] bArr) throws PGPException {
        PublicKeyPacket publicKeyPacket = pGPPrivateKey.getPublicKeyPacket();
        ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) publicKeyPacket.getKey();
        X9ECParameters byOID = NISTNamedCurves.getByOID(eCDHPublicBCPGKey.getCurveOID());
        Object[] objArr = bArr[0];
        int i = (((((objArr[0] ? 1 : 0) & 255) << 8) + ((objArr[1] ? 1 : 0) & 255)) + 7) / 8;
        byte[] bArr2 = new byte[i];
        System.arraycopy(objArr, 2, bArr2, 0, i);
        int i2 = i + 2;
        byte[] bArr3 = new byte[objArr[i2]];
        System.arraycopy(objArr, i2 + 1, bArr3, 0, bArr3.length);
        ECPoint decodePoint = byOID.getCurve().decodePoint(bArr2);
        try {
            byte[] createUserKeyingMaterial = RFC6637Utils.createUserKeyingMaterial(publicKeyPacket, this.fingerprintCalculator);
            KeyAgreement createKeyAgreement = this.helper.createKeyAgreement(RFC6637Utils.getAgreementAlgorithm(publicKeyPacket));
            createKeyAgreement.init(jcaPGPKeyConverter.getPrivateKey(pGPPrivateKey), new UserKeyingMaterialSpec(createUserKeyingMaterial));
            createKeyAgreement.doPhase(jcaPGPKeyConverter.getPublicKey(new PGPPublicKey(new PublicKeyPacket(18, new Date(), new ECDHPublicBCPGKey(eCDHPublicBCPGKey.getCurveOID(), decodePoint, eCDHPublicBCPGKey.getHashAlgorithm(), eCDHPublicBCPGKey.getSymmetricKeyAlgorithm())), this.fingerprintCalculator)), true);
            SecretKey generateSecret = createKeyAgreement.generateSecret(RFC6637Utils.getKeyEncryptionOID(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm()).getId());
            Cipher createKeyWrapper = this.helper.createKeyWrapper(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm());
            createKeyWrapper.init(4, generateSecret);
            return PGPPad.unpadSessionData(createKeyWrapper.unwrap(bArr3, "Session", 3).getEncoded());
        } catch (IOException e) {
            throw new PGPException("error setting asymmetric cipher", e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new PGPException("error setting asymmetric cipher", e2);
        } catch (InvalidKeyException e3) {
            throw new PGPException("error setting asymmetric cipher", e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new PGPException("error setting asymmetric cipher", e4);
        } catch (GeneralSecurityException e5) {
            throw new PGPException("error setting asymmetric cipher", e5);
        }
    }

    public PublicKeyDataDecryptorFactory build(final PrivateKey privateKey) {
        return new PublicKeyDataDecryptorFactory() { // from class: org.spongycastle.openpgp.operator.jcajce.JcePublicKeyDataDecryptorFactoryBuilder.1
            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptorFactory
            public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
                return JcePublicKeyDataDecryptorFactoryBuilder.this.contentHelper.createDataDecryptor(z, i, bArr);
            }

            @Override // org.spongycastle.openpgp.operator.PublicKeyDataDecryptorFactory
            public byte[] recoverSessionData(int i, byte[][] bArr) throws PGPException {
                if (i != 18) {
                    return JcePublicKeyDataDecryptorFactoryBuilder.this.decryptSessionData(i, privateKey, bArr);
                }
                throw new PGPException("ECDH requires use of PGPPrivateKey for decryption");
            }
        };
    }

    public PublicKeyDataDecryptorFactory build(final PGPPrivateKey pGPPrivateKey) {
        return new PublicKeyDataDecryptorFactory() { // from class: org.spongycastle.openpgp.operator.jcajce.JcePublicKeyDataDecryptorFactoryBuilder.2
            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptorFactory
            public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
                return JcePublicKeyDataDecryptorFactoryBuilder.this.contentHelper.createDataDecryptor(z, i, bArr);
            }

            @Override // org.spongycastle.openpgp.operator.PublicKeyDataDecryptorFactory
            public byte[] recoverSessionData(int i, byte[][] bArr) throws PGPException {
                return i == 18 ? JcePublicKeyDataDecryptorFactoryBuilder.this.decryptSessionData(JcePublicKeyDataDecryptorFactoryBuilder.this.keyConverter, pGPPrivateKey, bArr) : JcePublicKeyDataDecryptorFactoryBuilder.this.decryptSessionData(i, JcePublicKeyDataDecryptorFactoryBuilder.this.keyConverter.getPrivateKey(pGPPrivateKey), bArr);
            }
        };
    }

    public JcePublicKeyDataDecryptorFactoryBuilder setContentProvider(String str) {
        this.contentHelper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JcePublicKeyDataDecryptorFactoryBuilder setContentProvider(Provider provider) {
        this.contentHelper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JcePublicKeyDataDecryptorFactoryBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        this.keyConverter.setProvider(str);
        this.contentHelper = this.helper;
        return this;
    }

    public JcePublicKeyDataDecryptorFactoryBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        this.keyConverter.setProvider(provider);
        this.contentHelper = this.helper;
        return this;
    }
}
