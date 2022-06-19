package org.bouncycastle.crypto;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/CipherKeyGenerator.class */
public class CipherKeyGenerator {
    public SecureRandom random;
    public int strength;

    public byte[] generateKey() {
        byte[] bArr = new byte[this.strength];
        this.random.nextBytes(bArr);
        return bArr;
    }

    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.random = keyGenerationParameters.getRandom();
        this.strength = (keyGenerationParameters.getStrength() + 7) / 8;
    }
}
