package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/Signer.class */
public interface Signer {
    byte[] generateSignature();

    void init(boolean z, CipherParameters cipherParameters);

    void reset();

    void update(byte b);

    void update(byte[] bArr, int i, int i2);

    boolean verifySignature(byte[] bArr);
}
