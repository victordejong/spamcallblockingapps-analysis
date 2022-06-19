package org.bouncycastle.crypto.digests;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/MD4Digest.class */
public class MD4Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 16;
    private static final int S11 = 3;
    private static final int S12 = 7;
    private static final int S13 = 11;
    private static final int S14 = 19;
    private static final int S21 = 3;
    private static final int S22 = 5;
    private static final int S23 = 9;
    private static final int S24 = 13;
    private static final int S31 = 3;
    private static final int S32 = 9;
    private static final int S33 = 11;
    private static final int S34 = 15;

    /* renamed from: H1 */
    private int f7337H1;

    /* renamed from: H2 */
    private int f7338H2;

    /* renamed from: H3 */
    private int f7339H3;

    /* renamed from: H4 */
    private int f7340H4;

    /* renamed from: X */
    private int[] f7341X;
    private int xOff;

    public MD4Digest() {
        this.f7341X = new int[16];
        reset();
    }

    public MD4Digest(MD4Digest mD4Digest) {
        super(mD4Digest);
        int[] iArr = new int[16];
        this.f7341X = iArr;
        this.f7337H1 = mD4Digest.f7337H1;
        this.f7338H2 = mD4Digest.f7338H2;
        this.f7339H3 = mD4Digest.f7339H3;
        this.f7340H4 = mD4Digest.f7340H4;
        int[] iArr2 = mD4Digest.f7341X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = mD4Digest.xOff;
    }

    /* renamed from: F */
    private int m1012F(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: G */
    private int m1011G(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    /* renamed from: H */
    private int m1010H(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    private int rotateLeft(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
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
        unpackWord(this.f7337H1, bArr, i);
        unpackWord(this.f7338H2, bArr, i + 4);
        unpackWord(this.f7339H3, bArr, i + 8);
        unpackWord(this.f7340H4, bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD4";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int i = this.f7337H1;
        int i2 = this.f7338H2;
        int i3 = this.f7339H3;
        int i4 = this.f7340H4;
        int rotateLeft = rotateLeft(i + m1012F(i2, i3, i4) + this.f7341X[0], 3);
        int rotateLeft2 = rotateLeft(i4 + m1012F(rotateLeft, i2, i3) + this.f7341X[1], 7);
        int rotateLeft3 = rotateLeft(i3 + m1012F(rotateLeft2, rotateLeft, i2) + this.f7341X[2], 11);
        int rotateLeft4 = rotateLeft(i2 + m1012F(rotateLeft3, rotateLeft2, rotateLeft) + this.f7341X[3], 19);
        int rotateLeft5 = rotateLeft(rotateLeft + m1012F(rotateLeft4, rotateLeft3, rotateLeft2) + this.f7341X[4], 3);
        int rotateLeft6 = rotateLeft(rotateLeft2 + m1012F(rotateLeft5, rotateLeft4, rotateLeft3) + this.f7341X[5], 7);
        int rotateLeft7 = rotateLeft(rotateLeft3 + m1012F(rotateLeft6, rotateLeft5, rotateLeft4) + this.f7341X[6], 11);
        int rotateLeft8 = rotateLeft(rotateLeft4 + m1012F(rotateLeft7, rotateLeft6, rotateLeft5) + this.f7341X[7], 19);
        int rotateLeft9 = rotateLeft(rotateLeft5 + m1012F(rotateLeft8, rotateLeft7, rotateLeft6) + this.f7341X[8], 3);
        int rotateLeft10 = rotateLeft(rotateLeft6 + m1012F(rotateLeft9, rotateLeft8, rotateLeft7) + this.f7341X[9], 7);
        int rotateLeft11 = rotateLeft(rotateLeft7 + m1012F(rotateLeft10, rotateLeft9, rotateLeft8) + this.f7341X[10], 11);
        int rotateLeft12 = rotateLeft(rotateLeft8 + m1012F(rotateLeft11, rotateLeft10, rotateLeft9) + this.f7341X[11], 19);
        int rotateLeft13 = rotateLeft(rotateLeft9 + m1012F(rotateLeft12, rotateLeft11, rotateLeft10) + this.f7341X[12], 3);
        int rotateLeft14 = rotateLeft(rotateLeft10 + m1012F(rotateLeft13, rotateLeft12, rotateLeft11) + this.f7341X[13], 7);
        int rotateLeft15 = rotateLeft(rotateLeft11 + m1012F(rotateLeft14, rotateLeft13, rotateLeft12) + this.f7341X[14], 11);
        int rotateLeft16 = rotateLeft(rotateLeft12 + m1012F(rotateLeft15, rotateLeft14, rotateLeft13) + this.f7341X[15], 19);
        int rotateLeft17 = rotateLeft(rotateLeft13 + m1011G(rotateLeft16, rotateLeft15, rotateLeft14) + this.f7341X[0] + 1518500249, 3);
        int rotateLeft18 = rotateLeft(rotateLeft14 + m1011G(rotateLeft17, rotateLeft16, rotateLeft15) + this.f7341X[4] + 1518500249, 5);
        int rotateLeft19 = rotateLeft(rotateLeft15 + m1011G(rotateLeft18, rotateLeft17, rotateLeft16) + this.f7341X[8] + 1518500249, 9);
        int rotateLeft20 = rotateLeft(rotateLeft16 + m1011G(rotateLeft19, rotateLeft18, rotateLeft17) + this.f7341X[12] + 1518500249, 13);
        int rotateLeft21 = rotateLeft(rotateLeft17 + m1011G(rotateLeft20, rotateLeft19, rotateLeft18) + this.f7341X[1] + 1518500249, 3);
        int rotateLeft22 = rotateLeft(rotateLeft18 + m1011G(rotateLeft21, rotateLeft20, rotateLeft19) + this.f7341X[5] + 1518500249, 5);
        int rotateLeft23 = rotateLeft(rotateLeft19 + m1011G(rotateLeft22, rotateLeft21, rotateLeft20) + this.f7341X[9] + 1518500249, 9);
        int rotateLeft24 = rotateLeft(rotateLeft20 + m1011G(rotateLeft23, rotateLeft22, rotateLeft21) + this.f7341X[13] + 1518500249, 13);
        int rotateLeft25 = rotateLeft(rotateLeft21 + m1011G(rotateLeft24, rotateLeft23, rotateLeft22) + this.f7341X[2] + 1518500249, 3);
        int rotateLeft26 = rotateLeft(rotateLeft22 + m1011G(rotateLeft25, rotateLeft24, rotateLeft23) + this.f7341X[6] + 1518500249, 5);
        int rotateLeft27 = rotateLeft(rotateLeft23 + m1011G(rotateLeft26, rotateLeft25, rotateLeft24) + this.f7341X[10] + 1518500249, 9);
        int rotateLeft28 = rotateLeft(rotateLeft24 + m1011G(rotateLeft27, rotateLeft26, rotateLeft25) + this.f7341X[14] + 1518500249, 13);
        int rotateLeft29 = rotateLeft(rotateLeft25 + m1011G(rotateLeft28, rotateLeft27, rotateLeft26) + this.f7341X[3] + 1518500249, 3);
        int rotateLeft30 = rotateLeft(rotateLeft26 + m1011G(rotateLeft29, rotateLeft28, rotateLeft27) + this.f7341X[7] + 1518500249, 5);
        int rotateLeft31 = rotateLeft(rotateLeft27 + m1011G(rotateLeft30, rotateLeft29, rotateLeft28) + this.f7341X[11] + 1518500249, 9);
        int rotateLeft32 = rotateLeft(rotateLeft28 + m1011G(rotateLeft31, rotateLeft30, rotateLeft29) + this.f7341X[15] + 1518500249, 13);
        int rotateLeft33 = rotateLeft(rotateLeft29 + m1010H(rotateLeft32, rotateLeft31, rotateLeft30) + this.f7341X[0] + 1859775393, 3);
        int rotateLeft34 = rotateLeft(rotateLeft30 + m1010H(rotateLeft33, rotateLeft32, rotateLeft31) + this.f7341X[8] + 1859775393, 9);
        int rotateLeft35 = rotateLeft(rotateLeft31 + m1010H(rotateLeft34, rotateLeft33, rotateLeft32) + this.f7341X[4] + 1859775393, 11);
        int rotateLeft36 = rotateLeft(rotateLeft32 + m1010H(rotateLeft35, rotateLeft34, rotateLeft33) + this.f7341X[12] + 1859775393, 15);
        int rotateLeft37 = rotateLeft(rotateLeft33 + m1010H(rotateLeft36, rotateLeft35, rotateLeft34) + this.f7341X[2] + 1859775393, 3);
        int rotateLeft38 = rotateLeft(rotateLeft34 + m1010H(rotateLeft37, rotateLeft36, rotateLeft35) + this.f7341X[10] + 1859775393, 9);
        int rotateLeft39 = rotateLeft(rotateLeft35 + m1010H(rotateLeft38, rotateLeft37, rotateLeft36) + this.f7341X[6] + 1859775393, 11);
        int rotateLeft40 = rotateLeft(rotateLeft36 + m1010H(rotateLeft39, rotateLeft38, rotateLeft37) + this.f7341X[14] + 1859775393, 15);
        int rotateLeft41 = rotateLeft(rotateLeft37 + m1010H(rotateLeft40, rotateLeft39, rotateLeft38) + this.f7341X[1] + 1859775393, 3);
        int rotateLeft42 = rotateLeft(rotateLeft38 + m1010H(rotateLeft41, rotateLeft40, rotateLeft39) + this.f7341X[9] + 1859775393, 9);
        int rotateLeft43 = rotateLeft(rotateLeft39 + m1010H(rotateLeft42, rotateLeft41, rotateLeft40) + this.f7341X[5] + 1859775393, 11);
        int rotateLeft44 = rotateLeft(rotateLeft40 + m1010H(rotateLeft43, rotateLeft42, rotateLeft41) + this.f7341X[13] + 1859775393, 15);
        int rotateLeft45 = rotateLeft(rotateLeft41 + m1010H(rotateLeft44, rotateLeft43, rotateLeft42) + this.f7341X[3] + 1859775393, 3);
        int rotateLeft46 = rotateLeft(rotateLeft42 + m1010H(rotateLeft45, rotateLeft44, rotateLeft43) + this.f7341X[11] + 1859775393, 9);
        int rotateLeft47 = rotateLeft(rotateLeft43 + m1010H(rotateLeft46, rotateLeft45, rotateLeft44) + this.f7341X[7] + 1859775393, 11);
        int rotateLeft48 = rotateLeft(rotateLeft44 + m1010H(rotateLeft47, rotateLeft46, rotateLeft45) + this.f7341X[15] + 1859775393, 15);
        this.f7337H1 += rotateLeft45;
        this.f7338H2 += rotateLeft48;
        this.f7339H3 += rotateLeft47;
        this.f7340H4 += rotateLeft46;
        this.xOff = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.f7341X;
            if (i5 != iArr.length) {
                iArr[i5] = 0;
                i5++;
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
        int[] iArr = this.f7341X;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i) {
        int[] iArr = this.f7341X;
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
        this.f7337H1 = 1732584193;
        this.f7338H2 = -271733879;
        this.f7339H3 = -1732584194;
        this.f7340H4 = 271733878;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7341X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
