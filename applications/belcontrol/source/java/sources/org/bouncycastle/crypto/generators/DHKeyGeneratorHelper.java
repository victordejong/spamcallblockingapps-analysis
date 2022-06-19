package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/DHKeyGeneratorHelper.class */
public class DHKeyGeneratorHelper {
    public static final DHKeyGeneratorHelper INSTANCE = new DHKeyGeneratorHelper();
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    private DHKeyGeneratorHelper() {
    }

    public BigInteger calculatePrivate(DHParameters dHParameters, SecureRandom secureRandom) {
        BigInteger p = dHParameters.getP();
        int l = dHParameters.getL();
        if (l != 0) {
            return new BigInteger(l, secureRandom).setBit(l - 1);
        }
        BigInteger bigInteger = TWO;
        int m = dHParameters.getM();
        BigInteger shiftLeft = m != 0 ? ONE.shiftLeft(m - 1) : bigInteger;
        BigInteger subtract = p.subtract(bigInteger);
        BigInteger q = dHParameters.getQ();
        BigInteger bigInteger2 = subtract;
        if (q != null) {
            bigInteger2 = q.subtract(bigInteger);
        }
        return BigIntegers.createRandomInRange(shiftLeft, bigInteger2, secureRandom);
    }

    public BigInteger calculatePublic(DHParameters dHParameters, BigInteger bigInteger) {
        return dHParameters.getG().modPow(bigInteger, dHParameters.getP());
    }
}
