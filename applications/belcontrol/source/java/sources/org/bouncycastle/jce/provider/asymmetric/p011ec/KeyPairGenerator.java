package org.bouncycastle.jce.provider.asymmetric.p011ec;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.util.Hashtable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.p009x9.X962NamedCurves;
import org.bouncycastle.asn1.p009x9.X9ECParameters;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.ECKeyPairGenerator;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyGenerationParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jce.provider.JCEECPrivateKey;
import org.bouncycastle.jce.provider.JCEECPublicKey;
import org.bouncycastle.jce.provider.JDKKeyPairGenerator;
import org.bouncycastle.jce.provider.ProviderUtil;
import org.bouncycastle.jce.spec.ECNamedCurveSpec;
import org.bouncycastle.jce.spec.ECParameterSpec;
import org.bouncycastle.math.p012ec.ECCurve;
/* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator.class */
public abstract class KeyPairGenerator extends JDKKeyPairGenerator {

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$EC */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC.class */
    public static class C1605EC extends KeyPairGenerator {
        private static Hashtable ecParameters;
        public String algorithm;
        public int certainty;
        public Object ecParams;
        public ECKeyPairGenerator engine;
        public boolean initialised;
        public ECKeyGenerationParameters param;
        public SecureRandom random;
        public int strength;

        static {
            Hashtable hashtable = new Hashtable();
            ecParameters = hashtable;
            hashtable.put(new Integer(192), new ECGenParameterSpec("prime192v1"));
            ecParameters.put(new Integer((int) HighLevelEncoder.LATCH_TO_TEXT), new ECGenParameterSpec("prime239v1"));
            ecParameters.put(new Integer(256), new ECGenParameterSpec("prime256v1"));
            ecParameters.put(new Integer(224), new ECGenParameterSpec("P-224"));
            ecParameters.put(new Integer(384), new ECGenParameterSpec("P-384"));
            ecParameters.put(new Integer(521), new ECGenParameterSpec("P-521"));
        }

        public C1605EC() {
            super("EC");
            this.engine = new ECKeyPairGenerator();
            this.ecParams = null;
            this.strength = HighLevelEncoder.LATCH_TO_TEXT;
            this.certainty = 50;
            this.random = new SecureRandom();
            this.initialised = false;
            this.algorithm = "EC";
        }

        public C1605EC(String str) {
            super(str);
            this.engine = new ECKeyPairGenerator();
            this.ecParams = null;
            this.strength = HighLevelEncoder.LATCH_TO_TEXT;
            this.certainty = 50;
            this.random = new SecureRandom();
            this.initialised = false;
            this.algorithm = str;
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyPairGenerator, java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
        public KeyPair generateKeyPair() {
            if (this.initialised) {
                AsymmetricCipherKeyPair generateKeyPair = this.engine.generateKeyPair();
                ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) generateKeyPair.getPublic();
                ECPrivateKeyParameters eCPrivateKeyParameters = (ECPrivateKeyParameters) generateKeyPair.getPrivate();
                Object obj = this.ecParams;
                if (obj instanceof ECParameterSpec) {
                    ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
                    JCEECPublicKey jCEECPublicKey = new JCEECPublicKey(this.algorithm, eCPublicKeyParameters, eCParameterSpec);
                    return new KeyPair(jCEECPublicKey, new JCEECPrivateKey(this.algorithm, eCPrivateKeyParameters, jCEECPublicKey, eCParameterSpec));
                } else if (obj == null) {
                    return new KeyPair(new JCEECPublicKey(this.algorithm, eCPublicKeyParameters), new JCEECPrivateKey(this.algorithm, eCPrivateKeyParameters));
                } else {
                    java.security.spec.ECParameterSpec eCParameterSpec2 = (java.security.spec.ECParameterSpec) obj;
                    JCEECPublicKey jCEECPublicKey2 = new JCEECPublicKey(this.algorithm, eCPublicKeyParameters, eCParameterSpec2);
                    return new KeyPair(jCEECPublicKey2, new JCEECPrivateKey(this.algorithm, eCPrivateKeyParameters, jCEECPublicKey2, eCParameterSpec2));
                }
            }
            throw new IllegalStateException("EC Key Pair Generator not initialised");
        }

        @Override // org.bouncycastle.jce.provider.JDKKeyPairGenerator, java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
        public void initialize(int i, SecureRandom secureRandom) {
            this.strength = i;
            this.random = secureRandom;
            Object obj = ecParameters.get(new Integer(i));
            this.ecParams = obj;
            if (obj != null) {
                try {
                    initialize((ECGenParameterSpec) obj, secureRandom);
                    return;
                } catch (InvalidAlgorithmParameterException e) {
                    throw new InvalidParameterException("key size not configurable.");
                }
            }
            throw new InvalidParameterException("unknown key size.");
        }

        @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
        public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            ECKeyGenerationParameters eCKeyGenerationParameters;
            ECNamedCurveSpec eCNamedCurveSpec;
            ECKeyGenerationParameters eCKeyGenerationParameters2;
            if (!(algorithmParameterSpec instanceof ECParameterSpec)) {
                if (algorithmParameterSpec instanceof java.security.spec.ECParameterSpec) {
                    java.security.spec.ECParameterSpec eCParameterSpec = (java.security.spec.ECParameterSpec) algorithmParameterSpec;
                    this.ecParams = algorithmParameterSpec;
                    ECCurve convertCurve = EC5Util.convertCurve(eCParameterSpec.getCurve());
                    eCKeyGenerationParameters2 = new ECKeyGenerationParameters(new ECDomainParameters(convertCurve, EC5Util.convertPoint(convertCurve, eCParameterSpec.getGenerator(), false), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
                } else if (algorithmParameterSpec instanceof ECGenParameterSpec) {
                    String name = ((ECGenParameterSpec) algorithmParameterSpec).getName();
                    if (this.algorithm.equals("ECGOST3410")) {
                        ECDomainParameters byName = ECGOST3410NamedCurves.getByName(name);
                        if (byName == null) {
                            throw new InvalidAlgorithmParameterException("unknown curve name: " + name);
                        }
                        eCNamedCurveSpec = new ECNamedCurveSpec(name, byName.getCurve(), byName.getG(), byName.getN(), byName.getH(), byName.getSeed());
                    } else {
                        X9ECParameters byName2 = X962NamedCurves.getByName(name);
                        X9ECParameters x9ECParameters = byName2;
                        if (byName2 == null) {
                            X9ECParameters byName3 = SECNamedCurves.getByName(name);
                            X9ECParameters x9ECParameters2 = byName3;
                            if (byName3 == null) {
                                x9ECParameters2 = NISTNamedCurves.getByName(name);
                            }
                            X9ECParameters x9ECParameters3 = x9ECParameters2;
                            if (x9ECParameters2 == null) {
                                x9ECParameters3 = TeleTrusTNamedCurves.getByName(name);
                            }
                            x9ECParameters = x9ECParameters3;
                            if (x9ECParameters3 == null) {
                                try {
                                    DERObjectIdentifier dERObjectIdentifier = new DERObjectIdentifier(name);
                                    X9ECParameters byOID = X962NamedCurves.getByOID(dERObjectIdentifier);
                                    X9ECParameters x9ECParameters4 = byOID;
                                    if (byOID == null) {
                                        x9ECParameters4 = SECNamedCurves.getByOID(dERObjectIdentifier);
                                    }
                                    x9ECParameters = x9ECParameters4;
                                    if (x9ECParameters4 == null) {
                                        x9ECParameters = NISTNamedCurves.getByOID(dERObjectIdentifier);
                                    }
                                    if (x9ECParameters == null) {
                                        x9ECParameters = TeleTrusTNamedCurves.getByOID(dERObjectIdentifier);
                                    }
                                    if (x9ECParameters == null) {
                                        throw new InvalidAlgorithmParameterException("unknown curve OID: " + name);
                                    }
                                } catch (IllegalArgumentException e) {
                                    throw new InvalidAlgorithmParameterException("unknown curve name: " + name);
                                }
                            }
                        }
                        eCNamedCurveSpec = new ECNamedCurveSpec(name, x9ECParameters.getCurve(), x9ECParameters.getG(), x9ECParameters.getN(), x9ECParameters.getH(), null);
                    }
                    this.ecParams = eCNamedCurveSpec;
                    java.security.spec.ECParameterSpec eCParameterSpec2 = (java.security.spec.ECParameterSpec) this.ecParams;
                    ECCurve convertCurve2 = EC5Util.convertCurve(eCParameterSpec2.getCurve());
                    eCKeyGenerationParameters2 = new ECKeyGenerationParameters(new ECDomainParameters(convertCurve2, EC5Util.convertPoint(convertCurve2, eCParameterSpec2.getGenerator(), false), eCParameterSpec2.getOrder(), BigInteger.valueOf(eCParameterSpec2.getCofactor())), secureRandom);
                } else if (algorithmParameterSpec != null || ProviderUtil.getEcImplicitlyCa() == null) {
                    if (algorithmParameterSpec != null || ProviderUtil.getEcImplicitlyCa() != null) {
                        throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec");
                    }
                    throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
                } else {
                    ECParameterSpec ecImplicitlyCa = ProviderUtil.getEcImplicitlyCa();
                    this.ecParams = algorithmParameterSpec;
                    eCKeyGenerationParameters = new ECKeyGenerationParameters(new ECDomainParameters(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getG(), ecImplicitlyCa.getN()), secureRandom);
                }
                this.param = eCKeyGenerationParameters2;
                this.engine.init(eCKeyGenerationParameters2);
                this.initialised = true;
            }
            ECParameterSpec eCParameterSpec3 = (ECParameterSpec) algorithmParameterSpec;
            this.ecParams = algorithmParameterSpec;
            eCKeyGenerationParameters = new ECKeyGenerationParameters(new ECDomainParameters(eCParameterSpec3.getCurve(), eCParameterSpec3.getG(), eCParameterSpec3.getN()), secureRandom);
            this.param = eCKeyGenerationParameters;
            this.engine.init(eCKeyGenerationParameters);
            this.initialised = true;
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDH */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDH.class */
    public static class ECDH extends C1605EC {
        public ECDH() {
            super("ECDH");
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDHC */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDHC.class */
    public static class ECDHC extends C1605EC {
        public ECDHC() {
            super("ECDHC");
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDSA */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDSA.class */
    public static class ECDSA extends C1605EC {
        public ECDSA() {
            super("ECDSA");
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECGOST3410 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECGOST3410.class */
    public static class ECGOST3410 extends C1605EC {
        public ECGOST3410() {
            super("ECGOST3410");
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECMQV */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECMQV.class */
    public static class ECMQV extends C1605EC {
        public ECMQV() {
            super("ECMQV");
        }
    }

    public KeyPairGenerator(String str) {
        super(str);
    }
}
