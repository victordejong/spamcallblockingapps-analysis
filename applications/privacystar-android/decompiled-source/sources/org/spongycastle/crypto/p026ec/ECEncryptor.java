package org.spongycastle.crypto.p026ec;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.math.p032ec.ECPoint;
/* renamed from: org.spongycastle.crypto.ec.ECEncryptor */
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/ec/ECEncryptor.class */
public interface ECEncryptor {
    ECPair encrypt(ECPoint eCPoint);

    void init(CipherParameters cipherParameters);
}
