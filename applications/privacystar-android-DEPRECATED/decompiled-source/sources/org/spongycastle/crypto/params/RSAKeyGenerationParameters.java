package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/RSAKeyGenerationParameters.class */
public class RSAKeyGenerationParameters extends KeyGenerationParameters {
    private int certainty;
    private BigInteger publicExponent;

    public RSAKeyGenerationParameters(BigInteger bigInteger, SecureRandom secureRandom, int i, int i2) {
        super(secureRandom, i);
        if (i < 12) {
            throw new IllegalArgumentException("key strength too small");
        } else if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("public exponent cannot be even");
        } else {
            this.publicExponent = bigInteger;
            this.certainty = i2;
        }
    }

    public int getCertainty() {
        return this.certainty;
    }

    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }
}
