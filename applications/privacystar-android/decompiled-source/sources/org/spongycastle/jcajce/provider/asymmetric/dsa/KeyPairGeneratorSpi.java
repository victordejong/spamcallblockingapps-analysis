package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.util.Hashtable;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.generators.DSAKeyPairGenerator;
import org.spongycastle.crypto.generators.DSAParametersGenerator;
import org.spongycastle.crypto.params.DSAKeyGenerationParameters;
import org.spongycastle.crypto.params.DSAParameterGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.PrimeCertaintyCalculator;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Properties;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi.class */
public class KeyPairGeneratorSpi extends KeyPairGenerator {
    DSAKeyGenerationParameters param;
    private static Hashtable params = new Hashtable();
    private static Object lock = new Object();
    DSAKeyPairGenerator engine = new DSAKeyPairGenerator();
    int strength = 2048;
    SecureRandom random = new SecureRandom();
    boolean initialised = false;

    public KeyPairGeneratorSpi() {
        super("DSA");
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        DSAParametersGenerator dSAParametersGenerator;
        if (!this.initialised) {
            Integer valueOf = Integers.valueOf(this.strength);
            if (params.containsKey(valueOf)) {
                this.param = (DSAKeyGenerationParameters) params.get(valueOf);
            } else {
                synchronized (lock) {
                    if (params.containsKey(valueOf)) {
                        this.param = (DSAKeyGenerationParameters) params.get(valueOf);
                    } else {
                        int defaultCertainty = PrimeCertaintyCalculator.getDefaultCertainty(this.strength);
                        if (this.strength == 1024) {
                            dSAParametersGenerator = new DSAParametersGenerator();
                            if (Properties.isOverrideSet("org.spongycastle.dsa.FIPS186-2for1024bits")) {
                                dSAParametersGenerator.init(this.strength, defaultCertainty, this.random);
                            } else {
                                dSAParametersGenerator.init(new DSAParameterGenerationParameters(1024, 160, defaultCertainty, this.random));
                            }
                        } else if (this.strength > 1024) {
                            DSAParameterGenerationParameters dSAParameterGenerationParameters = new DSAParameterGenerationParameters(this.strength, 256, defaultCertainty, this.random);
                            dSAParametersGenerator = new DSAParametersGenerator(new SHA256Digest());
                            dSAParametersGenerator.init(dSAParameterGenerationParameters);
                        } else {
                            dSAParametersGenerator = new DSAParametersGenerator();
                            dSAParametersGenerator.init(this.strength, defaultCertainty, this.random);
                        }
                        this.param = new DSAKeyGenerationParameters(this.random, dSAParametersGenerator.generateParameters());
                        params.put(valueOf, this.param);
                    }
                }
            }
            this.engine.init(this.param);
            this.initialised = true;
        }
        AsymmetricCipherKeyPair generateKeyPair = this.engine.generateKeyPair();
        return new KeyPair(new BCDSAPublicKey((DSAPublicKeyParameters) generateKeyPair.getPublic()), new BCDSAPrivateKey((DSAPrivateKeyParameters) generateKeyPair.getPrivate()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        if (i < 512 || i > 4096 || ((i < 1024 && i % 64 != 0) || (i >= 1024 && i % 1024 != 0))) {
            throw new InvalidParameterException("strength must be from 512 - 4096 and a multiple of 1024 above 1024");
        }
        this.strength = i;
        this.random = secureRandom;
        this.initialised = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DSAParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DSAParameterSpec");
        }
        DSAParameterSpec dSAParameterSpec = (DSAParameterSpec) algorithmParameterSpec;
        this.param = new DSAKeyGenerationParameters(secureRandom, new DSAParameters(dSAParameterSpec.getP(), dSAParameterSpec.getQ(), dSAParameterSpec.getG()));
        this.engine.init(this.param);
        this.initialised = true;
    }
}
