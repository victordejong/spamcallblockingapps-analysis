package org.spongycastle.crypto.p026ec;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.math.p032ec.ECPoint;
/* renamed from: org.spongycastle.crypto.ec.ECElGamalDecryptor */
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/ec/ECElGamalDecryptor.class */
public class ECElGamalDecryptor implements ECDecryptor {
    private ECPrivateKeyParameters key;

    @Override // org.spongycastle.crypto.p026ec.ECDecryptor
    public ECPoint decrypt(ECPair eCPair) {
        if (this.key == null) {
            throw new IllegalStateException("ECElGamalDecryptor not initialised");
        }
        return eCPair.getY().subtract(eCPair.getX().multiply(this.key.getD())).normalize();
    }

    @Override // org.spongycastle.crypto.p026ec.ECDecryptor
    public void init(CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ECPrivateKeyParameters)) {
            throw new IllegalArgumentException("ECPrivateKeyParameters are required for decryption.");
        }
        this.key = (ECPrivateKeyParameters) cipherParameters;
    }
}
