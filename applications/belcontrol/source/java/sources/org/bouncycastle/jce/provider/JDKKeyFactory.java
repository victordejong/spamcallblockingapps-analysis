package org.bouncycastle.jce.provider;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHPrivateKeySpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.p009x9.X9ObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.RSAPrivateKeyStructure;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.jce.interfaces.ElGamalPrivateKey;
import org.bouncycastle.jce.interfaces.ElGamalPublicKey;
import org.bouncycastle.jce.spec.ElGamalPrivateKeySpec;
import org.bouncycastle.jce.spec.ElGamalPublicKeySpec;
import org.bouncycastle.jce.spec.GOST3410PrivateKeySpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeySpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKKeyFactory.class */
public abstract class JDKKeyFactory extends KeyFactorySpi {
    public boolean elGamalFactory = false;

    /* renamed from: org.bouncycastle.jce.provider.JDKKeyFactory$DH */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKKeyFactory$DH.class */
    public static class C1599DH extends JDKKeyFactory {
        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
            return keySpec instanceof DHPrivateKeySpec ? new JCEDHPrivateKey((DHPrivateKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePrivate(keySpec);
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PublicKey engineGeneratePublic(KeySpec keySpec) {
            return keySpec instanceof DHPublicKeySpec ? new JCEDHPublicKey((DHPublicKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePublic(keySpec);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKKeyFactory$DSA.class */
    public static class DSA extends JDKKeyFactory {
        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
            return keySpec instanceof DSAPrivateKeySpec ? new JDKDSAPrivateKey((DSAPrivateKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePrivate(keySpec);
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PublicKey engineGeneratePublic(KeySpec keySpec) {
            return keySpec instanceof DSAPublicKeySpec ? new JDKDSAPublicKey((DSAPublicKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePublic(keySpec);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKKeyFactory$ElGamal.class */
    public static class ElGamal extends JDKKeyFactory {
        public ElGamal() {
            this.elGamalFactory = true;
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
            return keySpec instanceof ElGamalPrivateKeySpec ? new JCEElGamalPrivateKey((ElGamalPrivateKeySpec) keySpec) : keySpec instanceof DHPrivateKeySpec ? new JCEElGamalPrivateKey((DHPrivateKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePrivate(keySpec);
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PublicKey engineGeneratePublic(KeySpec keySpec) {
            return keySpec instanceof ElGamalPublicKeySpec ? new JCEElGamalPublicKey((ElGamalPublicKeySpec) keySpec) : keySpec instanceof DHPublicKeySpec ? new JCEElGamalPublicKey((DHPublicKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePublic(keySpec);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKKeyFactory$GOST3410.class */
    public static class GOST3410 extends JDKKeyFactory {
        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
            return keySpec instanceof GOST3410PrivateKeySpec ? new JDKGOST3410PrivateKey((GOST3410PrivateKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePrivate(keySpec);
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PublicKey engineGeneratePublic(KeySpec keySpec) {
            return keySpec instanceof GOST3410PublicKeySpec ? new JDKGOST3410PublicKey((GOST3410PublicKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePublic(keySpec);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKKeyFactory$RSA.class */
    public static class RSA extends JDKKeyFactory {
        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
            if (keySpec instanceof PKCS8EncodedKeySpec) {
                try {
                    return JDKKeyFactory.createPrivateKeyFromDERStream(((PKCS8EncodedKeySpec) keySpec).getEncoded());
                } catch (Exception e) {
                    try {
                        return new JCERSAPrivateCrtKey(new RSAPrivateKeyStructure((ASN1Sequence) ASN1Object.fromByteArray(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
                    } catch (Exception e2) {
                        throw new InvalidKeySpecException(e2.toString());
                    }
                }
            } else if (keySpec instanceof RSAPrivateCrtKeySpec) {
                return new JCERSAPrivateCrtKey((RSAPrivateCrtKeySpec) keySpec);
            } else {
                if (keySpec instanceof RSAPrivateKeySpec) {
                    return new JCERSAPrivateKey((RSAPrivateKeySpec) keySpec);
                }
                throw new InvalidKeySpecException("Unknown KeySpec type: " + keySpec.getClass().getName());
            }
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyFactory, java.security.KeyFactorySpi
        public PublicKey engineGeneratePublic(KeySpec keySpec) {
            return keySpec instanceof RSAPublicKeySpec ? new JCERSAPublicKey((RSAPublicKeySpec) keySpec) : JDKKeyFactory.super.engineGeneratePublic(keySpec);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKKeyFactory$X509.class */
    public static class X509 extends JDKKeyFactory {
    }

    public static PrivateKey createPrivateKeyFromDERStream(byte[] bArr) {
        return createPrivateKeyFromPrivateKeyInfo(new PrivateKeyInfo((ASN1Sequence) ASN1Object.fromByteArray(bArr)));
    }

    public static PrivateKey createPrivateKeyFromPrivateKeyInfo(PrivateKeyInfo privateKeyInfo) {
        DERObjectIdentifier objectId = privateKeyInfo.getAlgorithmId().getObjectId();
        if (RSAUtil.isRsaOid(objectId)) {
            return new JCERSAPrivateCrtKey(privateKeyInfo);
        }
        if (!objectId.equals(PKCSObjectIdentifiers.dhKeyAgreement) && !objectId.equals(X9ObjectIdentifiers.dhpublicnumber)) {
            if (objectId.equals(OIWObjectIdentifiers.elGamalAlgorithm)) {
                return new JCEElGamalPrivateKey(privateKeyInfo);
            }
            if (objectId.equals(X9ObjectIdentifiers.id_dsa)) {
                return new JDKDSAPrivateKey(privateKeyInfo);
            }
            if (objectId.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
                return new JCEECPrivateKey(privateKeyInfo);
            }
            if (objectId.equals(CryptoProObjectIdentifiers.gostR3410_94)) {
                return new JDKGOST3410PrivateKey(privateKeyInfo);
            }
            if (objectId.equals(CryptoProObjectIdentifiers.gostR3410_2001)) {
                return new JCEECPrivateKey(privateKeyInfo);
            }
            throw new RuntimeException("algorithm identifier " + objectId + " in key not recognised");
        }
        return new JCEDHPrivateKey(privateKeyInfo);
    }

    public static PublicKey createPublicKeyFromDERStream(byte[] bArr) {
        return createPublicKeyFromPublicKeyInfo(new SubjectPublicKeyInfo((ASN1Sequence) ASN1Object.fromByteArray(bArr)));
    }

    public static PublicKey createPublicKeyFromPublicKeyInfo(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        DERObjectIdentifier objectId = subjectPublicKeyInfo.getAlgorithmId().getObjectId();
        if (RSAUtil.isRsaOid(objectId)) {
            return new JCERSAPublicKey(subjectPublicKeyInfo);
        }
        if (!objectId.equals(PKCSObjectIdentifiers.dhKeyAgreement) && !objectId.equals(X9ObjectIdentifiers.dhpublicnumber)) {
            if (objectId.equals(OIWObjectIdentifiers.elGamalAlgorithm)) {
                return new JCEElGamalPublicKey(subjectPublicKeyInfo);
            }
            if (!objectId.equals(X9ObjectIdentifiers.id_dsa) && !objectId.equals(OIWObjectIdentifiers.dsaWithSHA1)) {
                if (objectId.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
                    return new JCEECPublicKey(subjectPublicKeyInfo);
                }
                if (objectId.equals(CryptoProObjectIdentifiers.gostR3410_94)) {
                    return new JDKGOST3410PublicKey(subjectPublicKeyInfo);
                }
                if (objectId.equals(CryptoProObjectIdentifiers.gostR3410_2001)) {
                    return new JCEECPublicKey(subjectPublicKeyInfo);
                }
                throw new RuntimeException("algorithm identifier " + objectId + " in key not recognised");
            }
            return new JDKDSAPublicKey(subjectPublicKeyInfo);
        }
        return new JCEDHPublicKey(subjectPublicKeyInfo);
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return createPrivateKeyFromDERStream(((PKCS8EncodedKeySpec) keySpec).getEncoded());
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unknown KeySpec type: " + keySpec.getClass().getName());
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) {
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return createPublicKeyFromDERStream(((X509EncodedKeySpec) keySpec).getEncoded());
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unknown KeySpec type: " + keySpec.getClass().getName());
    }

    @Override // java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) {
        if (!cls.isAssignableFrom(PKCS8EncodedKeySpec.class) || !key.getFormat().equals("PKCS#8")) {
            if (cls.isAssignableFrom(X509EncodedKeySpec.class) && key.getFormat().equals("X.509")) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
            if (cls.isAssignableFrom(RSAPublicKeySpec.class) && (key instanceof RSAPublicKey)) {
                RSAPublicKey rSAPublicKey = (RSAPublicKey) key;
                return new RSAPublicKeySpec(rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
            } else if (cls.isAssignableFrom(RSAPrivateKeySpec.class) && (key instanceof RSAPrivateKey)) {
                RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) key;
                return new RSAPrivateKeySpec(rSAPrivateKey.getModulus(), rSAPrivateKey.getPrivateExponent());
            } else if (cls.isAssignableFrom(RSAPrivateCrtKeySpec.class) && (key instanceof RSAPrivateCrtKey)) {
                RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) key;
                return new RSAPrivateCrtKeySpec(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient());
            } else if (cls.isAssignableFrom(DHPrivateKeySpec.class) && (key instanceof DHPrivateKey)) {
                DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
                return new DHPrivateKeySpec(dHPrivateKey.getX(), dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
            } else if (cls.isAssignableFrom(DHPublicKeySpec.class) && (key instanceof DHPublicKey)) {
                DHPublicKey dHPublicKey = (DHPublicKey) key;
                return new DHPublicKeySpec(dHPublicKey.getY(), dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
            } else {
                throw new RuntimeException("not implemented yet " + key + " " + cls);
            }
        }
        return new PKCS8EncodedKeySpec(key.getEncoded());
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) {
        if (key instanceof RSAPublicKey) {
            return new JCERSAPublicKey((RSAPublicKey) key);
        }
        if (key instanceof RSAPrivateCrtKey) {
            return new JCERSAPrivateCrtKey((RSAPrivateCrtKey) key);
        }
        if (key instanceof RSAPrivateKey) {
            return new JCERSAPrivateKey((RSAPrivateKey) key);
        }
        if (key instanceof DHPublicKey) {
            return this.elGamalFactory ? new JCEElGamalPublicKey((DHPublicKey) key) : new JCEDHPublicKey((DHPublicKey) key);
        } else if (key instanceof DHPrivateKey) {
            return this.elGamalFactory ? new JCEElGamalPrivateKey((DHPrivateKey) key) : new JCEDHPrivateKey((DHPrivateKey) key);
        } else if (key instanceof DSAPublicKey) {
            return new JDKDSAPublicKey((DSAPublicKey) key);
        } else {
            if (key instanceof DSAPrivateKey) {
                return new JDKDSAPrivateKey((DSAPrivateKey) key);
            }
            if (key instanceof ElGamalPublicKey) {
                return new JCEElGamalPublicKey((ElGamalPublicKey) key);
            }
            if (!(key instanceof ElGamalPrivateKey)) {
                throw new InvalidKeyException("key type unknown");
            }
            return new JCEElGamalPrivateKey((ElGamalPrivateKey) key);
        }
    }
}
