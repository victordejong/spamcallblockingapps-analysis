package org.spongycastle.crypto.p026ec;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.math.p032ec.ECPoint;
/* renamed from: org.spongycastle.crypto.ec.ECDecryptor */
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/ec/ECDecryptor.class */
public interface ECDecryptor {
    ECPoint decrypt(ECPair eCPair);

    void init(CipherParameters cipherParameters);
}
