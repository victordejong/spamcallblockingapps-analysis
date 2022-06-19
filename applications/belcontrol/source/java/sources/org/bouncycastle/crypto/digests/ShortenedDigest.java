package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/ShortenedDigest.class */
public class ShortenedDigest implements ExtendedDigest {
    private ExtendedDigest baseDigest;
    private int length;

    public ShortenedDigest(ExtendedDigest extendedDigest, int i) {
        if (extendedDigest != null) {
            if (i > extendedDigest.getDigestSize()) {
                throw new IllegalArgumentException("baseDigest output not large enough to support length");
            }
            this.baseDigest = extendedDigest;
            this.length = i;
            return;
        }
        throw new IllegalArgumentException("baseDigest must not be null");
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        byte[] bArr2 = new byte[this.baseDigest.getDigestSize()];
        this.baseDigest.doFinal(bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, i, this.length);
        return this.length;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.baseDigest.getAlgorithmName() + "(" + (this.length * 8) + ")";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.baseDigest.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.length;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.baseDigest.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        this.baseDigest.update(b);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        this.baseDigest.update(bArr, i, i2);
    }
}
