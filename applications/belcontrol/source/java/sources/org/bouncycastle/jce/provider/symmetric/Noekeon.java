package org.bouncycastle.jce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.NoekeonEngine;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Noekeon.class */
public final class Noekeon {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Noekeon$AlgParamGen.class */
    public static class AlgParamGen extends JDKAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("Noekeon", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new IvParameterSpec(bArr));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Noekeon parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Noekeon$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Noekeon IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Noekeon$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new NoekeonEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Noekeon$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("Noekeon", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Noekeon$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("AlgorithmParameters.NOEKEON", "org.bouncycastle.jce.provider.symmetric.Noekeon$AlgParams");
            put("AlgorithmParameterGenerator.NOEKEON", "org.bouncycastle.jce.provider.symmetric.Noekeon$AlgParamGen");
            put("Cipher.NOEKEON", "org.bouncycastle.jce.provider.symmetric.Noekeon$ECB");
            put("KeyGenerator.NOEKEON", "org.bouncycastle.jce.provider.symmetric.Noekeon$KeyGen");
        }
    }

    private Noekeon() {
    }
}
