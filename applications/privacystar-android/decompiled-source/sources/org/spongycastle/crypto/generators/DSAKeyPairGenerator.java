package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DSAKeyGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.math.p032ec.WNafUtil;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/DSAKeyPairGenerator.class */
public class DSAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private DSAKeyGenerationParameters param;

    private static BigInteger calculatePublicKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger2.modPow(bigInteger3, bigInteger);
    }

    private static BigInteger generatePrivateKey(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger createRandomInRange;
        int bitLength = bigInteger.bitLength();
        do {
            createRandomInRange = BigIntegers.createRandomInRange(ONE, bigInteger.subtract(ONE), secureRandom);
        } while (WNafUtil.getNafWeight(createRandomInRange) < (bitLength >>> 2));
        return createRandomInRange;
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        DSAParameters parameters = this.param.getParameters();
        BigInteger generatePrivateKey = generatePrivateKey(parameters.getQ(), this.param.getRandom());
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new DSAPublicKeyParameters(calculatePublicKey(parameters.getP(), parameters.getG(), generatePrivateKey), parameters), (AsymmetricKeyParameter) new DSAPrivateKeyParameters(generatePrivateKey, parameters));
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (DSAKeyGenerationParameters) keyGenerationParameters;
    }
}
