package org.bouncycastle.jce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.CamelliaEngine;
import org.bouncycastle.crypto.engines.CamelliaWrapEngine;
import org.bouncycastle.crypto.engines.RFC3211WrapEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
import org.bouncycastle.jce.provider.WrapCipherSpi;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia.class */
public final class Camellia {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$AlgParamGen.class */
    public static class AlgParamGen extends JDKAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("Camellia", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new IvParameterSpec(bArr));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Camellia parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Camellia IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$CBC.class */
    public static class CBC extends JCEBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new CamelliaEngine()), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new CamelliaEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            this(256);
        }

        public KeyGen(int i) {
            super("Camellia", i, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$KeyGen128.class */
    public static class KeyGen128 extends KeyGen {
        public KeyGen128() {
            super(128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$KeyGen192.class */
    public static class KeyGen192 extends KeyGen {
        public KeyGen192() {
            super(192);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$KeyGen256.class */
    public static class KeyGen256 extends KeyGen {
        public KeyGen256() {
            super(256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("AlgorithmParameters.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$AlgParams");
            StringBuilder sb = new StringBuilder();
            sb.append("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = NTTObjectIdentifiers.id_camellia128_cbc;
            sb.append(aSN1ObjectIdentifier);
            put(sb.toString(), "CAMELLIA");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NTTObjectIdentifiers.id_camellia192_cbc;
            sb2.append(aSN1ObjectIdentifier2);
            put(sb2.toString(), "CAMELLIA");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NTTObjectIdentifiers.id_camellia256_cbc;
            sb3.append(aSN1ObjectIdentifier3);
            put(sb3.toString(), "CAMELLIA");
            put("AlgorithmParameterGenerator.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$AlgParamGen");
            put("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier, "CAMELLIA");
            put("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier2, "CAMELLIA");
            put("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier3, "CAMELLIA");
            put("Cipher.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$ECB");
            put("Cipher." + aSN1ObjectIdentifier, "org.bouncycastle.jce.provider.symmetric.Camellia$CBC");
            put("Cipher." + aSN1ObjectIdentifier2, "org.bouncycastle.jce.provider.symmetric.Camellia$CBC");
            put("Cipher." + aSN1ObjectIdentifier3, "org.bouncycastle.jce.provider.symmetric.Camellia$CBC");
            put("Cipher.CAMELLIARFC3211WRAP", "org.bouncycastle.jce.provider.symmetric.Camellia$RFC3211Wrap");
            put("Cipher.CAMELLIAWRAP", "org.bouncycastle.jce.provider.symmetric.Camellia$Wrap");
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Alg.Alias.Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NTTObjectIdentifiers.id_camellia128_wrap;
            sb4.append(aSN1ObjectIdentifier4);
            put(sb4.toString(), "CAMELLIAWRAP");
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Alg.Alias.Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier5 = NTTObjectIdentifiers.id_camellia192_wrap;
            sb5.append(aSN1ObjectIdentifier5);
            put(sb5.toString(), "CAMELLIAWRAP");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Alg.Alias.Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier6 = NTTObjectIdentifiers.id_camellia256_wrap;
            sb6.append(aSN1ObjectIdentifier6);
            put(sb6.toString(), "CAMELLIAWRAP");
            put("KeyGenerator.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen");
            put("KeyGenerator." + aSN1ObjectIdentifier4, "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen128");
            put("KeyGenerator." + aSN1ObjectIdentifier5, "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen192");
            put("KeyGenerator." + aSN1ObjectIdentifier6, "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen256");
            put("KeyGenerator." + aSN1ObjectIdentifier, "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen128");
            put("KeyGenerator." + aSN1ObjectIdentifier2, "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen192");
            put("KeyGenerator." + aSN1ObjectIdentifier3, "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen256");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$RFC3211Wrap.class */
    public static class RFC3211Wrap extends WrapCipherSpi {
        public RFC3211Wrap() {
            super(new RFC3211WrapEngine(new CamelliaEngine()), 16);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Camellia$Wrap.class */
    public static class Wrap extends WrapCipherSpi {
        public Wrap() {
            super(new CamelliaWrapEngine());
        }
    }

    private Camellia() {
    }
}
