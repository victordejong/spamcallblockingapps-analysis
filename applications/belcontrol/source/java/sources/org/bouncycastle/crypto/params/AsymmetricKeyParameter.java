package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/AsymmetricKeyParameter.class */
public class AsymmetricKeyParameter implements CipherParameters {
    public boolean privateKey;

    public AsymmetricKeyParameter(boolean z) {
        this.privateKey = z;
    }

    public boolean isPrivate() {
        return this.privateKey;
    }
}
