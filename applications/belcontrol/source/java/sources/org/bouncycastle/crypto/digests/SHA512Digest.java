package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/SHA512Digest.class */
public class SHA512Digest extends LongDigest {
    private static final int DIGEST_LENGTH = 64;

    public SHA512Digest() {
    }

    public SHA512Digest(SHA512Digest sHA512Digest) {
        super(sHA512Digest);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.longToBigEndian(this.f7324H1, bArr, i);
        Pack.longToBigEndian(this.f7325H2, bArr, i + 8);
        Pack.longToBigEndian(this.f7326H3, bArr, i + 16);
        Pack.longToBigEndian(this.f7327H4, bArr, i + 24);
        Pack.longToBigEndian(this.f7328H5, bArr, i + 32);
        Pack.longToBigEndian(this.f7329H6, bArr, i + 40);
        Pack.longToBigEndian(this.f7330H7, bArr, i + 48);
        Pack.longToBigEndian(this.f7331H8, bArr, i + 56);
        reset();
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-512";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.digests.LongDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f7324H1 = 7640891576956012808L;
        this.f7325H2 = -4942790177534073029L;
        this.f7326H3 = 4354685564936845355L;
        this.f7327H4 = -6534734903238641935L;
        this.f7328H5 = 5840696475078001361L;
        this.f7329H6 = -7276294671716946913L;
        this.f7330H7 = 2270897969802886507L;
        this.f7331H8 = 6620516959819538809L;
    }
}
