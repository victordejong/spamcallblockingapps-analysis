package org.spongycastle.crypto;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/StreamCipher.class */
public interface StreamCipher {
    String getAlgorithmName();

    void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

    int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException;

    void reset();

    byte returnByte(byte b);
}
