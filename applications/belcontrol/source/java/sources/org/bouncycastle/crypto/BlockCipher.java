package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/BlockCipher.class */
public interface BlockCipher {
    String getAlgorithmName();

    int getBlockSize();

    void init(boolean z, CipherParameters cipherParameters);

    int processBlock(byte[] bArr, int i, byte[] bArr2, int i2);

    void reset();
}
