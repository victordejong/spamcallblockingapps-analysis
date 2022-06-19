package org.bouncycastle.crypto;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/KeyGenerationParameters.class */
public class KeyGenerationParameters {
    private SecureRandom random;
    private int strength;

    public KeyGenerationParameters(SecureRandom secureRandom, int i) {
        this.random = secureRandom;
        this.strength = i;
    }

    public SecureRandom getRandom() {
        return this.random;
    }

    public int getStrength() {
        return this.strength;
    }
}
