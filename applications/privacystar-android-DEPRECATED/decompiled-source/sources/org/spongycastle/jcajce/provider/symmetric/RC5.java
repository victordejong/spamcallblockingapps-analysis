package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.RC532Engine;
import org.spongycastle.crypto.engines.RC564Engine;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5.class */
public final class RC5 {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$AlgParamGen.class */
    public static class AlgParamGen extends BaseAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[8];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters createParametersInstance = createParametersInstance("RC5");
                createParametersInstance.init(new IvParameterSpec(bArr));
                return createParametersInstance;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC5 parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$AlgParams.class */
    public static class AlgParams extends IvAlgorithmParameters {
        @Override // org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters, java.security.AlgorithmParametersSpi
        protected String engineToString() {
            return "RC5 IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$CBC32.class */
    public static class CBC32 extends BaseBlockCipher {
        public CBC32() {
            super(new CBCBlockCipher(new RC532Engine()), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$CFB8Mac32.class */
    public static class CFB8Mac32 extends BaseMac {
        public CFB8Mac32() {
            super(new CFBBlockCipherMac(new RC532Engine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$ECB32.class */
    public static class ECB32 extends BaseBlockCipher {
        public ECB32() {
            super(new RC532Engine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$ECB64.class */
    public static class ECB64 extends BaseBlockCipher {
        public ECB64() {
            super(new RC564Engine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$KeyGen32.class */
    public static class KeyGen32 extends BaseKeyGenerator {
        public KeyGen32() {
            super("RC5", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$KeyGen64.class */
    public static class KeyGen64 extends BaseKeyGenerator {
        public KeyGen64() {
            super("RC5-64", 256, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$Mac32.class */
    public static class Mac32 extends BaseMac {
        public Mac32() {
            super(new CBCBlockCipherMac(new RC532Engine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/RC5$Mappings.class */
    public static class Mappings extends AlgorithmProvider {
        private static final String PREFIX = RC5.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("Cipher.RC5", PREFIX + "$ECB32");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.RC5-32", "RC5");
            configurableProvider.addAlgorithm("Cipher.RC5-64", PREFIX + "$ECB64");
            configurableProvider.addAlgorithm("KeyGenerator.RC5", PREFIX + "$KeyGen32");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.RC5-32", "RC5");
            configurableProvider.addAlgorithm("KeyGenerator.RC5-64", PREFIX + "$KeyGen64");
            configurableProvider.addAlgorithm("AlgorithmParameters.RC5", PREFIX + "$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.RC5-64", PREFIX + "$AlgParams");
            configurableProvider.addAlgorithm("Mac.RC5MAC", PREFIX + "$Mac32");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.RC5", "RC5MAC");
            configurableProvider.addAlgorithm("Mac.RC5MAC/CFB8", PREFIX + "$CFB8Mac32");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.RC5/CFB8", "RC5MAC/CFB8");
        }
    }

    private RC5() {
    }
}
