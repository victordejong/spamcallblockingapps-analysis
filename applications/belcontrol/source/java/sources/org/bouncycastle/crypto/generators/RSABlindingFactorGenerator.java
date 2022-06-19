package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/RSABlindingFactorGenerator.class */
public class RSABlindingFactorGenerator {
    private RSAKeyParameters key;
    private SecureRandom random;
    private static BigInteger ZERO = BigInteger.valueOf(0);
    private static BigInteger ONE = BigInteger.valueOf(1);

    public BigInteger generateBlindingFactor() {
        RSAKeyParameters rSAKeyParameters = this.key;
        if (rSAKeyParameters != null) {
            BigInteger modulus = rSAKeyParameters.getModulus();
            int bitLength = modulus.bitLength();
            while (true) {
                BigInteger bigInteger = new BigInteger(bitLength - 1, this.random);
                BigInteger gcd = bigInteger.gcd(modulus);
                if (!bigInteger.equals(ZERO) && !bigInteger.equals(ONE) && gcd.equals(ONE)) {
                    return bigInteger;
                }
            }
        } else {
            throw new IllegalStateException("generator not initialised");
        }
    }

    public void init(CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.key = (RSAKeyParameters) parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
        } else {
            this.key = (RSAKeyParameters) cipherParameters;
            secureRandom = new SecureRandom();
        }
        this.random = secureRandom;
        if (!(this.key instanceof RSAPrivateCrtKeyParameters)) {
            return;
        }
        throw new IllegalArgumentException("generator requires RSA public key");
    }
}
