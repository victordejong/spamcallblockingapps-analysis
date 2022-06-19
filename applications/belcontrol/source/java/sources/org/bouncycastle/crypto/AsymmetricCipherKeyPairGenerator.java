package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator.class */
public interface AsymmetricCipherKeyPairGenerator {
    AsymmetricCipherKeyPair generateKeyPair();

    void init(KeyGenerationParameters keyGenerationParameters);
}
