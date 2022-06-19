package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/AsymmetricCipherKeyPair.class */
public class AsymmetricCipherKeyPair {
    private CipherParameters privateParam;
    private CipherParameters publicParam;

    public AsymmetricCipherKeyPair(CipherParameters cipherParameters, CipherParameters cipherParameters2) {
        this.publicParam = cipherParameters;
        this.privateParam = cipherParameters2;
    }

    public CipherParameters getPrivate() {
        return this.privateParam;
    }

    public CipherParameters getPublic() {
        return this.publicParam;
    }
}
