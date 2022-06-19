package org.bouncycastle.jce.provider.asymmetric.p011ec;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.KeyAgreementSpi;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.p009x9.X9IntegerConverter;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.agreement.ECDHBasicAgreement;
import org.bouncycastle.crypto.agreement.ECDHCBasicAgreement;
import org.bouncycastle.crypto.agreement.ECMQVBasicAgreement;
import org.bouncycastle.crypto.agreement.kdf.DHKDFParameters;
import org.bouncycastle.crypto.agreement.kdf.ECDHKEKGenerator;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.MQVPrivateParameters;
import org.bouncycastle.crypto.params.MQVPublicParameters;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.interfaces.MQVPrivateKey;
import org.bouncycastle.jce.interfaces.MQVPublicKey;
/* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement.class */
public class KeyAgreement extends KeyAgreementSpi {
    private static final Hashtable algorithms;
    private static final X9IntegerConverter converter = new X9IntegerConverter();
    private BasicAgreement agreement;
    private String kaAlgorithm;
    private DerivationFunction kdf;
    private ECDomainParameters parameters;
    private BigInteger result;

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DH */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DH.class */
    public static class C1603DH extends KeyAgreement {
        public C1603DH() {
            super("ECDH", new ECDHBasicAgreement(), null);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHC */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DHC.class */
    public static class DHC extends KeyAgreement {
        public DHC() {
            super("ECDHC", new ECDHCBasicAgreement(), null);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHwithSHA1KDF */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DHwithSHA1KDF.class */
    public static class DHwithSHA1KDF extends KeyAgreement {
        public DHwithSHA1KDF() {
            super("ECDHwithSHA1KDF", new ECDHBasicAgreement(), new ECDHKEKGenerator(new SHA1Digest()));
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQV */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$MQV.class */
    public static class MQV extends KeyAgreement {
        public MQV() {
            super("ECMQV", new ECMQVBasicAgreement(), null);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQVwithSHA1KDF */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$MQVwithSHA1KDF.class */
    public static class MQVwithSHA1KDF extends KeyAgreement {
        public MQVwithSHA1KDF() {
            super("ECMQVwithSHA1KDF", new ECMQVBasicAgreement(), new ECDHKEKGenerator(new SHA1Digest()));
        }
    }

    static {
        Hashtable hashtable = new Hashtable();
        algorithms = hashtable;
        Integer num = new Integer(128);
        Integer num2 = new Integer(192);
        Integer num3 = new Integer(256);
        hashtable.put(NISTObjectIdentifiers.id_aes128_CBC.getId(), num);
        hashtable.put(NISTObjectIdentifiers.id_aes192_CBC.getId(), num2);
        hashtable.put(NISTObjectIdentifiers.id_aes256_CBC.getId(), num3);
        hashtable.put(NISTObjectIdentifiers.id_aes128_wrap.getId(), num);
        hashtable.put(NISTObjectIdentifiers.id_aes192_wrap.getId(), num2);
        hashtable.put(NISTObjectIdentifiers.id_aes256_wrap.getId(), num3);
        hashtable.put(PKCSObjectIdentifiers.id_alg_CMS3DESwrap.getId(), num2);
    }

    public KeyAgreement(String str, BasicAgreement basicAgreement, DerivationFunction derivationFunction) {
        this.kaAlgorithm = str;
        this.agreement = basicAgreement;
        this.kdf = derivationFunction;
    }

    private byte[] bigIntToBytes(BigInteger bigInteger) {
        X9IntegerConverter x9IntegerConverter = converter;
        return x9IntegerConverter.integerToBytes(bigInteger, x9IntegerConverter.getByteLength(this.parameters.getG().getX()));
    }

    private static String getSimpleName(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [org.bouncycastle.crypto.params.MQVPrivateParameters] */
    private void initFromKey(Key key) {
        ECPrivateKeyParameters eCPrivateKeyParameters;
        ECDomainParameters eCDomainParameters;
        if (this.agreement instanceof ECMQVBasicAgreement) {
            if (!(key instanceof MQVPrivateKey)) {
                throw new InvalidKeyException(this.kaAlgorithm + " key agreement requires " + getSimpleName(MQVPrivateKey.class) + " for initialisation");
            }
            MQVPrivateKey mQVPrivateKey = (MQVPrivateKey) key;
            ECPrivateKeyParameters eCPrivateKeyParameters2 = (ECPrivateKeyParameters) ECUtil.generatePrivateKeyParameter(mQVPrivateKey.getStaticPrivateKey());
            ECPrivateKeyParameters eCPrivateKeyParameters3 = (ECPrivateKeyParameters) ECUtil.generatePrivateKeyParameter(mQVPrivateKey.getEphemeralPrivateKey());
            ECPublicKeyParameters eCPublicKeyParameters = null;
            if (mQVPrivateKey.getEphemeralPublicKey() != null) {
                eCPublicKeyParameters = (ECPublicKeyParameters) ECUtil.generatePublicKeyParameter(mQVPrivateKey.getEphemeralPublicKey());
            }
            eCPrivateKeyParameters = new MQVPrivateParameters(eCPrivateKeyParameters2, eCPrivateKeyParameters3, eCPublicKeyParameters);
            eCDomainParameters = eCPrivateKeyParameters2.getParameters();
        } else if (!(key instanceof ECPrivateKey)) {
            throw new InvalidKeyException(this.kaAlgorithm + " key agreement requires " + getSimpleName(ECPrivateKey.class) + " for initialisation");
        } else {
            eCPrivateKeyParameters = (ECPrivateKeyParameters) ECUtil.generatePrivateKeyParameter((PrivateKey) key);
            eCDomainParameters = eCPrivateKeyParameters.getParameters();
        }
        this.parameters = eCDomainParameters;
        this.agreement.init(eCPrivateKeyParameters);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) {
        MQVPublicParameters mQVPublicParameters;
        if (this.parameters == null) {
            throw new IllegalStateException(this.kaAlgorithm + " not initialised.");
        } else if (!z) {
            throw new IllegalStateException(this.kaAlgorithm + " can only be between two parties.");
        } else {
            if (this.agreement instanceof ECMQVBasicAgreement) {
                if (!(key instanceof MQVPublicKey)) {
                    throw new InvalidKeyException(this.kaAlgorithm + " key agreement requires " + getSimpleName(MQVPublicKey.class) + " for doPhase");
                }
                MQVPublicKey mQVPublicKey = (MQVPublicKey) key;
                mQVPublicParameters = new MQVPublicParameters((ECPublicKeyParameters) ECUtil.generatePublicKeyParameter(mQVPublicKey.getStaticKey()), (ECPublicKeyParameters) ECUtil.generatePublicKeyParameter(mQVPublicKey.getEphemeralKey()));
            } else if (!(key instanceof ECPublicKey)) {
                throw new InvalidKeyException(this.kaAlgorithm + " key agreement requires " + getSimpleName(ECPublicKey.class) + " for doPhase");
            } else {
                mQVPublicParameters = ECUtil.generatePublicKeyParameter((PublicKey) key);
            }
            this.result = this.agreement.calculateAgreement(mQVPublicParameters);
            return null;
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public int engineGenerateSecret(byte[] bArr, int i) {
        byte[] engineGenerateSecret = engineGenerateSecret();
        if (bArr.length - i >= engineGenerateSecret.length) {
            System.arraycopy(engineGenerateSecret, 0, bArr, i, engineGenerateSecret.length);
            return engineGenerateSecret.length;
        }
        throw new ShortBufferException(this.kaAlgorithm + " key agreement: need " + engineGenerateSecret.length + " bytes");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public SecretKey engineGenerateSecret(String str) {
        byte[] bigIntToBytes = bigIntToBytes(this.result);
        byte[] bArr = bigIntToBytes;
        if (this.kdf != null) {
            Hashtable hashtable = algorithms;
            if (!hashtable.containsKey(str)) {
                throw new NoSuchAlgorithmException("unknown algorithm encountered: " + str);
            }
            int intValue = ((Integer) hashtable.get(str)).intValue();
            DHKDFParameters dHKDFParameters = new DHKDFParameters(new DERObjectIdentifier(str), intValue, bigIntToBytes);
            int i = intValue / 8;
            bArr = new byte[i];
            this.kdf.init(dHKDFParameters);
            this.kdf.generateBytes(bArr, 0, i);
        }
        return new SecretKeySpec(bArr, str);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public byte[] engineGenerateSecret() {
        if (this.kdf == null) {
            return bigIntToBytes(this.result);
        }
        throw new UnsupportedOperationException("KDF can only be used when algorithm is known");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) {
        initFromKey(key);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        initFromKey(key);
    }
}
