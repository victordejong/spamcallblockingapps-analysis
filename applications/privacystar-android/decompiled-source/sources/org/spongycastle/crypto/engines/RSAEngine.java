package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/RSAEngine.class */
public class RSAEngine implements AsymmetricBlockCipher {
    private RSACoreEngine core;

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.core.getInputBlockSize();
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.core.getOutputBlockSize();
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (this.core == null) {
            this.core = new RSACoreEngine();
        }
        this.core.init(z, cipherParameters);
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) {
        if (this.core != null) {
            return this.core.convertOutput(this.core.processBlock(this.core.convertInput(bArr, i, i2)));
        }
        throw new IllegalStateException("RSA engine not initialised");
    }
}
