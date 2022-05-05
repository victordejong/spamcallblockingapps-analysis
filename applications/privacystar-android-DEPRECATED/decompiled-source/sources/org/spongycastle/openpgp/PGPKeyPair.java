package org.spongycastle.openpgp;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPKeyPair.class */
public class PGPKeyPair {
    protected PGPPrivateKey priv;
    protected PGPPublicKey pub;

    /* JADX INFO: Access modifiers changed from: protected */
    public PGPKeyPair() {
    }

    public PGPKeyPair(PGPPublicKey pGPPublicKey, PGPPrivateKey pGPPrivateKey) {
        this.pub = pGPPublicKey;
        this.priv = pGPPrivateKey;
    }

    public long getKeyID() {
        return this.pub.getKeyID();
    }

    public PGPPrivateKey getPrivateKey() {
        return this.priv;
    }

    public PGPPublicKey getPublicKey() {
        return this.pub;
    }
}
