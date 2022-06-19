package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/StreamCipher.class */
public interface StreamCipher {
    String getAlgorithmName();

    void init(boolean z, CipherParameters cipherParameters);

    void processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    void reset();

    byte returnByte(byte b);
}
