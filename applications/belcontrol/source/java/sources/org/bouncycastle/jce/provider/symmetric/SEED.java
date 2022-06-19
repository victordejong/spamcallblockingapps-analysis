package org.bouncycastle.jce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.SEEDEngine;
import org.bouncycastle.crypto.engines.SEEDWrapEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
import org.bouncycastle.jce.provider.WrapCipherSpi;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED.class */
public final class SEED {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED$AlgParamGen.class */
    public static class AlgParamGen extends JDKAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("SEED", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new IvParameterSpec(bArr));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for SEED parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "SEED IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED$CBC.class */
    public static class CBC extends JCEBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new SEEDEngine()), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new SEEDEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("SEED", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("AlgorithmParameters.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$AlgParams");
            StringBuilder sb = new StringBuilder();
            sb.append("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = KISAObjectIdentifiers.id_seedCBC;
            sb.append(aSN1ObjectIdentifier);
            put(sb.toString(), "SEED");
            put("AlgorithmParameterGenerator.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$AlgParamGen");
            put("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier, "SEED");
            put("Cipher.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$ECB");
            put("Cipher." + aSN1ObjectIdentifier, "org.bouncycastle.jce.provider.symmetric.SEED$CBC");
            put("Cipher.SEEDWRAP", "org.bouncycastle.jce.provider.symmetric.SEED$Wrap");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap;
            sb2.append(aSN1ObjectIdentifier2);
            put(sb2.toString(), "SEEDWRAP");
            put("KeyGenerator.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$KeyGen");
            put("KeyGenerator." + aSN1ObjectIdentifier, "org.bouncycastle.jce.provider.symmetric.SEED$KeyGen");
            put("KeyGenerator." + aSN1ObjectIdentifier2, "org.bouncycastle.jce.provider.symmetric.SEED$KeyGen");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/SEED$Wrap.class */
    public static class Wrap extends WrapCipherSpi {
        public Wrap() {
            super(new SEEDWrapEngine());
        }
    }

    private SEED() {
    }
}
