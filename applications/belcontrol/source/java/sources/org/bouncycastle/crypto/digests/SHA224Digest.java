package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/SHA224Digest.class */
public class SHA224Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 28;

    /* renamed from: K */
    public static final int[] f7388K = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: H1 */
    private int f7389H1;

    /* renamed from: H2 */
    private int f7390H2;

    /* renamed from: H3 */
    private int f7391H3;

    /* renamed from: H4 */
    private int f7392H4;

    /* renamed from: H5 */
    private int f7393H5;

    /* renamed from: H6 */
    private int f7394H6;

    /* renamed from: H7 */
    private int f7395H7;

    /* renamed from: H8 */
    private int f7396H8;

    /* renamed from: X */
    private int[] f7397X;
    private int xOff;

    public SHA224Digest() {
        this.f7397X = new int[64];
        reset();
    }

    public SHA224Digest(SHA224Digest sHA224Digest) {
        super(sHA224Digest);
        int[] iArr = new int[64];
        this.f7397X = iArr;
        this.f7389H1 = sHA224Digest.f7389H1;
        this.f7390H2 = sHA224Digest.f7390H2;
        this.f7391H3 = sHA224Digest.f7391H3;
        this.f7392H4 = sHA224Digest.f7392H4;
        this.f7393H5 = sHA224Digest.f7393H5;
        this.f7394H6 = sHA224Digest.f7394H6;
        this.f7395H7 = sHA224Digest.f7395H7;
        this.f7396H8 = sHA224Digest.f7396H8;
        int[] iArr2 = sHA224Digest.f7397X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = sHA224Digest.xOff;
    }

    /* renamed from: Ch */
    private int m972Ch(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) ^ (i2 & i);
    }

    private int Maj(int i, int i2, int i3) {
        return ((i & i3) ^ (i & i2)) ^ (i2 & i3);
    }

    private int Sum0(int i) {
        return ((i << 10) | (i >>> 22)) ^ (((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19)));
    }

    private int Sum1(int i) {
        return ((i << 7) | (i >>> 25)) ^ (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21)));
    }

    private int Theta0(int i) {
        return (i >>> 3) ^ (((i >>> 7) | (i << 25)) ^ ((i >>> 18) | (i << 14)));
    }

    private int Theta1(int i) {
        return (i >>> 10) ^ (((i >>> 17) | (i << 15)) ^ ((i >>> 19) | (i << 13)));
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.intToBigEndian(this.f7389H1, bArr, i);
        Pack.intToBigEndian(this.f7390H2, bArr, i + 4);
        Pack.intToBigEndian(this.f7391H3, bArr, i + 8);
        Pack.intToBigEndian(this.f7392H4, bArr, i + 12);
        Pack.intToBigEndian(this.f7393H5, bArr, i + 16);
        Pack.intToBigEndian(this.f7394H6, bArr, i + 20);
        Pack.intToBigEndian(this.f7395H7, bArr, i + 24);
        reset();
        return 28;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-224";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 28;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        for (int i = 16; i <= 63; i++) {
            int[] iArr = this.f7397X;
            int Theta1 = Theta1(iArr[i - 2]);
            int[] iArr2 = this.f7397X;
            iArr[i] = Theta1 + iArr2[i - 7] + Theta0(iArr2[i - 15]) + this.f7397X[i - 16];
        }
        int i2 = this.f7389H1;
        int i3 = this.f7390H2;
        int i4 = this.f7391H3;
        int i5 = this.f7392H4;
        int i6 = this.f7393H5;
        int i7 = this.f7394H6;
        int i8 = this.f7395H7;
        int i9 = this.f7396H8;
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            int Sum1 = Sum1(i6);
            int m972Ch = m972Ch(i6, i7, i8);
            int[] iArr3 = f7388K;
            int i12 = i9 + Sum1 + m972Ch + iArr3[i10] + this.f7397X[i10];
            int i13 = i5 + i12;
            int Sum0 = i12 + Sum0(i2) + Maj(i2, i3, i4);
            int i14 = i10 + 1;
            int Sum12 = i8 + Sum1(i13) + m972Ch(i13, i6, i7) + iArr3[i14] + this.f7397X[i14];
            int i15 = i4 + Sum12;
            int Sum02 = Sum12 + Sum0(Sum0) + Maj(Sum0, i2, i3);
            int i16 = i14 + 1;
            int Sum13 = i7 + Sum1(i15) + m972Ch(i15, i13, i6) + iArr3[i16] + this.f7397X[i16];
            int i17 = i3 + Sum13;
            int Sum03 = Sum13 + Sum0(Sum02) + Maj(Sum02, Sum0, i2);
            int i18 = i16 + 1;
            int Sum14 = i6 + Sum1(i17) + m972Ch(i17, i15, i13) + iArr3[i18] + this.f7397X[i18];
            int i19 = i2 + Sum14;
            int Sum04 = Sum14 + Sum0(Sum03) + Maj(Sum03, Sum02, Sum0);
            int i20 = i18 + 1;
            int Sum15 = i13 + Sum1(i19) + m972Ch(i19, i17, i15) + iArr3[i20] + this.f7397X[i20];
            i9 = Sum0 + Sum15;
            i5 = Sum15 + Sum0(Sum04) + Maj(Sum04, Sum03, Sum02);
            int i21 = i20 + 1;
            int Sum16 = i15 + Sum1(i9) + m972Ch(i9, i19, i17) + iArr3[i21] + this.f7397X[i21];
            i8 = Sum02 + Sum16;
            i4 = Sum16 + Sum0(i5) + Maj(i5, Sum04, Sum03);
            int i22 = i21 + 1;
            int Sum17 = i17 + Sum1(i8) + m972Ch(i8, i9, i19) + iArr3[i22] + this.f7397X[i22];
            i7 = Sum03 + Sum17;
            i3 = Sum17 + Sum0(i4) + Maj(i4, i5, Sum04);
            int i23 = i22 + 1;
            int Sum18 = i19 + Sum1(i7) + m972Ch(i7, i8, i9) + iArr3[i23] + this.f7397X[i23];
            i6 = Sum04 + Sum18;
            i2 = Sum18 + Sum0(i3) + Maj(i3, i4, i5);
            i10 = i23 + 1;
        }
        this.f7389H1 += i2;
        this.f7390H2 += i3;
        this.f7391H3 += i4;
        this.f7392H4 += i5;
        this.f7393H5 += i6;
        this.f7394H6 += i7;
        this.f7395H7 += i8;
        this.f7396H8 += i9;
        this.xOff = 0;
        for (int i24 = 0; i24 < 16; i24++) {
            this.f7397X[i24] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f7397X;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) (j & (-1));
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i) {
        byte b = bArr[i];
        int i2 = i + 1;
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        byte b3 = bArr[i3];
        byte b4 = bArr[i3 + 1];
        int[] iArr = this.f7397X;
        int i4 = this.xOff;
        iArr[i4] = (b4 & 255) | (b << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
        int i5 = i4 + 1;
        this.xOff = i5;
        if (i5 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f7389H1 = -1056596264;
        this.f7390H2 = 914150663;
        this.f7391H3 = 812702999;
        this.f7392H4 = -150054599;
        this.f7393H5 = -4191439;
        this.f7394H6 = 1750603025;
        this.f7395H7 = 1694076839;
        this.f7396H8 = -1090891868;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7397X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
