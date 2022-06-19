package org.bouncycastle.crypto.digests;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/RIPEMD256Digest.class */
public class RIPEMD256Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 32;

    /* renamed from: H0 */
    private int f7358H0;

    /* renamed from: H1 */
    private int f7359H1;

    /* renamed from: H2 */
    private int f7360H2;

    /* renamed from: H3 */
    private int f7361H3;

    /* renamed from: H4 */
    private int f7362H4;

    /* renamed from: H5 */
    private int f7363H5;

    /* renamed from: H6 */
    private int f7364H6;

    /* renamed from: H7 */
    private int f7365H7;

    /* renamed from: X */
    private int[] f7366X;
    private int xOff;

    public RIPEMD256Digest() {
        this.f7366X = new int[16];
        reset();
    }

    public RIPEMD256Digest(RIPEMD256Digest rIPEMD256Digest) {
        super(rIPEMD256Digest);
        int[] iArr = new int[16];
        this.f7366X = iArr;
        this.f7358H0 = rIPEMD256Digest.f7358H0;
        this.f7359H1 = rIPEMD256Digest.f7359H1;
        this.f7360H2 = rIPEMD256Digest.f7360H2;
        this.f7361H3 = rIPEMD256Digest.f7361H3;
        this.f7362H4 = rIPEMD256Digest.f7362H4;
        this.f7363H5 = rIPEMD256Digest.f7363H5;
        this.f7364H6 = rIPEMD256Digest.f7364H6;
        this.f7365H7 = rIPEMD256Digest.f7365H7;
        int[] iArr2 = rIPEMD256Digest.f7366X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = rIPEMD256Digest.xOff;
    }

    /* renamed from: F1 */
    private int m990F1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(i + m985f1(i2, i3, i4) + i5, i6);
    }

    /* renamed from: F2 */
    private int m989F2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(i + m984f2(i2, i3, i4) + i5 + 1518500249, i6);
    }

    /* renamed from: F3 */
    private int m988F3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(i + m983f3(i2, i3, i4) + i5 + 1859775393, i6);
    }

    /* renamed from: F4 */
    private int m987F4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(((i + m982f4(i2, i3, i4)) + i5) - 1894007588, i6);
    }

    private int FF1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(i + m985f1(i2, i3, i4) + i5, i6);
    }

    private int FF2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(i + m984f2(i2, i3, i4) + i5 + 1836072691, i6);
    }

    private int FF3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(i + m983f3(i2, i3, i4) + i5 + 1548603684, i6);
    }

    private int FF4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m986RL(i + m982f4(i2, i3, i4) + i5 + 1352829926, i6);
    }

    /* renamed from: RL */
    private int m986RL(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: f1 */
    private int m985f1(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: f2 */
    private int m984f2(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: f3 */
    private int m983f3(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: f4 */
    private int m982f4(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    private void unpackWord(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        unpackWord(this.f7358H0, bArr, i);
        unpackWord(this.f7359H1, bArr, i + 4);
        unpackWord(this.f7360H2, bArr, i + 8);
        unpackWord(this.f7361H3, bArr, i + 12);
        unpackWord(this.f7362H4, bArr, i + 16);
        unpackWord(this.f7363H5, bArr, i + 20);
        unpackWord(this.f7364H6, bArr, i + 24);
        unpackWord(this.f7365H7, bArr, i + 28);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD256";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int i = this.f7358H0;
        int i2 = this.f7359H1;
        int i3 = this.f7360H2;
        int i4 = this.f7361H3;
        int i5 = this.f7362H4;
        int i6 = this.f7363H5;
        int i7 = this.f7364H6;
        int i8 = this.f7365H7;
        int m990F1 = m990F1(i, i2, i3, i4, this.f7366X[0], 11);
        int m990F12 = m990F1(i4, m990F1, i2, i3, this.f7366X[1], 14);
        int m990F13 = m990F1(i3, m990F12, m990F1, i2, this.f7366X[2], 15);
        int m990F14 = m990F1(i2, m990F13, m990F12, m990F1, this.f7366X[3], 12);
        int m990F15 = m990F1(m990F1, m990F14, m990F13, m990F12, this.f7366X[4], 5);
        int m990F16 = m990F1(m990F12, m990F15, m990F14, m990F13, this.f7366X[5], 8);
        int m990F17 = m990F1(m990F13, m990F16, m990F15, m990F14, this.f7366X[6], 7);
        int m990F18 = m990F1(m990F14, m990F17, m990F16, m990F15, this.f7366X[7], 9);
        int m990F19 = m990F1(m990F15, m990F18, m990F17, m990F16, this.f7366X[8], 11);
        int m990F110 = m990F1(m990F16, m990F19, m990F18, m990F17, this.f7366X[9], 13);
        int m990F111 = m990F1(m990F17, m990F110, m990F19, m990F18, this.f7366X[10], 14);
        int m990F112 = m990F1(m990F18, m990F111, m990F110, m990F19, this.f7366X[11], 15);
        int m990F113 = m990F1(m990F19, m990F112, m990F111, m990F110, this.f7366X[12], 6);
        int m990F114 = m990F1(m990F110, m990F113, m990F112, m990F111, this.f7366X[13], 7);
        int m990F115 = m990F1(m990F111, m990F114, m990F113, m990F112, this.f7366X[14], 9);
        int m990F116 = m990F1(m990F112, m990F115, m990F114, m990F113, this.f7366X[15], 8);
        int FF4 = FF4(i5, i6, i7, i8, this.f7366X[5], 8);
        int FF42 = FF4(i8, FF4, i6, i7, this.f7366X[14], 9);
        int FF43 = FF4(i7, FF42, FF4, i6, this.f7366X[7], 9);
        int FF44 = FF4(i6, FF43, FF42, FF4, this.f7366X[0], 11);
        int FF45 = FF4(FF4, FF44, FF43, FF42, this.f7366X[9], 13);
        int FF46 = FF4(FF42, FF45, FF44, FF43, this.f7366X[2], 15);
        int FF47 = FF4(FF43, FF46, FF45, FF44, this.f7366X[11], 15);
        int FF48 = FF4(FF44, FF47, FF46, FF45, this.f7366X[4], 5);
        int FF49 = FF4(FF45, FF48, FF47, FF46, this.f7366X[13], 7);
        int FF410 = FF4(FF46, FF49, FF48, FF47, this.f7366X[6], 7);
        int FF411 = FF4(FF47, FF410, FF49, FF48, this.f7366X[15], 8);
        int FF412 = FF4(FF48, FF411, FF410, FF49, this.f7366X[8], 11);
        int FF413 = FF4(FF49, FF412, FF411, FF410, this.f7366X[1], 14);
        int FF414 = FF4(FF410, FF413, FF412, FF411, this.f7366X[10], 14);
        int FF415 = FF4(FF411, FF414, FF413, FF412, this.f7366X[3], 12);
        int FF416 = FF4(FF412, FF415, FF414, FF413, this.f7366X[12], 6);
        int m989F2 = m989F2(FF413, m990F116, m990F115, m990F114, this.f7366X[7], 7);
        int m989F22 = m989F2(m990F114, m989F2, m990F116, m990F115, this.f7366X[4], 6);
        int m989F23 = m989F2(m990F115, m989F22, m989F2, m990F116, this.f7366X[13], 8);
        int m989F24 = m989F2(m990F116, m989F23, m989F22, m989F2, this.f7366X[1], 13);
        int m989F25 = m989F2(m989F2, m989F24, m989F23, m989F22, this.f7366X[10], 11);
        int m989F26 = m989F2(m989F22, m989F25, m989F24, m989F23, this.f7366X[6], 9);
        int m989F27 = m989F2(m989F23, m989F26, m989F25, m989F24, this.f7366X[15], 7);
        int m989F28 = m989F2(m989F24, m989F27, m989F26, m989F25, this.f7366X[3], 15);
        int m989F29 = m989F2(m989F25, m989F28, m989F27, m989F26, this.f7366X[12], 7);
        int m989F210 = m989F2(m989F26, m989F29, m989F28, m989F27, this.f7366X[0], 12);
        int m989F211 = m989F2(m989F27, m989F210, m989F29, m989F28, this.f7366X[9], 15);
        int m989F212 = m989F2(m989F28, m989F211, m989F210, m989F29, this.f7366X[5], 9);
        int m989F213 = m989F2(m989F29, m989F212, m989F211, m989F210, this.f7366X[2], 11);
        int m989F214 = m989F2(m989F210, m989F213, m989F212, m989F211, this.f7366X[14], 7);
        int m989F215 = m989F2(m989F211, m989F214, m989F213, m989F212, this.f7366X[11], 13);
        int m989F216 = m989F2(m989F212, m989F215, m989F214, m989F213, this.f7366X[8], 12);
        int FF3 = FF3(m990F113, FF416, FF415, FF414, this.f7366X[6], 9);
        int FF32 = FF3(FF414, FF3, FF416, FF415, this.f7366X[11], 13);
        int FF33 = FF3(FF415, FF32, FF3, FF416, this.f7366X[3], 15);
        int FF34 = FF3(FF416, FF33, FF32, FF3, this.f7366X[7], 7);
        int FF35 = FF3(FF3, FF34, FF33, FF32, this.f7366X[0], 12);
        int FF36 = FF3(FF32, FF35, FF34, FF33, this.f7366X[13], 8);
        int FF37 = FF3(FF33, FF36, FF35, FF34, this.f7366X[5], 9);
        int FF38 = FF3(FF34, FF37, FF36, FF35, this.f7366X[10], 11);
        int FF39 = FF3(FF35, FF38, FF37, FF36, this.f7366X[14], 7);
        int FF310 = FF3(FF36, FF39, FF38, FF37, this.f7366X[15], 7);
        int FF311 = FF3(FF37, FF310, FF39, FF38, this.f7366X[8], 12);
        int FF312 = FF3(FF38, FF311, FF310, FF39, this.f7366X[12], 7);
        int FF313 = FF3(FF39, FF312, FF311, FF310, this.f7366X[4], 6);
        int FF314 = FF3(FF310, FF313, FF312, FF311, this.f7366X[9], 15);
        int FF315 = FF3(FF311, FF314, FF313, FF312, this.f7366X[1], 13);
        int FF316 = FF3(FF312, FF315, FF314, FF313, this.f7366X[2], 11);
        int m988F3 = m988F3(m989F213, FF316, m989F215, m989F214, this.f7366X[3], 11);
        int m988F32 = m988F3(m989F214, m988F3, FF316, m989F215, this.f7366X[10], 13);
        int m988F33 = m988F3(m989F215, m988F32, m988F3, FF316, this.f7366X[14], 6);
        int m988F34 = m988F3(FF316, m988F33, m988F32, m988F3, this.f7366X[4], 7);
        int m988F35 = m988F3(m988F3, m988F34, m988F33, m988F32, this.f7366X[9], 14);
        int m988F36 = m988F3(m988F32, m988F35, m988F34, m988F33, this.f7366X[15], 9);
        int m988F37 = m988F3(m988F33, m988F36, m988F35, m988F34, this.f7366X[8], 13);
        int m988F38 = m988F3(m988F34, m988F37, m988F36, m988F35, this.f7366X[1], 15);
        int m988F39 = m988F3(m988F35, m988F38, m988F37, m988F36, this.f7366X[2], 14);
        int m988F310 = m988F3(m988F36, m988F39, m988F38, m988F37, this.f7366X[7], 8);
        int m988F311 = m988F3(m988F37, m988F310, m988F39, m988F38, this.f7366X[0], 13);
        int m988F312 = m988F3(m988F38, m988F311, m988F310, m988F39, this.f7366X[6], 6);
        int m988F313 = m988F3(m988F39, m988F312, m988F311, m988F310, this.f7366X[13], 5);
        int m988F314 = m988F3(m988F310, m988F313, m988F312, m988F311, this.f7366X[11], 12);
        int m988F315 = m988F3(m988F311, m988F314, m988F313, m988F312, this.f7366X[5], 7);
        int m988F316 = m988F3(m988F312, m988F315, m988F314, m988F313, this.f7366X[12], 5);
        int FF2 = FF2(FF313, m989F216, FF315, FF314, this.f7366X[15], 9);
        int FF22 = FF2(FF314, FF2, m989F216, FF315, this.f7366X[5], 7);
        int FF23 = FF2(FF315, FF22, FF2, m989F216, this.f7366X[1], 15);
        int FF24 = FF2(m989F216, FF23, FF22, FF2, this.f7366X[3], 11);
        int FF25 = FF2(FF2, FF24, FF23, FF22, this.f7366X[7], 8);
        int FF26 = FF2(FF22, FF25, FF24, FF23, this.f7366X[14], 6);
        int FF27 = FF2(FF23, FF26, FF25, FF24, this.f7366X[6], 6);
        int FF28 = FF2(FF24, FF27, FF26, FF25, this.f7366X[9], 14);
        int FF29 = FF2(FF25, FF28, FF27, FF26, this.f7366X[11], 12);
        int FF210 = FF2(FF26, FF29, FF28, FF27, this.f7366X[8], 13);
        int FF211 = FF2(FF27, FF210, FF29, FF28, this.f7366X[12], 5);
        int FF212 = FF2(FF28, FF211, FF210, FF29, this.f7366X[2], 14);
        int FF213 = FF2(FF29, FF212, FF211, FF210, this.f7366X[10], 13);
        int FF214 = FF2(FF210, FF213, FF212, FF211, this.f7366X[0], 13);
        int FF215 = FF2(FF211, FF214, FF213, FF212, this.f7366X[4], 7);
        int FF216 = FF2(FF212, FF215, FF214, FF213, this.f7366X[13], 5);
        int m987F4 = m987F4(m988F313, m988F316, FF215, m988F314, this.f7366X[1], 11);
        int m987F42 = m987F4(m988F314, m987F4, m988F316, FF215, this.f7366X[9], 12);
        int m987F43 = m987F4(FF215, m987F42, m987F4, m988F316, this.f7366X[11], 14);
        int m987F44 = m987F4(m988F316, m987F43, m987F42, m987F4, this.f7366X[10], 15);
        int m987F45 = m987F4(m987F4, m987F44, m987F43, m987F42, this.f7366X[0], 14);
        int m987F46 = m987F4(m987F42, m987F45, m987F44, m987F43, this.f7366X[8], 15);
        int m987F47 = m987F4(m987F43, m987F46, m987F45, m987F44, this.f7366X[12], 9);
        int m987F48 = m987F4(m987F44, m987F47, m987F46, m987F45, this.f7366X[4], 8);
        int m987F49 = m987F4(m987F45, m987F48, m987F47, m987F46, this.f7366X[13], 9);
        int m987F410 = m987F4(m987F46, m987F49, m987F48, m987F47, this.f7366X[3], 14);
        int m987F411 = m987F4(m987F47, m987F410, m987F49, m987F48, this.f7366X[7], 5);
        int m987F412 = m987F4(m987F48, m987F411, m987F410, m987F49, this.f7366X[15], 6);
        int m987F413 = m987F4(m987F49, m987F412, m987F411, m987F410, this.f7366X[14], 8);
        int m987F414 = m987F4(m987F410, m987F413, m987F412, m987F411, this.f7366X[5], 6);
        int m987F415 = m987F4(m987F411, m987F414, m987F413, m987F412, this.f7366X[6], 5);
        int m987F416 = m987F4(m987F412, m987F415, m987F414, m987F413, this.f7366X[2], 12);
        int FF1 = FF1(FF213, FF216, m988F315, FF214, this.f7366X[8], 15);
        int FF12 = FF1(FF214, FF1, FF216, m988F315, this.f7366X[6], 5);
        int FF13 = FF1(m988F315, FF12, FF1, FF216, this.f7366X[4], 8);
        int FF14 = FF1(FF216, FF13, FF12, FF1, this.f7366X[1], 11);
        int FF15 = FF1(FF1, FF14, FF13, FF12, this.f7366X[3], 14);
        int FF16 = FF1(FF12, FF15, FF14, FF13, this.f7366X[11], 14);
        int FF17 = FF1(FF13, FF16, FF15, FF14, this.f7366X[15], 6);
        int FF18 = FF1(FF14, FF17, FF16, FF15, this.f7366X[0], 14);
        int FF19 = FF1(FF15, FF18, FF17, FF16, this.f7366X[5], 6);
        int FF110 = FF1(FF16, FF19, FF18, FF17, this.f7366X[12], 9);
        int FF111 = FF1(FF17, FF110, FF19, FF18, this.f7366X[2], 12);
        int FF112 = FF1(FF18, FF111, FF110, FF19, this.f7366X[13], 9);
        int FF113 = FF1(FF19, FF112, FF111, FF110, this.f7366X[9], 12);
        int FF114 = FF1(FF110, FF113, FF112, FF111, this.f7366X[7], 5);
        int FF115 = FF1(FF111, FF114, FF113, FF112, this.f7366X[10], 15);
        int FF116 = FF1(FF112, FF115, FF114, FF113, this.f7366X[14], 8);
        this.f7358H0 += m987F413;
        this.f7359H1 += m987F416;
        this.f7360H2 += m987F415;
        this.f7361H3 += FF114;
        this.f7362H4 += FF113;
        this.f7363H5 += FF116;
        this.f7364H6 += FF115;
        this.f7365H7 += m987F414;
        this.xOff = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f7366X;
            if (i9 != iArr.length) {
                iArr[i9] = 0;
                i9++;
            } else {
                return;
            }
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f7366X;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i) {
        int[] iArr = this.f7366X;
        int i2 = this.xOff;
        int i3 = i2 + 1;
        this.xOff = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f7358H0 = 1732584193;
        this.f7359H1 = -271733879;
        this.f7360H2 = -1732584194;
        this.f7361H3 = 271733878;
        this.f7362H4 = 1985229328;
        this.f7363H5 = -19088744;
        this.f7364H6 = -1985229329;
        this.f7365H7 = 19088743;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7366X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
