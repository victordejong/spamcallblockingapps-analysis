package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/SM3Digest.class */
public class SM3Digest extends GeneralDigest {
    private static final int BLOCK_SIZE = 16;
    private static final int DIGEST_LENGTH = 32;

    /* renamed from: T */
    private static final int[] f1155T = new int[64];

    /* renamed from: V */
    private int[] f1156V;

    /* renamed from: W */
    private int[] f1157W;

    /* renamed from: W1 */
    private int[] f1158W1;
    private int[] inwords;
    private int xOff;

    static {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < 16) {
                f1155T[i2] = (2043430169 >>> (32 - i2)) | (2043430169 << i2);
                i2++;
            }
        }
        for (i = 16; i < 64; i++) {
            int i3 = i % 32;
            f1155T[i] = (2055708042 >>> (32 - i3)) | (2055708042 << i3);
        }
    }

    public SM3Digest() {
        this.f1156V = new int[8];
        this.inwords = new int[16];
        this.f1157W = new int[68];
        this.f1158W1 = new int[64];
        reset();
    }

    public SM3Digest(SM3Digest sM3Digest) {
        super(sM3Digest);
        this.f1156V = new int[8];
        this.inwords = new int[16];
        this.f1157W = new int[68];
        this.f1158W1 = new int[64];
        copyIn(sM3Digest);
    }

    private int FF0(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    private int FF1(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    private int GG0(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    private int GG1(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: P0 */
    private int m141P0(int i) {
        return (i ^ ((i << 9) | (i >>> 23))) ^ ((i << 17) | (i >>> 15));
    }

    /* renamed from: P1 */
    private int m140P1(int i) {
        return (i ^ ((i << 15) | (i >>> 17))) ^ ((i << 23) | (i >>> 9));
    }

    private void copyIn(SM3Digest sM3Digest) {
        System.arraycopy(sM3Digest.f1156V, 0, this.f1156V, 0, this.f1156V.length);
        System.arraycopy(sM3Digest.inwords, 0, this.inwords, 0, this.inwords.length);
        this.xOff = sM3Digest.xOff;
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new SM3Digest(this);
    }

    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.intToBigEndian(this.f1156V[0], bArr, i + 0);
        Pack.intToBigEndian(this.f1156V[1], bArr, i + 4);
        Pack.intToBigEndian(this.f1156V[2], bArr, i + 8);
        Pack.intToBigEndian(this.f1156V[3], bArr, i + 12);
        Pack.intToBigEndian(this.f1156V[4], bArr, i + 16);
        Pack.intToBigEndian(this.f1156V[5], bArr, i + 20);
        Pack.intToBigEndian(this.f1156V[6], bArr, i + 24);
        Pack.intToBigEndian(this.f1156V[7], bArr, i + 28);
        reset();
        return 32;
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SM3";
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        for (int i = 0; i < 16; i++) {
            this.f1157W[i] = this.inwords[i];
        }
        for (int i2 = 16; i2 < 68; i2++) {
            int i3 = this.f1157W[i2 - 3];
            int i4 = this.f1157W[i2 - 13];
            this.f1157W[i2] = (m140P1(((i3 >>> 17) | (i3 << 15)) ^ (this.f1157W[i2 - 16] ^ this.f1157W[i2 - 9])) ^ ((i4 >>> 25) | (i4 << 7))) ^ this.f1157W[i2 - 6];
        }
        for (int i5 = 0; i5 < 64; i5++) {
            this.f1158W1[i5] = this.f1157W[i5] ^ this.f1157W[i5 + 4];
        }
        int i6 = this.f1156V[0];
        int i7 = this.f1156V[1];
        int i8 = this.f1156V[2];
        int i9 = this.f1156V[3];
        int i10 = this.f1156V[4];
        int i11 = this.f1156V[5];
        int i12 = this.f1156V[6];
        int i13 = this.f1156V[7];
        int i14 = 0;
        while (i14 < 16) {
            int i15 = (i6 << 12) | (i6 >>> 20);
            int i16 = i15 + i10 + f1155T[i14];
            int i17 = (i16 << 7) | (i16 >>> 25);
            int FF0 = FF0(i6, i7, i8);
            int i18 = this.f1158W1[i14];
            i10 = m141P0(GG0(i10, i11, i12) + i13 + i17 + this.f1157W[i14]);
            i14++;
            i13 = i12;
            i12 = (i11 << 19) | (i11 >>> 13);
            i11 = i10;
            i6 = FF0 + i9 + (i17 ^ i15) + i18;
            i9 = i8;
            i8 = (i7 << 9) | (i7 >>> 23);
            i7 = i6;
        }
        int i19 = 16;
        int i20 = i13;
        int i21 = i12;
        int i22 = i10;
        int i23 = i8;
        int i24 = i11;
        int i25 = i6;
        int i26 = i9;
        int i27 = i7;
        while (i19 < 64) {
            int i28 = (i25 << 12) | (i25 >>> 20);
            int i29 = i28 + i22 + f1155T[i19];
            int i30 = (i29 << 7) | (i29 >>> 25);
            int FF1 = FF1(i25, i27, i23);
            int i31 = this.f1158W1[i19];
            i22 = m141P0(GG1(i22, i24, i21) + i20 + i30 + this.f1157W[i19]);
            i19++;
            i20 = i21;
            i21 = (i24 << 19) | (i24 >>> 13);
            i23 = (i27 >>> 23) | (i27 << 9);
            i25 = FF1 + i26 + (i30 ^ i28) + i31;
            i27 = i25;
            i26 = i23;
            i24 = i22;
        }
        int[] iArr = this.f1156V;
        iArr[0] = iArr[0] ^ i25;
        int[] iArr2 = this.f1156V;
        iArr2[1] = i27 ^ iArr2[1];
        int[] iArr3 = this.f1156V;
        iArr3[2] = iArr3[2] ^ i23;
        int[] iArr4 = this.f1156V;
        iArr4[3] = iArr4[3] ^ i26;
        int[] iArr5 = this.f1156V;
        iArr5[4] = iArr5[4] ^ i22;
        int[] iArr6 = this.f1156V;
        iArr6[5] = iArr6[5] ^ i24;
        int[] iArr7 = this.f1156V;
        iArr7[6] = iArr7[6] ^ i21;
        int[] iArr8 = this.f1156V;
        iArr8[7] = iArr8[7] ^ i20;
        this.xOff = 0;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    protected void processLength(long j) {
        if (this.xOff > 14) {
            this.inwords[this.xOff] = 0;
            this.xOff++;
            processBlock();
        }
        while (this.xOff < 14) {
            this.inwords[this.xOff] = 0;
            this.xOff++;
        }
        int[] iArr = this.inwords;
        int i = this.xOff;
        this.xOff = i + 1;
        iArr[i] = (int) (j >>> 32);
        int[] iArr2 = this.inwords;
        int i2 = this.xOff;
        this.xOff = i2 + 1;
        iArr2[i2] = (int) j;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i) {
        byte b = bArr[i];
        int i2 = i + 1;
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        this.inwords[this.xOff] = (bArr[i3 + 1] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((bArr[i3] & 255) << 8);
        this.xOff++;
        if (this.xOff >= 16) {
            processBlock();
        }
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest, org.spongycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f1156V[0] = 1937774191;
        this.f1156V[1] = 1226093241;
        this.f1156V[2] = 388252375;
        this.f1156V[3] = -628488704;
        this.f1156V[4] = -1452330820;
        this.f1156V[5] = 372324522;
        this.f1156V[6] = -477237683;
        this.f1156V[7] = -1325724082;
        this.xOff = 0;
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        SM3Digest sM3Digest = (SM3Digest) memoable;
        super.copyIn((GeneralDigest) sM3Digest);
        copyIn(sM3Digest);
    }
}
