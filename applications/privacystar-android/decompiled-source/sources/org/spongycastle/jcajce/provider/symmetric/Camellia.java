package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ntt.NTTObjectIdentifiers;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.CamelliaEngine;
import org.spongycastle.crypto.engines.CamelliaWrapEngine;
import org.spongycastle.crypto.engines.RFC3211WrapEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia.class */
public final class Camellia {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$AlgParamGen.class */
    public static class AlgParamGen extends BaseAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters createParametersInstance = createParametersInstance("Camellia");
                createParametersInstance.init(new IvParameterSpec(bArr));
                return createParametersInstance;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Camellia parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$AlgParams.class */
    public static class AlgParams extends IvAlgorithmParameters {
        @Override // org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters, java.security.AlgorithmParametersSpi
        protected String engineToString() {
            return "Camellia IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$CBC.class */
    public static class CBC extends BaseBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new CamelliaEngine()), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$ECB.class */
    public static class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() { // from class: org.spongycastle.jcajce.provider.symmetric.Camellia.ECB.1
                @Override // org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider
                public BlockCipher get() {
                    return new CamelliaEngine();
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$GMAC.class */
    public static class GMAC extends BaseMac {
        public GMAC() {
            super(new GMac(new GCMBlockCipher(new CamelliaEngine())));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$KeyGen.class */
    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            this(256);
        }

        public KeyGen(int i) {
            super("Camellia", i, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$KeyGen128.class */
    public static class KeyGen128 extends KeyGen {
        public KeyGen128() {
            super(128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$KeyGen192.class */
    public static class KeyGen192 extends KeyGen {
        public KeyGen192() {
            super(192);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$KeyGen256.class */
    public static class KeyGen256 extends KeyGen {
        public KeyGen256() {
            super(256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$Mappings.class */
    public static class Mappings extends SymmetricAlgorithmProvider {
        private static final String PREFIX = Camellia.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("AlgorithmParameters.CAMELLIA", PREFIX + "$AlgParams");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", NTTObjectIdentifiers.id_camellia128_cbc, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", NTTObjectIdentifiers.id_camellia192_cbc, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", NTTObjectIdentifiers.id_camellia256_cbc, "CAMELLIA");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.CAMELLIA", PREFIX + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", NTTObjectIdentifiers.id_camellia128_cbc, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", NTTObjectIdentifiers.id_camellia192_cbc, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", NTTObjectIdentifiers.id_camellia256_cbc, "CAMELLIA");
            configurableProvider.addAlgorithm("Cipher.CAMELLIA", PREFIX + "$ECB");
            configurableProvider.addAlgorithm("Cipher", NTTObjectIdentifiers.id_camellia128_cbc, PREFIX + "$CBC");
            configurableProvider.addAlgorithm("Cipher", NTTObjectIdentifiers.id_camellia192_cbc, PREFIX + "$CBC");
            configurableProvider.addAlgorithm("Cipher", NTTObjectIdentifiers.id_camellia256_cbc, PREFIX + "$CBC");
            configurableProvider.addAlgorithm("Cipher.CAMELLIARFC3211WRAP", PREFIX + "$RFC3211Wrap");
            configurableProvider.addAlgorithm("Cipher.CAMELLIAWRAP", PREFIX + "$Wrap");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", NTTObjectIdentifiers.id_camellia128_wrap, "CAMELLIAWRAP");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", NTTObjectIdentifiers.id_camellia192_wrap, "CAMELLIAWRAP");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", NTTObjectIdentifiers.id_camellia256_wrap, "CAMELLIAWRAP");
            configurableProvider.addAlgorithm("KeyGenerator.CAMELLIA", PREFIX + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", NTTObjectIdentifiers.id_camellia128_wrap, PREFIX + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", NTTObjectIdentifiers.id_camellia192_wrap, PREFIX + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", NTTObjectIdentifiers.id_camellia256_wrap, PREFIX + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", NTTObjectIdentifiers.id_camellia128_cbc, PREFIX + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", NTTObjectIdentifiers.id_camellia192_cbc, PREFIX + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", NTTObjectIdentifiers.id_camellia256_cbc, PREFIX + "$KeyGen256");
            addGMacAlgorithm(configurableProvider, "CAMELLIA", PREFIX + "$GMAC", PREFIX + "$KeyGen");
            addPoly1305Algorithm(configurableProvider, "CAMELLIA", PREFIX + "$Poly1305", PREFIX + "$Poly1305KeyGen");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$Poly1305.class */
    public static class Poly1305 extends BaseMac {
        public Poly1305() {
            super(new org.spongycastle.crypto.macs.Poly1305(new CamelliaEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$Poly1305KeyGen.class */
    public static class Poly1305KeyGen extends BaseKeyGenerator {
        public Poly1305KeyGen() {
            super("Poly1305-Camellia", 256, new Poly1305KeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$RFC3211Wrap.class */
    public static class RFC3211Wrap extends BaseWrapCipher {
        public RFC3211Wrap() {
            super(new RFC3211WrapEngine(new CamelliaEngine()), 16);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/Camellia$Wrap.class */
    public static class Wrap extends BaseWrapCipher {
        public Wrap() {
            super(new CamelliaWrapEngine());
        }
    }

    private Camellia() {
    }
}
