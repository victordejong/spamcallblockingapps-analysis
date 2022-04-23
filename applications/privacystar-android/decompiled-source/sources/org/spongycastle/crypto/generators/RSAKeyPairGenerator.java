package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.RSAKeyGenerationParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.math.Primes;
import org.spongycastle.math.p032ec.WNafUtil;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/RSAKeyPairGenerator.class */
public class RSAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private int iterations;
    private RSAKeyGenerationParameters param;

    private static int getNumberOfIterations(int i, int i2) {
        if (i >= 1536) {
            return i2 <= 100 ? 3 : i2 <= 128 ? 4 : 4 + (((i2 - 128) + 1) / 2);
        }
        int i3 = 5;
        if (i >= 1024) {
            return i2 <= 100 ? 4 : i2 <= 112 ? 5 : (((i2 - 112) + 1) / 2) + 5;
        } else if (i >= 512) {
            if (i2 > 80) {
                i3 = i2 <= 100 ? 7 : (((i2 - 100) + 1) / 2) + 7;
            }
            return i3;
        } else {
            int i4 = 40;
            if (i2 > 80) {
                i4 = 40 + (((i2 - 80) + 1) / 2);
            }
            return i4;
        }
    }

    protected BigInteger chooseRandomPrime(int i, BigInteger bigInteger, BigInteger bigInteger2) {
        for (int i2 = 0; i2 != i * 5; i2++) {
            BigInteger bigInteger3 = new BigInteger(i, 1, this.param.getRandom());
            if (!bigInteger3.mod(bigInteger).equals(ONE) && bigInteger3.multiply(bigInteger3).compareTo(bigInteger2) >= 0 && isProbablePrime(bigInteger3) && bigInteger.gcd(bigInteger3.subtract(ONE)).equals(ONE)) {
                return bigInteger3;
            }
        }
        throw new IllegalStateException("unable to generate prime number for RSA key");
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger chooseRandomPrime;
        BigInteger multiply;
        int strength = this.param.getStrength();
        int i = (strength + 1) / 2;
        int i2 = strength / 2;
        int i3 = i2 - 100;
        int i4 = strength / 3;
        int i5 = i3;
        if (i3 < i4) {
            i5 = i4;
        }
        BigInteger pow = BigInteger.valueOf(2L).pow(i2);
        BigInteger shiftLeft = ONE.shiftLeft(strength - 1);
        BigInteger shiftLeft2 = ONE.shiftLeft(i5);
        AsymmetricCipherKeyPair asymmetricCipherKeyPair = null;
        boolean z = false;
        while (!z) {
            BigInteger publicExponent = this.param.getPublicExponent();
            BigInteger chooseRandomPrime2 = chooseRandomPrime(i, publicExponent, shiftLeft);
            while (true) {
                chooseRandomPrime = chooseRandomPrime(strength - i, publicExponent, shiftLeft);
                BigInteger abs = chooseRandomPrime.subtract(chooseRandomPrime2).abs();
                if (abs.bitLength() >= i5 && abs.compareTo(shiftLeft2) > 0) {
                    multiply = chooseRandomPrime2.multiply(chooseRandomPrime);
                    if (multiply.bitLength() == strength) {
                        if (WNafUtil.getNafWeight(multiply) >= (strength >> 2)) {
                            break;
                        }
                        chooseRandomPrime2 = chooseRandomPrime(i, publicExponent, shiftLeft);
                    } else {
                        chooseRandomPrime2 = chooseRandomPrime2.max(chooseRandomPrime);
                    }
                }
            }
            if (chooseRandomPrime2.compareTo(chooseRandomPrime) < 0) {
                chooseRandomPrime = chooseRandomPrime2;
                chooseRandomPrime2 = chooseRandomPrime;
            }
            BigInteger subtract = chooseRandomPrime2.subtract(ONE);
            BigInteger subtract2 = chooseRandomPrime.subtract(ONE);
            BigInteger modInverse = publicExponent.modInverse(subtract.divide(subtract.gcd(subtract2)).multiply(subtract2));
            if (modInverse.compareTo(pow) > 0) {
                asymmetricCipherKeyPair = new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new RSAKeyParameters(false, multiply, publicExponent), (AsymmetricKeyParameter) new RSAPrivateCrtKeyParameters(multiply, publicExponent, modInverse, chooseRandomPrime2, chooseRandomPrime, modInverse.remainder(subtract), modInverse.remainder(subtract2), chooseRandomPrime.modInverse(chooseRandomPrime2)));
                z = true;
            }
        }
        return asymmetricCipherKeyPair;
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (RSAKeyGenerationParameters) keyGenerationParameters;
        this.iterations = getNumberOfIterations(this.param.getStrength(), this.param.getCertainty());
    }

    protected boolean isProbablePrime(BigInteger bigInteger) {
        return !Primes.hasAnySmallFactors(bigInteger) && Primes.isMRProbablePrime(bigInteger, this.param.getRandom(), this.iterations);
    }
}
