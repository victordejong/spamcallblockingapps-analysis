package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/paddings/BlockCipherPadding.class */
public interface BlockCipherPadding {
    int addPadding(byte[] bArr, int i);

    String getPaddingName();

    void init(SecureRandom secureRandom);

    int padCount(byte[] bArr);
}
