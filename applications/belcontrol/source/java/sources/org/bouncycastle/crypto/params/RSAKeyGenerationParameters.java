package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.KeyGenerationParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/RSAKeyGenerationParameters.class */
public class RSAKeyGenerationParameters extends KeyGenerationParameters {
    private int certainty;
    private BigInteger publicExponent;

    public RSAKeyGenerationParameters(BigInteger bigInteger, SecureRandom secureRandom, int i, int i2) {
        super(secureRandom, i);
        if (i >= 12) {
            if (!bigInteger.testBit(0)) {
                throw new IllegalArgumentException("public exponent cannot be even");
            }
            this.publicExponent = bigInteger;
            this.certainty = i2;
            return;
        }
        throw new IllegalArgumentException("key strength too small");
    }

    public int getCertainty() {
        return this.certainty;
    }

    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }
}
