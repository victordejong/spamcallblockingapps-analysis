package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/DerivationFunction.class */
public interface DerivationFunction {
    int generateBytes(byte[] bArr, int i, int i2);

    Digest getDigest();

    void init(DerivationParameters derivationParameters);
}
