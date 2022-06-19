package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/AsymmetricBlockCipher.class */
public interface AsymmetricBlockCipher {
    int getInputBlockSize();

    int getOutputBlockSize();

    void init(boolean z, CipherParameters cipherParameters);

    byte[] processBlock(byte[] bArr, int i, int i2);
}
