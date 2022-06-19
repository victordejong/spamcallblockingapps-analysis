package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/Mac.class */
public interface Mac {
    int doFinal(byte[] bArr, int i);

    String getAlgorithmName();

    int getMacSize();

    void init(CipherParameters cipherParameters);

    void reset();

    void update(byte b);

    void update(byte[] bArr, int i, int i2);
}
