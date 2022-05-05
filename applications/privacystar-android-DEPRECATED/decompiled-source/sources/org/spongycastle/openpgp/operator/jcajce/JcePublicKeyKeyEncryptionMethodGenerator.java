package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.p022x9.X962Parameters;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.asn1.p022x9.X9ECPoint;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.jcajce.spec.UserKeyingMaterialSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.operator.PGPPad;
import org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.RFC6637Utils;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator.class */
public class JcePublicKeyKeyEncryptionMethodGenerator extends PublicKeyKeyEncryptionMethodGenerator {
    private SecureRandom random;
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private JcaPGPKeyConverter keyConverter = new JcaPGPKeyConverter();
    private JcaPGPDigestCalculatorProviderBuilder digestCalculatorProviderBuilder = new JcaPGPDigestCalculatorProviderBuilder();

    public JcePublicKeyKeyEncryptionMethodGenerator(PGPPublicKey pGPPublicKey) {
        super(pGPPublicKey);
    }

    @Override // org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator
    protected byte[] encryptSessionInfo(PGPPublicKey pGPPublicKey, byte[] bArr) throws PGPException {
        try {
            if (pGPPublicKey.getAlgorithm() == 18) {
                ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) pGPPublicKey.getPublicKeyPacket().getKey();
                X9ECParameters x9Parameters = PGPUtil.getX9Parameters(eCDHPublicBCPGKey.getCurveOID());
                AlgorithmParameters createAlgorithmParameters = this.helper.createAlgorithmParameters("EC");
                createAlgorithmParameters.init(new X962Parameters(eCDHPublicBCPGKey.getCurveOID()).getEncoded());
                KeyPairGenerator createKeyPairGenerator = this.helper.createKeyPairGenerator("EC");
                createKeyPairGenerator.initialize(createAlgorithmParameters.getParameterSpec(AlgorithmParameterSpec.class));
                KeyPair generateKeyPair = createKeyPairGenerator.generateKeyPair();
                KeyAgreement createKeyAgreement = this.helper.createKeyAgreement(RFC6637Utils.getAgreementAlgorithm(pGPPublicKey.getPublicKeyPacket()));
                createKeyAgreement.init(generateKeyPair.getPrivate(), new UserKeyingMaterialSpec(RFC6637Utils.createUserKeyingMaterial(pGPPublicKey.getPublicKeyPacket(), new JcaKeyFingerprintCalculator())));
                createKeyAgreement.doPhase(this.keyConverter.getPublicKey(pGPPublicKey), true);
                SecretKey generateSecret = createKeyAgreement.generateSecret(RFC6637Utils.getKeyEncryptionOID(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm()).getId());
                Cipher createKeyWrapper = this.helper.createKeyWrapper(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm());
                createKeyWrapper.init(3, generateSecret, this.random);
                byte[] wrap = createKeyWrapper.wrap(new SecretKeySpec(PGPPad.padSessionData(bArr), PGPUtil.getSymmetricCipherName(bArr[0])));
                byte[] encoded = new MPInteger(new BigInteger(1, new X9ECPoint(x9Parameters.getCurve(), SubjectPublicKeyInfo.getInstance(generateKeyPair.getPublic().getEncoded()).getPublicKeyData().getBytes()).getPoint().getEncoded(false))).getEncoded();
                byte[] bArr2 = new byte[encoded.length + 1 + wrap.length];
                System.arraycopy(encoded, 0, bArr2, 0, encoded.length);
                bArr2[encoded.length] = (byte) wrap.length;
                System.arraycopy(wrap, 0, bArr2, encoded.length + 1, wrap.length);
                return bArr2;
            }
            Cipher createPublicKeyCipher = this.helper.createPublicKeyCipher(pGPPublicKey.getAlgorithm());
            createPublicKeyCipher.init(1, this.keyConverter.getPublicKey(pGPPublicKey), this.random);
            return createPublicKeyCipher.doFinal(bArr);
        } catch (IOException e) {
            throw new PGPException("unable to encode MPI: " + e.getMessage(), e);
        } catch (InvalidKeyException e2) {
            throw new PGPException("key invalid: " + e2.getMessage(), e2);
        } catch (BadPaddingException e3) {
            throw new PGPException("bad padding: " + e3.getMessage(), e3);
        } catch (IllegalBlockSizeException e4) {
            throw new PGPException("illegal block size: " + e4.getMessage(), e4);
        } catch (GeneralSecurityException e5) {
            throw new PGPException("unable to set up ephemeral keys: " + e5.getMessage(), e5);
        }
    }

    public JcePublicKeyKeyEncryptionMethodGenerator setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        this.keyConverter.setProvider(str);
        return this;
    }

    public JcePublicKeyKeyEncryptionMethodGenerator setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        this.keyConverter.setProvider(provider);
        return this;
    }

    public JcePublicKeyKeyEncryptionMethodGenerator setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
