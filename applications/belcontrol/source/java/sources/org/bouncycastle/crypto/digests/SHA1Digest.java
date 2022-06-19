package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/SHA1Digest.class */
public class SHA1Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 20;

    /* renamed from: Y1 */
    private static final int f7378Y1 = 1518500249;

    /* renamed from: Y2 */
    private static final int f7379Y2 = 1859775393;

    /* renamed from: Y3 */
    private static final int f7380Y3 = -1894007588;

    /* renamed from: Y4 */
    private static final int f7381Y4 = -899497514;

    /* renamed from: H1 */
    private int f7382H1;

    /* renamed from: H2 */
    private int f7383H2;

    /* renamed from: H3 */
    private int f7384H3;

    /* renamed from: H4 */
    private int f7385H4;

    /* renamed from: H5 */
    private int f7386H5;

    /* renamed from: X */
    private int[] f7387X;
    private int xOff;

    public SHA1Digest() {
        this.f7387X = new int[80];
        reset();
    }

    public SHA1Digest(SHA1Digest sHA1Digest) {
        super(sHA1Digest);
        int[] iArr = new int[80];
        this.f7387X = iArr;
        this.f7382H1 = sHA1Digest.f7382H1;
        this.f7383H2 = sHA1Digest.f7383H2;
        this.f7384H3 = sHA1Digest.f7384H3;
        this.f7385H4 = sHA1Digest.f7385H4;
        this.f7386H5 = sHA1Digest.f7386H5;
        int[] iArr2 = sHA1Digest.f7387X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = sHA1Digest.xOff;
    }

    /* renamed from: f */
    private int m975f(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: g */
    private int m974g(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    /* renamed from: h */
    private int m973h(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.intToBigEndian(this.f7382H1, bArr, i);
        Pack.intToBigEndian(this.f7383H2, bArr, i + 4);
        Pack.intToBigEndian(this.f7384H3, bArr, i + 8);
        Pack.intToBigEndian(this.f7385H4, bArr, i + 12);
        Pack.intToBigEndian(this.f7386H5, bArr, i + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-1";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        for (int i = 16; i < 80; i++) {
            int[] iArr = this.f7387X;
            int i2 = ((iArr[i - 3] ^ iArr[i - 8]) ^ iArr[i - 14]) ^ iArr[i - 16];
            iArr[i] = (i2 >>> 31) | (i2 << 1);
        }
        int i3 = this.f7382H1;
        int i4 = this.f7383H2;
        int i5 = this.f7384H3;
        int i6 = this.f7385H4;
        int i7 = this.f7386H5;
        int i8 = 0;
        int i9 = 0;
        while (i8 < 4) {
            int i10 = i9 + 1;
            int m975f = i7 + ((i3 << 5) | (i3 >>> 27)) + m975f(i4, i5, i6) + this.f7387X[i9] + f7378Y1;
            int i11 = (i4 >>> 2) | (i4 << 30);
            int m975f2 = m975f(i3, i11, i5);
            int i12 = i10 + 1;
            int i13 = i6 + ((m975f << 5) | (m975f >>> 27)) + m975f2 + this.f7387X[i10] + f7378Y1;
            int i14 = (i3 >>> 2) | (i3 << 30);
            int m975f3 = m975f(m975f, i14, i11);
            int i15 = i12 + 1;
            int i16 = i5 + ((i13 << 5) | (i13 >>> 27)) + m975f3 + this.f7387X[i12] + f7378Y1;
            i7 = (m975f >>> 2) | (m975f << 30);
            int m975f4 = m975f(i13, i7, i14);
            int i17 = i15 + 1;
            i4 = i11 + ((i16 << 5) | (i16 >>> 27)) + m975f4 + this.f7387X[i15] + f7378Y1;
            i6 = (i13 >>> 2) | (i13 << 30);
            i3 = i14 + ((i4 << 5) | (i4 >>> 27)) + m975f(i16, i6, i7) + this.f7387X[i17] + f7378Y1;
            i5 = (i16 >>> 2) | (i16 << 30);
            i8++;
            i9 = i17 + 1;
        }
        int i18 = 0;
        while (i18 < 4) {
            int i19 = i9 + 1;
            int m973h = i7 + ((i3 << 5) | (i3 >>> 27)) + m973h(i4, i5, i6) + this.f7387X[i9] + f7379Y2;
            int i20 = (i4 >>> 2) | (i4 << 30);
            int m973h2 = m973h(i3, i20, i5);
            int i21 = i19 + 1;
            int i22 = i6 + ((m973h << 5) | (m973h >>> 27)) + m973h2 + this.f7387X[i19] + f7379Y2;
            int i23 = (i3 >>> 2) | (i3 << 30);
            int m973h3 = m973h(m973h, i23, i20);
            int i24 = i21 + 1;
            int i25 = i5 + ((i22 << 5) | (i22 >>> 27)) + m973h3 + this.f7387X[i21] + f7379Y2;
            i7 = (m973h >>> 2) | (m973h << 30);
            int m973h4 = m973h(i22, i7, i23);
            int i26 = i24 + 1;
            i4 = i20 + ((i25 << 5) | (i25 >>> 27)) + m973h4 + this.f7387X[i24] + f7379Y2;
            i6 = (i22 >>> 2) | (i22 << 30);
            i3 = i23 + ((i4 << 5) | (i4 >>> 27)) + m973h(i25, i6, i7) + this.f7387X[i26] + f7379Y2;
            i5 = (i25 >>> 2) | (i25 << 30);
            i18++;
            i9 = i26 + 1;
        }
        int i27 = 0;
        while (i27 < 4) {
            int i28 = i9 + 1;
            int m974g = i7 + (((((i3 << 5) | (i3 >>> 27)) + m974g(i4, i5, i6)) + this.f7387X[i9]) - 1894007588);
            int i29 = (i4 >>> 2) | (i4 << 30);
            int m974g2 = m974g(i3, i29, i5);
            int i30 = i28 + 1;
            int i31 = i6 + (((((m974g << 5) | (m974g >>> 27)) + m974g2) + this.f7387X[i28]) - 1894007588);
            int i32 = (i3 >>> 2) | (i3 << 30);
            int m974g3 = m974g(m974g, i32, i29);
            int i33 = i30 + 1;
            int i34 = i5 + (((((i31 << 5) | (i31 >>> 27)) + m974g3) + this.f7387X[i30]) - 1894007588);
            i7 = (m974g >>> 2) | (m974g << 30);
            int m974g4 = m974g(i31, i7, i32);
            int i35 = i33 + 1;
            i4 = i29 + (((((i34 << 5) | (i34 >>> 27)) + m974g4) + this.f7387X[i33]) - 1894007588);
            i6 = (i31 >>> 2) | (i31 << 30);
            i3 = i32 + (((((i4 << 5) | (i4 >>> 27)) + m974g(i34, i6, i7)) + this.f7387X[i35]) - 1894007588);
            i5 = (i34 >>> 2) | (i34 << 30);
            i27++;
            i9 = i35 + 1;
        }
        int i36 = i9;
        int i37 = 0;
        while (i37 <= 3) {
            int i38 = i36 + 1;
            int m973h5 = i7 + (((((i3 << 5) | (i3 >>> 27)) + m973h(i4, i5, i6)) + this.f7387X[i36]) - 899497514);
            int i39 = (i4 >>> 2) | (i4 << 30);
            int m973h6 = m973h(i3, i39, i5);
            int i40 = i38 + 1;
            int i41 = i6 + (((((m973h5 << 5) | (m973h5 >>> 27)) + m973h6) + this.f7387X[i38]) - 899497514);
            int i42 = (i3 >>> 2) | (i3 << 30);
            int m973h7 = m973h(m973h5, i42, i39);
            int i43 = i40 + 1;
            int i44 = i5 + (((((i41 << 5) | (i41 >>> 27)) + m973h7) + this.f7387X[i40]) - 899497514);
            i7 = (m973h5 >>> 2) | (m973h5 << 30);
            int m973h8 = m973h(i41, i7, i42);
            int i45 = i43 + 1;
            i4 = i39 + (((((i44 << 5) | (i44 >>> 27)) + m973h8) + this.f7387X[i43]) - 899497514);
            i6 = (i41 >>> 2) | (i41 << 30);
            i3 = i42 + (((((i4 << 5) | (i4 >>> 27)) + m973h(i44, i6, i7)) + this.f7387X[i45]) - 899497514);
            i5 = (i44 >>> 2) | (i44 << 30);
            i37++;
            i36 = i45 + 1;
        }
        this.f7382H1 += i3;
        this.f7383H2 += i4;
        this.f7384H3 += i5;
        this.f7385H4 += i6;
        this.f7386H5 += i7;
        this.xOff = 0;
        for (int i46 = 0; i46 < 16; i46++) {
            this.f7387X[i46] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f7387X;
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
        int[] iArr = this.f7387X;
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
        this.f7382H1 = 1732584193;
        this.f7383H2 = -271733879;
        this.f7384H3 = -1732584194;
        this.f7385H4 = 271733878;
        this.f7386H5 = -1009589776;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7387X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
