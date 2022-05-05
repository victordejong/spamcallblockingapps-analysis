package org.spongycastle.jcajce.provider.asymmetric.p030ec;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECParameterSpec;
import org.spongycastle.jce.spec.ECPrivateKeySpec;
import org.spongycastle.jce.spec.ECPublicKeySpec;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi.class */
public class KeyFactorySpi extends BaseKeyFactorySpi implements AsymmetricKeyInfoConverter {
    String algorithm;
    ProviderConfiguration configuration;

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$EC */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC.class */
    public static class C2368EC extends KeyFactorySpi {
        public C2368EC() {
            super("EC", BouncyCastleProvider.CONFIGURATION);
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDH */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDH.class */
    public static class ECDH extends KeyFactorySpi {
        public ECDH() {
            super("ECDH", BouncyCastleProvider.CONFIGURATION);
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDHC */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDHC.class */
    public static class ECDHC extends KeyFactorySpi {
        public ECDHC() {
            super("ECDHC", BouncyCastleProvider.CONFIGURATION);
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDSA */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDSA.class */
    public static class ECDSA extends KeyFactorySpi {
        public ECDSA() {
            super("ECDSA", BouncyCastleProvider.CONFIGURATION);
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECGOST3410 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECGOST3410.class */
    public static class ECGOST3410 extends KeyFactorySpi {
        public ECGOST3410() {
            super("ECGOST3410", BouncyCastleProvider.CONFIGURATION);
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECGOST3410_2012 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECGOST3410_2012.class */
    public static class ECGOST3410_2012 extends KeyFactorySpi {
        public ECGOST3410_2012() {
            super("ECGOST3410-2012", BouncyCastleProvider.CONFIGURATION);
        }
    }

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECMQV */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV.class */
    public static class ECMQV extends KeyFactorySpi {
        public ECMQV() {
            super("ECMQV", BouncyCastleProvider.CONFIGURATION);
        }
    }

    KeyFactorySpi(String str, ProviderConfiguration providerConfiguration) {
        this.algorithm = str;
        this.configuration = providerConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof ECPrivateKeySpec ? new BCECPrivateKey(this.algorithm, (ECPrivateKeySpec) keySpec, this.configuration) : keySpec instanceof java.security.spec.ECPrivateKeySpec ? new BCECPrivateKey(this.algorithm, (java.security.spec.ECPrivateKeySpec) keySpec, this.configuration) : super.engineGeneratePrivate(keySpec);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        try {
            return keySpec instanceof ECPublicKeySpec ? new BCECPublicKey(this.algorithm, (ECPublicKeySpec) keySpec, this.configuration) : keySpec instanceof java.security.spec.ECPublicKeySpec ? new BCECPublicKey(this.algorithm, (java.security.spec.ECPublicKeySpec) keySpec, this.configuration) : super.engineGeneratePublic(keySpec);
        } catch (Exception e) {
            throw new InvalidKeySpecException("invalid KeySpec: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(java.security.spec.ECPublicKeySpec.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey = (ECPublicKey) key;
            if (eCPublicKey.getParams() != null) {
                return new java.security.spec.ECPublicKeySpec(eCPublicKey.getW(), eCPublicKey.getParams());
            }
            ECParameterSpec ecImplicitlyCa = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
            return new java.security.spec.ECPublicKeySpec(eCPublicKey.getW(), EC5Util.convertSpec(EC5Util.convertCurve(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getSeed()), ecImplicitlyCa));
        } else if (cls.isAssignableFrom(java.security.spec.ECPrivateKeySpec.class) && (key instanceof ECPrivateKey)) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) key;
            if (eCPrivateKey.getParams() != null) {
                return new java.security.spec.ECPrivateKeySpec(eCPrivateKey.getS(), eCPrivateKey.getParams());
            }
            ECParameterSpec ecImplicitlyCa2 = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
            return new java.security.spec.ECPrivateKeySpec(eCPrivateKey.getS(), EC5Util.convertSpec(EC5Util.convertCurve(ecImplicitlyCa2.getCurve(), ecImplicitlyCa2.getSeed()), ecImplicitlyCa2));
        } else if (cls.isAssignableFrom(ECPublicKeySpec.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey2 = (ECPublicKey) key;
            if (eCPublicKey2.getParams() != null) {
                return new ECPublicKeySpec(EC5Util.convertPoint(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), EC5Util.convertSpec(eCPublicKey2.getParams(), false));
            }
            return new ECPublicKeySpec(EC5Util.convertPoint(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa());
        } else if (!cls.isAssignableFrom(ECPrivateKeySpec.class) || !(key instanceof ECPrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        } else {
            ECPrivateKey eCPrivateKey2 = (ECPrivateKey) key;
            if (eCPrivateKey2.getParams() != null) {
                return new ECPrivateKeySpec(eCPrivateKey2.getS(), EC5Util.convertSpec(eCPrivateKey2.getParams(), false));
            }
            return new ECPrivateKeySpec(eCPrivateKey2.getS(), BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa());
        }
    }

    @Override // java.security.KeyFactorySpi
    protected Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof ECPublicKey) {
            return new BCECPublicKey((ECPublicKey) key, this.configuration);
        }
        if (key instanceof ECPrivateKey) {
            return new BCECPrivateKey((ECPrivateKey) key, this.configuration);
        }
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(PrivateKeyInfo privateKeyInfo) throws IOException {
        ASN1ObjectIdentifier algorithm = privateKeyInfo.getPrivateKeyAlgorithm().getAlgorithm();
        if (algorithm.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
            return new BCECPrivateKey(this.algorithm, privateKeyInfo, this.configuration);
        }
        throw new IOException("algorithm identifier " + algorithm + " in key not recognised");
    }

    @Override // org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        ASN1ObjectIdentifier algorithm = subjectPublicKeyInfo.getAlgorithm().getAlgorithm();
        if (algorithm.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
            return new BCECPublicKey(this.algorithm, subjectPublicKeyInfo, this.configuration);
        }
        throw new IOException("algorithm identifier " + algorithm + " in key not recognised");
    }
}
