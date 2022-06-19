package org.bouncycastle.crypto.digests;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/RIPEMD128Digest.class */
public class RIPEMD128Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 16;

    /* renamed from: H0 */
    private int f7347H0;

    /* renamed from: H1 */
    private int f7348H1;

    /* renamed from: H2 */
    private int f7349H2;

    /* renamed from: H3 */
    private int f7350H3;

    /* renamed from: X */
    private int[] f7351X;
    private int xOff;

    public RIPEMD128Digest() {
        this.f7351X = new int[16];
        reset();
    }

    public RIPEMD128Digest(RIPEMD128Digest rIPEMD128Digest) {
        super(rIPEMD128Digest);
        int[] iArr = new int[16];
        this.f7351X = iArr;
        this.f7347H0 = rIPEMD128Digest.f7347H0;
        this.f7348H1 = rIPEMD128Digest.f7348H1;
        this.f7349H2 = rIPEMD128Digest.f7349H2;
        this.f7350H3 = rIPEMD128Digest.f7350H3;
        int[] iArr2 = rIPEMD128Digest.f7351X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = rIPEMD128Digest.xOff;
    }

    /* renamed from: F1 */
    private int m1005F1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(i + m1000f1(i2, i3, i4) + i5, i6);
    }

    /* renamed from: F2 */
    private int m1004F2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(i + m999f2(i2, i3, i4) + i5 + 1518500249, i6);
    }

    /* renamed from: F3 */
    private int m1003F3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(i + m998f3(i2, i3, i4) + i5 + 1859775393, i6);
    }

    /* renamed from: F4 */
    private int m1002F4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(((i + m997f4(i2, i3, i4)) + i5) - 1894007588, i6);
    }

    private int FF1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(i + m1000f1(i2, i3, i4) + i5, i6);
    }

    private int FF2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(i + m999f2(i2, i3, i4) + i5 + 1836072691, i6);
    }

    private int FF3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(i + m998f3(i2, i3, i4) + i5 + 1548603684, i6);
    }

    private int FF4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m1001RL(i + m997f4(i2, i3, i4) + i5 + 1352829926, i6);
    }

    /* renamed from: RL */
    private int m1001RL(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: f1 */
    private int m1000f1(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: f2 */
    private int m999f2(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: f3 */
    private int m998f3(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: f4 */
    private int m997f4(int i, int i2, int i3) {
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
        unpackWord(this.f7347H0, bArr, i);
        unpackWord(this.f7348H1, bArr, i + 4);
        unpackWord(this.f7349H2, bArr, i + 8);
        unpackWord(this.f7350H3, bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD128";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int i = this.f7347H0;
        int i2 = this.f7348H1;
        int i3 = this.f7349H2;
        int i4 = this.f7350H3;
        int m1005F1 = m1005F1(i, i2, i3, i4, this.f7351X[0], 11);
        int m1005F12 = m1005F1(i4, m1005F1, i2, i3, this.f7351X[1], 14);
        int m1005F13 = m1005F1(i3, m1005F12, m1005F1, i2, this.f7351X[2], 15);
        int m1005F14 = m1005F1(i2, m1005F13, m1005F12, m1005F1, this.f7351X[3], 12);
        int m1005F15 = m1005F1(m1005F1, m1005F14, m1005F13, m1005F12, this.f7351X[4], 5);
        int m1005F16 = m1005F1(m1005F12, m1005F15, m1005F14, m1005F13, this.f7351X[5], 8);
        int m1005F17 = m1005F1(m1005F13, m1005F16, m1005F15, m1005F14, this.f7351X[6], 7);
        int m1005F18 = m1005F1(m1005F14, m1005F17, m1005F16, m1005F15, this.f7351X[7], 9);
        int m1005F19 = m1005F1(m1005F15, m1005F18, m1005F17, m1005F16, this.f7351X[8], 11);
        int m1005F110 = m1005F1(m1005F16, m1005F19, m1005F18, m1005F17, this.f7351X[9], 13);
        int m1005F111 = m1005F1(m1005F17, m1005F110, m1005F19, m1005F18, this.f7351X[10], 14);
        int m1005F112 = m1005F1(m1005F18, m1005F111, m1005F110, m1005F19, this.f7351X[11], 15);
        int m1005F113 = m1005F1(m1005F19, m1005F112, m1005F111, m1005F110, this.f7351X[12], 6);
        int m1005F114 = m1005F1(m1005F110, m1005F113, m1005F112, m1005F111, this.f7351X[13], 7);
        int m1005F115 = m1005F1(m1005F111, m1005F114, m1005F113, m1005F112, this.f7351X[14], 9);
        int m1005F116 = m1005F1(m1005F112, m1005F115, m1005F114, m1005F113, this.f7351X[15], 8);
        int m1004F2 = m1004F2(m1005F113, m1005F116, m1005F115, m1005F114, this.f7351X[7], 7);
        int m1004F22 = m1004F2(m1005F114, m1004F2, m1005F116, m1005F115, this.f7351X[4], 6);
        int m1004F23 = m1004F2(m1005F115, m1004F22, m1004F2, m1005F116, this.f7351X[13], 8);
        int m1004F24 = m1004F2(m1005F116, m1004F23, m1004F22, m1004F2, this.f7351X[1], 13);
        int m1004F25 = m1004F2(m1004F2, m1004F24, m1004F23, m1004F22, this.f7351X[10], 11);
        int m1004F26 = m1004F2(m1004F22, m1004F25, m1004F24, m1004F23, this.f7351X[6], 9);
        int m1004F27 = m1004F2(m1004F23, m1004F26, m1004F25, m1004F24, this.f7351X[15], 7);
        int m1004F28 = m1004F2(m1004F24, m1004F27, m1004F26, m1004F25, this.f7351X[3], 15);
        int m1004F29 = m1004F2(m1004F25, m1004F28, m1004F27, m1004F26, this.f7351X[12], 7);
        int m1004F210 = m1004F2(m1004F26, m1004F29, m1004F28, m1004F27, this.f7351X[0], 12);
        int m1004F211 = m1004F2(m1004F27, m1004F210, m1004F29, m1004F28, this.f7351X[9], 15);
        int m1004F212 = m1004F2(m1004F28, m1004F211, m1004F210, m1004F29, this.f7351X[5], 9);
        int m1004F213 = m1004F2(m1004F29, m1004F212, m1004F211, m1004F210, this.f7351X[2], 11);
        int m1004F214 = m1004F2(m1004F210, m1004F213, m1004F212, m1004F211, this.f7351X[14], 7);
        int m1004F215 = m1004F2(m1004F211, m1004F214, m1004F213, m1004F212, this.f7351X[11], 13);
        int m1004F216 = m1004F2(m1004F212, m1004F215, m1004F214, m1004F213, this.f7351X[8], 12);
        int m1003F3 = m1003F3(m1004F213, m1004F216, m1004F215, m1004F214, this.f7351X[3], 11);
        int m1003F32 = m1003F3(m1004F214, m1003F3, m1004F216, m1004F215, this.f7351X[10], 13);
        int m1003F33 = m1003F3(m1004F215, m1003F32, m1003F3, m1004F216, this.f7351X[14], 6);
        int m1003F34 = m1003F3(m1004F216, m1003F33, m1003F32, m1003F3, this.f7351X[4], 7);
        int m1003F35 = m1003F3(m1003F3, m1003F34, m1003F33, m1003F32, this.f7351X[9], 14);
        int m1003F36 = m1003F3(m1003F32, m1003F35, m1003F34, m1003F33, this.f7351X[15], 9);
        int m1003F37 = m1003F3(m1003F33, m1003F36, m1003F35, m1003F34, this.f7351X[8], 13);
        int m1003F38 = m1003F3(m1003F34, m1003F37, m1003F36, m1003F35, this.f7351X[1], 15);
        int m1003F39 = m1003F3(m1003F35, m1003F38, m1003F37, m1003F36, this.f7351X[2], 14);
        int m1003F310 = m1003F3(m1003F36, m1003F39, m1003F38, m1003F37, this.f7351X[7], 8);
        int m1003F311 = m1003F3(m1003F37, m1003F310, m1003F39, m1003F38, this.f7351X[0], 13);
        int m1003F312 = m1003F3(m1003F38, m1003F311, m1003F310, m1003F39, this.f7351X[6], 6);
        int m1003F313 = m1003F3(m1003F39, m1003F312, m1003F311, m1003F310, this.f7351X[13], 5);
        int m1003F314 = m1003F3(m1003F310, m1003F313, m1003F312, m1003F311, this.f7351X[11], 12);
        int m1003F315 = m1003F3(m1003F311, m1003F314, m1003F313, m1003F312, this.f7351X[5], 7);
        int m1003F316 = m1003F3(m1003F312, m1003F315, m1003F314, m1003F313, this.f7351X[12], 5);
        int m1002F4 = m1002F4(m1003F313, m1003F316, m1003F315, m1003F314, this.f7351X[1], 11);
        int m1002F42 = m1002F4(m1003F314, m1002F4, m1003F316, m1003F315, this.f7351X[9], 12);
        int m1002F43 = m1002F4(m1003F315, m1002F42, m1002F4, m1003F316, this.f7351X[11], 14);
        int m1002F44 = m1002F4(m1003F316, m1002F43, m1002F42, m1002F4, this.f7351X[10], 15);
        int m1002F45 = m1002F4(m1002F4, m1002F44, m1002F43, m1002F42, this.f7351X[0], 14);
        int m1002F46 = m1002F4(m1002F42, m1002F45, m1002F44, m1002F43, this.f7351X[8], 15);
        int m1002F47 = m1002F4(m1002F43, m1002F46, m1002F45, m1002F44, this.f7351X[12], 9);
        int m1002F48 = m1002F4(m1002F44, m1002F47, m1002F46, m1002F45, this.f7351X[4], 8);
        int m1002F49 = m1002F4(m1002F45, m1002F48, m1002F47, m1002F46, this.f7351X[13], 9);
        int m1002F410 = m1002F4(m1002F46, m1002F49, m1002F48, m1002F47, this.f7351X[3], 14);
        int m1002F411 = m1002F4(m1002F47, m1002F410, m1002F49, m1002F48, this.f7351X[7], 5);
        int m1002F412 = m1002F4(m1002F48, m1002F411, m1002F410, m1002F49, this.f7351X[15], 6);
        int m1002F413 = m1002F4(m1002F49, m1002F412, m1002F411, m1002F410, this.f7351X[14], 8);
        int m1002F414 = m1002F4(m1002F410, m1002F413, m1002F412, m1002F411, this.f7351X[5], 6);
        int m1002F415 = m1002F4(m1002F411, m1002F414, m1002F413, m1002F412, this.f7351X[6], 5);
        int m1002F416 = m1002F4(m1002F412, m1002F415, m1002F414, m1002F413, this.f7351X[2], 12);
        int FF4 = FF4(i, i2, i3, i4, this.f7351X[5], 8);
        int FF42 = FF4(i4, FF4, i2, i3, this.f7351X[14], 9);
        int FF43 = FF4(i3, FF42, FF4, i2, this.f7351X[7], 9);
        int FF44 = FF4(i2, FF43, FF42, FF4, this.f7351X[0], 11);
        int FF45 = FF4(FF4, FF44, FF43, FF42, this.f7351X[9], 13);
        int FF46 = FF4(FF42, FF45, FF44, FF43, this.f7351X[2], 15);
        int FF47 = FF4(FF43, FF46, FF45, FF44, this.f7351X[11], 15);
        int FF48 = FF4(FF44, FF47, FF46, FF45, this.f7351X[4], 5);
        int FF49 = FF4(FF45, FF48, FF47, FF46, this.f7351X[13], 7);
        int FF410 = FF4(FF46, FF49, FF48, FF47, this.f7351X[6], 7);
        int FF411 = FF4(FF47, FF410, FF49, FF48, this.f7351X[15], 8);
        int FF412 = FF4(FF48, FF411, FF410, FF49, this.f7351X[8], 11);
        int FF413 = FF4(FF49, FF412, FF411, FF410, this.f7351X[1], 14);
        int FF414 = FF4(FF410, FF413, FF412, FF411, this.f7351X[10], 14);
        int FF415 = FF4(FF411, FF414, FF413, FF412, this.f7351X[3], 12);
        int FF416 = FF4(FF412, FF415, FF414, FF413, this.f7351X[12], 6);
        int FF3 = FF3(FF413, FF416, FF415, FF414, this.f7351X[6], 9);
        int FF32 = FF3(FF414, FF3, FF416, FF415, this.f7351X[11], 13);
        int FF33 = FF3(FF415, FF32, FF3, FF416, this.f7351X[3], 15);
        int FF34 = FF3(FF416, FF33, FF32, FF3, this.f7351X[7], 7);
        int FF35 = FF3(FF3, FF34, FF33, FF32, this.f7351X[0], 12);
        int FF36 = FF3(FF32, FF35, FF34, FF33, this.f7351X[13], 8);
        int FF37 = FF3(FF33, FF36, FF35, FF34, this.f7351X[5], 9);
        int FF38 = FF3(FF34, FF37, FF36, FF35, this.f7351X[10], 11);
        int FF39 = FF3(FF35, FF38, FF37, FF36, this.f7351X[14], 7);
        int FF310 = FF3(FF36, FF39, FF38, FF37, this.f7351X[15], 7);
        int FF311 = FF3(FF37, FF310, FF39, FF38, this.f7351X[8], 12);
        int FF312 = FF3(FF38, FF311, FF310, FF39, this.f7351X[12], 7);
        int FF313 = FF3(FF39, FF312, FF311, FF310, this.f7351X[4], 6);
        int FF314 = FF3(FF310, FF313, FF312, FF311, this.f7351X[9], 15);
        int FF315 = FF3(FF311, FF314, FF313, FF312, this.f7351X[1], 13);
        int FF316 = FF3(FF312, FF315, FF314, FF313, this.f7351X[2], 11);
        int FF2 = FF2(FF313, FF316, FF315, FF314, this.f7351X[15], 9);
        int FF22 = FF2(FF314, FF2, FF316, FF315, this.f7351X[5], 7);
        int FF23 = FF2(FF315, FF22, FF2, FF316, this.f7351X[1], 15);
        int FF24 = FF2(FF316, FF23, FF22, FF2, this.f7351X[3], 11);
        int FF25 = FF2(FF2, FF24, FF23, FF22, this.f7351X[7], 8);
        int FF26 = FF2(FF22, FF25, FF24, FF23, this.f7351X[14], 6);
        int FF27 = FF2(FF23, FF26, FF25, FF24, this.f7351X[6], 6);
        int FF28 = FF2(FF24, FF27, FF26, FF25, this.f7351X[9], 14);
        int FF29 = FF2(FF25, FF28, FF27, FF26, this.f7351X[11], 12);
        int FF210 = FF2(FF26, FF29, FF28, FF27, this.f7351X[8], 13);
        int FF211 = FF2(FF27, FF210, FF29, FF28, this.f7351X[12], 5);
        int FF212 = FF2(FF28, FF211, FF210, FF29, this.f7351X[2], 14);
        int FF213 = FF2(FF29, FF212, FF211, FF210, this.f7351X[10], 13);
        int FF214 = FF2(FF210, FF213, FF212, FF211, this.f7351X[0], 13);
        int FF215 = FF2(FF211, FF214, FF213, FF212, this.f7351X[4], 7);
        int FF216 = FF2(FF212, FF215, FF214, FF213, this.f7351X[13], 5);
        int FF1 = FF1(FF213, FF216, FF215, FF214, this.f7351X[8], 15);
        int FF12 = FF1(FF214, FF1, FF216, FF215, this.f7351X[6], 5);
        int FF13 = FF1(FF215, FF12, FF1, FF216, this.f7351X[4], 8);
        int FF14 = FF1(FF216, FF13, FF12, FF1, this.f7351X[1], 11);
        int FF15 = FF1(FF1, FF14, FF13, FF12, this.f7351X[3], 14);
        int FF16 = FF1(FF12, FF15, FF14, FF13, this.f7351X[11], 14);
        int FF17 = FF1(FF13, FF16, FF15, FF14, this.f7351X[15], 6);
        int FF18 = FF1(FF14, FF17, FF16, FF15, this.f7351X[0], 14);
        int FF19 = FF1(FF15, FF18, FF17, FF16, this.f7351X[5], 6);
        int FF110 = FF1(FF16, FF19, FF18, FF17, this.f7351X[12], 9);
        int FF111 = FF1(FF17, FF110, FF19, FF18, this.f7351X[2], 12);
        int FF112 = FF1(FF18, FF111, FF110, FF19, this.f7351X[13], 9);
        int FF113 = FF1(FF19, FF112, FF111, FF110, this.f7351X[9], 12);
        int FF114 = FF1(FF110, FF113, FF112, FF111, this.f7351X[7], 5);
        int FF115 = FF1(FF111, FF114, FF113, FF112, this.f7351X[10], 15);
        int FF116 = FF1(FF112, FF115, FF114, FF113, this.f7351X[14], 8);
        int i5 = this.f7348H1;
        this.f7348H1 = this.f7349H2 + m1002F414 + FF113;
        this.f7349H2 = this.f7350H3 + m1002F413 + FF116;
        this.f7350H3 = this.f7347H0 + m1002F416 + FF115;
        this.f7347H0 = FF114 + m1002F415 + i5;
        this.xOff = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.f7351X;
            if (i6 != iArr.length) {
                iArr[i6] = 0;
                i6++;
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
        int[] iArr = this.f7351X;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i) {
        int[] iArr = this.f7351X;
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
        this.f7347H0 = 1732584193;
        this.f7348H1 = -271733879;
        this.f7349H2 = -1732584194;
        this.f7350H3 = 271733878;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7351X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
