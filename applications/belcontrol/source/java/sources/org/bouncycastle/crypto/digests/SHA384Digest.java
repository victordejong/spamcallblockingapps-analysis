package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/SHA384Digest.class */
public class SHA384Digest extends LongDigest {
    private static final int DIGEST_LENGTH = 48;

    public SHA384Digest() {
    }

    public SHA384Digest(SHA384Digest sHA384Digest) {
        super(sHA384Digest);
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
        reset();
        return 48;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-384";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 48;
    }

    @Override // org.bouncycastle.crypto.digests.LongDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f7324H1 = -3766243637369397544L;
        this.f7325H2 = 7105036623409894663L;
        this.f7326H3 = -7973340178411365097L;
        this.f7327H4 = 1526699215303891257L;
        this.f7328H5 = 7436329637833083697L;
        this.f7329H6 = -8163818279084223215L;
        this.f7330H7 = -2662702644619276377L;
        this.f7331H8 = 5167115440072839076L;
    }
}
