package org.bouncycastle.crypto;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/BasicAgreement.class */
public interface BasicAgreement {
    BigInteger calculateAgreement(CipherParameters cipherParameters);

    void init(CipherParameters cipherParameters);
}
