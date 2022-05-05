package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.GOST3410KeyGenerationParameters;
import org.spongycastle.crypto.params.GOST3410Parameters;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.crypto.params.GOST3410PublicKeyParameters;
import org.spongycastle.math.p032ec.WNafUtil;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/GOST3410KeyPairGenerator.class */
public class GOST3410KeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private GOST3410KeyGenerationParameters param;

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        GOST3410Parameters parameters = this.param.getParameters();
        SecureRandom random = this.param.getRandom();
        BigInteger q = parameters.getQ();
        BigInteger p = parameters.getP();
        BigInteger a = parameters.getA();
        while (true) {
            BigInteger bigInteger = new BigInteger(256, random);
            if (bigInteger.signum() >= 1 && bigInteger.compareTo(q) < 0 && WNafUtil.getNafWeight(bigInteger) >= 64) {
                return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new GOST3410PublicKeyParameters(a.modPow(bigInteger, p), parameters), (AsymmetricKeyParameter) new GOST3410PrivateKeyParameters(bigInteger, parameters));
            }
        }
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (GOST3410KeyGenerationParameters) keyGenerationParameters;
    }
}
