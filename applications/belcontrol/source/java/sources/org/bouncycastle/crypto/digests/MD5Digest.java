package org.bouncycastle.crypto.digests;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/MD5Digest.class */
public class MD5Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 16;
    private static final int S11 = 7;
    private static final int S12 = 12;
    private static final int S13 = 17;
    private static final int S14 = 22;
    private static final int S21 = 5;
    private static final int S22 = 9;
    private static final int S23 = 14;
    private static final int S24 = 20;
    private static final int S31 = 4;
    private static final int S32 = 11;
    private static final int S33 = 16;
    private static final int S34 = 23;
    private static final int S41 = 6;
    private static final int S42 = 10;
    private static final int S43 = 15;
    private static final int S44 = 21;

    /* renamed from: H1 */
    private int f7342H1;

    /* renamed from: H2 */
    private int f7343H2;

    /* renamed from: H3 */
    private int f7344H3;

    /* renamed from: H4 */
    private int f7345H4;

    /* renamed from: X */
    private int[] f7346X;
    private int xOff;

    public MD5Digest() {
        this.f7346X = new int[16];
        reset();
    }

    public MD5Digest(MD5Digest mD5Digest) {
        super(mD5Digest);
        int[] iArr = new int[16];
        this.f7346X = iArr;
        this.f7342H1 = mD5Digest.f7342H1;
        this.f7343H2 = mD5Digest.f7343H2;
        this.f7344H3 = mD5Digest.f7344H3;
        this.f7345H4 = mD5Digest.f7345H4;
        int[] iArr2 = mD5Digest.f7346X;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.xOff = mD5Digest.xOff;
    }

    /* renamed from: F */
    private int m1009F(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: G */
    private int m1008G(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: H */
    private int m1007H(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: K */
    private int m1006K(int i, int i2, int i3) {
        return (i | (i3 ^ (-1))) ^ i2;
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
        unpackWord(this.f7342H1, bArr, i);
        unpackWord(this.f7343H2, bArr, i + 4);
        unpackWord(this.f7344H3, bArr, i + 8);
        unpackWord(this.f7345H4, bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD5";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int i = this.f7342H1;
        int i2 = this.f7343H2;
        int i3 = this.f7344H3;
        int i4 = this.f7345H4;
        int rotateLeft = rotateLeft(((i + m1009F(i2, i3, i4)) + this.f7346X[0]) - 680876936, 7) + i2;
        int rotateLeft2 = rotateLeft(((i4 + m1009F(rotateLeft, i2, i3)) + this.f7346X[1]) - 389564586, 12) + rotateLeft;
        int rotateLeft3 = rotateLeft(i3 + m1009F(rotateLeft2, rotateLeft, i2) + this.f7346X[2] + 606105819, 17) + rotateLeft2;
        int rotateLeft4 = rotateLeft(((i2 + m1009F(rotateLeft3, rotateLeft2, rotateLeft)) + this.f7346X[3]) - 1044525330, 22) + rotateLeft3;
        int rotateLeft5 = rotateLeft(((rotateLeft + m1009F(rotateLeft4, rotateLeft3, rotateLeft2)) + this.f7346X[4]) - 176418897, 7) + rotateLeft4;
        int rotateLeft6 = rotateLeft(rotateLeft2 + m1009F(rotateLeft5, rotateLeft4, rotateLeft3) + this.f7346X[5] + 1200080426, 12) + rotateLeft5;
        int rotateLeft7 = rotateLeft(((rotateLeft3 + m1009F(rotateLeft6, rotateLeft5, rotateLeft4)) + this.f7346X[6]) - 1473231341, 17) + rotateLeft6;
        int rotateLeft8 = rotateLeft(((rotateLeft4 + m1009F(rotateLeft7, rotateLeft6, rotateLeft5)) + this.f7346X[7]) - 45705983, 22) + rotateLeft7;
        int rotateLeft9 = rotateLeft(rotateLeft5 + m1009F(rotateLeft8, rotateLeft7, rotateLeft6) + this.f7346X[8] + 1770035416, 7) + rotateLeft8;
        int rotateLeft10 = rotateLeft(((rotateLeft6 + m1009F(rotateLeft9, rotateLeft8, rotateLeft7)) + this.f7346X[9]) - 1958414417, 12) + rotateLeft9;
        int rotateLeft11 = rotateLeft(((rotateLeft7 + m1009F(rotateLeft10, rotateLeft9, rotateLeft8)) + this.f7346X[10]) - 42063, 17) + rotateLeft10;
        int rotateLeft12 = rotateLeft(((rotateLeft8 + m1009F(rotateLeft11, rotateLeft10, rotateLeft9)) + this.f7346X[11]) - 1990404162, 22) + rotateLeft11;
        int rotateLeft13 = rotateLeft(rotateLeft9 + m1009F(rotateLeft12, rotateLeft11, rotateLeft10) + this.f7346X[12] + 1804603682, 7) + rotateLeft12;
        int rotateLeft14 = rotateLeft(((rotateLeft10 + m1009F(rotateLeft13, rotateLeft12, rotateLeft11)) + this.f7346X[13]) - 40341101, 12) + rotateLeft13;
        int rotateLeft15 = rotateLeft(((rotateLeft11 + m1009F(rotateLeft14, rotateLeft13, rotateLeft12)) + this.f7346X[14]) - 1502002290, 17) + rotateLeft14;
        int rotateLeft16 = rotateLeft(rotateLeft12 + m1009F(rotateLeft15, rotateLeft14, rotateLeft13) + this.f7346X[15] + 1236535329, 22) + rotateLeft15;
        int rotateLeft17 = rotateLeft(((rotateLeft13 + m1008G(rotateLeft16, rotateLeft15, rotateLeft14)) + this.f7346X[1]) - 165796510, 5) + rotateLeft16;
        int rotateLeft18 = rotateLeft(((rotateLeft14 + m1008G(rotateLeft17, rotateLeft16, rotateLeft15)) + this.f7346X[6]) - 1069501632, 9) + rotateLeft17;
        int rotateLeft19 = rotateLeft(rotateLeft15 + m1008G(rotateLeft18, rotateLeft17, rotateLeft16) + this.f7346X[11] + 643717713, 14) + rotateLeft18;
        int rotateLeft20 = rotateLeft(((rotateLeft16 + m1008G(rotateLeft19, rotateLeft18, rotateLeft17)) + this.f7346X[0]) - 373897302, 20) + rotateLeft19;
        int rotateLeft21 = rotateLeft(((rotateLeft17 + m1008G(rotateLeft20, rotateLeft19, rotateLeft18)) + this.f7346X[5]) - 701558691, 5) + rotateLeft20;
        int rotateLeft22 = rotateLeft(rotateLeft18 + m1008G(rotateLeft21, rotateLeft20, rotateLeft19) + this.f7346X[10] + 38016083, 9) + rotateLeft21;
        int rotateLeft23 = rotateLeft(((rotateLeft19 + m1008G(rotateLeft22, rotateLeft21, rotateLeft20)) + this.f7346X[15]) - 660478335, 14) + rotateLeft22;
        int rotateLeft24 = rotateLeft(((rotateLeft20 + m1008G(rotateLeft23, rotateLeft22, rotateLeft21)) + this.f7346X[4]) - 405537848, 20) + rotateLeft23;
        int rotateLeft25 = rotateLeft(rotateLeft21 + m1008G(rotateLeft24, rotateLeft23, rotateLeft22) + this.f7346X[9] + 568446438, 5) + rotateLeft24;
        int rotateLeft26 = rotateLeft(((rotateLeft22 + m1008G(rotateLeft25, rotateLeft24, rotateLeft23)) + this.f7346X[14]) - 1019803690, 9) + rotateLeft25;
        int rotateLeft27 = rotateLeft(((rotateLeft23 + m1008G(rotateLeft26, rotateLeft25, rotateLeft24)) + this.f7346X[3]) - 187363961, 14) + rotateLeft26;
        int rotateLeft28 = rotateLeft(rotateLeft24 + m1008G(rotateLeft27, rotateLeft26, rotateLeft25) + this.f7346X[8] + 1163531501, 20) + rotateLeft27;
        int rotateLeft29 = rotateLeft(((rotateLeft25 + m1008G(rotateLeft28, rotateLeft27, rotateLeft26)) + this.f7346X[13]) - 1444681467, 5) + rotateLeft28;
        int rotateLeft30 = rotateLeft(((rotateLeft26 + m1008G(rotateLeft29, rotateLeft28, rotateLeft27)) + this.f7346X[2]) - 51403784, 9) + rotateLeft29;
        int rotateLeft31 = rotateLeft(rotateLeft27 + m1008G(rotateLeft30, rotateLeft29, rotateLeft28) + this.f7346X[7] + 1735328473, 14) + rotateLeft30;
        int rotateLeft32 = rotateLeft(((rotateLeft28 + m1008G(rotateLeft31, rotateLeft30, rotateLeft29)) + this.f7346X[12]) - 1926607734, 20) + rotateLeft31;
        int rotateLeft33 = rotateLeft(((rotateLeft29 + m1007H(rotateLeft32, rotateLeft31, rotateLeft30)) + this.f7346X[5]) - 378558, 4) + rotateLeft32;
        int rotateLeft34 = rotateLeft(((rotateLeft30 + m1007H(rotateLeft33, rotateLeft32, rotateLeft31)) + this.f7346X[8]) - 2022574463, 11) + rotateLeft33;
        int rotateLeft35 = rotateLeft(rotateLeft31 + m1007H(rotateLeft34, rotateLeft33, rotateLeft32) + this.f7346X[11] + 1839030562, 16) + rotateLeft34;
        int rotateLeft36 = rotateLeft(((rotateLeft32 + m1007H(rotateLeft35, rotateLeft34, rotateLeft33)) + this.f7346X[14]) - 35309556, 23) + rotateLeft35;
        int rotateLeft37 = rotateLeft(((rotateLeft33 + m1007H(rotateLeft36, rotateLeft35, rotateLeft34)) + this.f7346X[1]) - 1530992060, 4) + rotateLeft36;
        int rotateLeft38 = rotateLeft(rotateLeft34 + m1007H(rotateLeft37, rotateLeft36, rotateLeft35) + this.f7346X[4] + 1272893353, 11) + rotateLeft37;
        int rotateLeft39 = rotateLeft(((rotateLeft35 + m1007H(rotateLeft38, rotateLeft37, rotateLeft36)) + this.f7346X[7]) - 155497632, 16) + rotateLeft38;
        int rotateLeft40 = rotateLeft(((rotateLeft36 + m1007H(rotateLeft39, rotateLeft38, rotateLeft37)) + this.f7346X[10]) - 1094730640, 23) + rotateLeft39;
        int rotateLeft41 = rotateLeft(rotateLeft37 + m1007H(rotateLeft40, rotateLeft39, rotateLeft38) + this.f7346X[13] + 681279174, 4) + rotateLeft40;
        int rotateLeft42 = rotateLeft(((rotateLeft38 + m1007H(rotateLeft41, rotateLeft40, rotateLeft39)) + this.f7346X[0]) - 358537222, 11) + rotateLeft41;
        int rotateLeft43 = rotateLeft(((rotateLeft39 + m1007H(rotateLeft42, rotateLeft41, rotateLeft40)) + this.f7346X[3]) - 722521979, 16) + rotateLeft42;
        int rotateLeft44 = rotateLeft(rotateLeft40 + m1007H(rotateLeft43, rotateLeft42, rotateLeft41) + this.f7346X[6] + 76029189, 23) + rotateLeft43;
        int rotateLeft45 = rotateLeft(((rotateLeft41 + m1007H(rotateLeft44, rotateLeft43, rotateLeft42)) + this.f7346X[9]) - 640364487, 4) + rotateLeft44;
        int rotateLeft46 = rotateLeft(((rotateLeft42 + m1007H(rotateLeft45, rotateLeft44, rotateLeft43)) + this.f7346X[12]) - 421815835, 11) + rotateLeft45;
        int rotateLeft47 = rotateLeft(rotateLeft43 + m1007H(rotateLeft46, rotateLeft45, rotateLeft44) + this.f7346X[15] + 530742520, 16) + rotateLeft46;
        int rotateLeft48 = rotateLeft(((rotateLeft44 + m1007H(rotateLeft47, rotateLeft46, rotateLeft45)) + this.f7346X[2]) - 995338651, 23) + rotateLeft47;
        int rotateLeft49 = rotateLeft(((rotateLeft45 + m1006K(rotateLeft48, rotateLeft47, rotateLeft46)) + this.f7346X[0]) - 198630844, 6) + rotateLeft48;
        int rotateLeft50 = rotateLeft(rotateLeft46 + m1006K(rotateLeft49, rotateLeft48, rotateLeft47) + this.f7346X[7] + 1126891415, 10) + rotateLeft49;
        int rotateLeft51 = rotateLeft(((rotateLeft47 + m1006K(rotateLeft50, rotateLeft49, rotateLeft48)) + this.f7346X[14]) - 1416354905, 15) + rotateLeft50;
        int rotateLeft52 = rotateLeft(((rotateLeft48 + m1006K(rotateLeft51, rotateLeft50, rotateLeft49)) + this.f7346X[5]) - 57434055, 21) + rotateLeft51;
        int rotateLeft53 = rotateLeft(rotateLeft49 + m1006K(rotateLeft52, rotateLeft51, rotateLeft50) + this.f7346X[12] + 1700485571, 6) + rotateLeft52;
        int rotateLeft54 = rotateLeft(((rotateLeft50 + m1006K(rotateLeft53, rotateLeft52, rotateLeft51)) + this.f7346X[3]) - 1894986606, 10) + rotateLeft53;
        int rotateLeft55 = rotateLeft(((rotateLeft51 + m1006K(rotateLeft54, rotateLeft53, rotateLeft52)) + this.f7346X[10]) - 1051523, 15) + rotateLeft54;
        int rotateLeft56 = rotateLeft(((rotateLeft52 + m1006K(rotateLeft55, rotateLeft54, rotateLeft53)) + this.f7346X[1]) - 2054922799, 21) + rotateLeft55;
        int rotateLeft57 = rotateLeft(rotateLeft53 + m1006K(rotateLeft56, rotateLeft55, rotateLeft54) + this.f7346X[8] + 1873313359, 6) + rotateLeft56;
        int rotateLeft58 = rotateLeft(((rotateLeft54 + m1006K(rotateLeft57, rotateLeft56, rotateLeft55)) + this.f7346X[15]) - 30611744, 10) + rotateLeft57;
        int rotateLeft59 = rotateLeft(((rotateLeft55 + m1006K(rotateLeft58, rotateLeft57, rotateLeft56)) + this.f7346X[6]) - 1560198380, 15) + rotateLeft58;
        int rotateLeft60 = rotateLeft(rotateLeft56 + m1006K(rotateLeft59, rotateLeft58, rotateLeft57) + this.f7346X[13] + 1309151649, 21) + rotateLeft59;
        int rotateLeft61 = rotateLeft(((rotateLeft57 + m1006K(rotateLeft60, rotateLeft59, rotateLeft58)) + this.f7346X[4]) - 145523070, 6) + rotateLeft60;
        int rotateLeft62 = rotateLeft(((rotateLeft58 + m1006K(rotateLeft61, rotateLeft60, rotateLeft59)) + this.f7346X[11]) - 1120210379, 10) + rotateLeft61;
        int rotateLeft63 = rotateLeft(rotateLeft59 + m1006K(rotateLeft62, rotateLeft61, rotateLeft60) + this.f7346X[2] + 718787259, 15) + rotateLeft62;
        int rotateLeft64 = rotateLeft(((rotateLeft60 + m1006K(rotateLeft63, rotateLeft62, rotateLeft61)) + this.f7346X[9]) - 343485551, 21);
        this.f7342H1 += rotateLeft61;
        this.f7343H2 += rotateLeft64 + rotateLeft63;
        this.f7344H3 += rotateLeft63;
        this.f7345H4 += rotateLeft62;
        this.xOff = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.f7346X;
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
        int[] iArr = this.f7346X;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i) {
        int[] iArr = this.f7346X;
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
        this.f7342H1 = 1732584193;
        this.f7343H2 = -271733879;
        this.f7344H3 = -1732584194;
        this.f7345H4 = 271733878;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7346X;
            if (i != iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
