package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.RSAKeyGenerationParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/RSAKeyPairGenerator.class */
public class RSAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private RSAKeyGenerationParameters param;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger multiply;
        int strength = this.param.getStrength();
        int i = (strength + 1) / 2;
        int i2 = strength / 3;
        BigInteger publicExponent = this.param.getPublicExponent();
        while (true) {
            bigInteger = new BigInteger(i, 1, this.param.getRandom());
            BigInteger mod = bigInteger.mod(publicExponent);
            BigInteger bigInteger4 = ONE;
            if (!mod.equals(bigInteger4) && bigInteger.isProbablePrime(this.param.getCertainty()) && publicExponent.gcd(bigInteger.subtract(bigInteger4)).equals(bigInteger4)) {
                break;
            }
        }
        while (true) {
            bigInteger2 = new BigInteger(strength - i, 1, this.param.getRandom());
            if (bigInteger2.subtract(bigInteger).abs().bitLength() >= i2) {
                BigInteger mod2 = bigInteger2.mod(publicExponent);
                bigInteger3 = ONE;
                if (!mod2.equals(bigInteger3) && bigInteger2.isProbablePrime(this.param.getCertainty()) && publicExponent.gcd(bigInteger2.subtract(bigInteger3)).equals(bigInteger3)) {
                    multiply = bigInteger.multiply(bigInteger2);
                    if (multiply.bitLength() == this.param.getStrength()) {
                        break;
                    }
                    bigInteger = bigInteger.max(bigInteger2);
                }
            }
        }
        if (bigInteger.compareTo(bigInteger2) < 0) {
            BigInteger bigInteger5 = bigInteger;
            bigInteger = bigInteger2;
            bigInteger2 = bigInteger5;
        }
        BigInteger subtract = bigInteger.subtract(bigInteger3);
        BigInteger subtract2 = bigInteger2.subtract(bigInteger3);
        BigInteger modInverse = publicExponent.modInverse(subtract.multiply(subtract2));
        return new AsymmetricCipherKeyPair(new RSAKeyParameters(false, multiply, publicExponent), new RSAPrivateCrtKeyParameters(multiply, publicExponent, modInverse, bigInteger, bigInteger2, modInverse.remainder(subtract), modInverse.remainder(subtract2), bigInteger2.modInverse(bigInteger)));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (RSAKeyGenerationParameters) keyGenerationParameters;
    }
}
