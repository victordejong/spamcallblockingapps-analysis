package org.spongycastle.crypto;

import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/BasicAgreement.class */
public interface BasicAgreement {
    BigInteger calculateAgreement(CipherParameters cipherParameters);

    int getFieldSize();

    void init(CipherParameters cipherParameters);
}
