package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/DHParametersHelper.class */
public class DHParametersHelper {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    public static BigInteger[] generateSafePrimes(int i, int i2, SecureRandom secureRandom) {
        BigInteger bigInteger;
        BigInteger add;
        while (true) {
            bigInteger = new BigInteger(i - 1, 2, secureRandom);
            add = bigInteger.shiftLeft(1).add(ONE);
            if (!add.isProbablePrime(i2) || (i2 > 2 && !bigInteger.isProbablePrime(i2))) {
            }
        }
        return new BigInteger[]{add, bigInteger};
    }

    public static BigInteger selectGenerator(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger modPow;
        BigInteger subtract = bigInteger.subtract(TWO);
        do {
            BigInteger bigInteger3 = TWO;
            modPow = BigIntegers.createRandomInRange(bigInteger3, subtract, secureRandom).modPow(bigInteger3, bigInteger);
        } while (modPow.equals(ONE));
        return modPow;
    }
}
