package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Memoable;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/MD2Digest.class */
public class MD2Digest implements ExtendedDigest, Memoable {
    private static final int DIGEST_LENGTH = 16;

    /* renamed from: S */
    private static final byte[] f1080S = {41, 46, 67, -55, -94, -40, 124, 1, 61, 54, 84, -95, -20, -16, 6, 19, 98, -89, 5, -13, -64, -57, 115, -116, -104, -109, 43, -39, -68, 76, -126, -54, 30, -101, 87, 60, -3, -44, -32, 22, 103, 66, 111, 24, -118, 23, -27, 18, -66, 78, -60, -42, -38, -98, -34, 73, -96, -5, -11, -114, -69, 47, -18, 122, -87, 104, 121, -111, 21, -78, 7, 63, -108, -62, 16, -119, 11, 34, 95, 33, Byte.MIN_VALUE, Byte.MAX_VALUE, 93, -102, 90, -112, 50, 39, 53, 62, -52, -25, -65, -9, -105, 3, -1, 25, 48, -77, 72, -91, -75, -47, -41, 94, -110, 42, -84, 86, -86, -58, 79, -72, 56, -46, -106, -92, 125, -74, 118, -4, 107, -30, -100, 116, 4, -15, 69, -99, 112, 89, 100, 113, -121, 32, -122, 91, -49, 101, -26, 45, -88, 2, 27, 96, 37, -83, -82, -80, -71, -10, 28, 70, 97, 105, 52, 64, 126, 15, 85, 71, -93, 35, -35, 81, -81, 58, -61, 92, -7, -50, -70, -59, -22, 38, 44, 83, 13, 110, -123, 40, -124, 9, -45, -33, -51, -12, 65, -127, 77, 82, 106, -36, 55, -56, 108, -63, -85, -6, 36, -31, 123, 8, 12, -67, -79, 74, 120, -120, -107, -117, -29, 99, -24, 109, -23, -53, -43, -2, 59, 0, 29, 57, -14, -17, -73, 14, 102, 88, -48, -28, -90, 119, 114, -8, -21, 117, 75, 10, 49, 68, 80, -76, -113, -19, 31, 26, -37, -103, -115, 51, -97, 17, -125, 20};

    /* renamed from: C */
    private byte[] f1081C;
    private int COff;

    /* renamed from: M */
    private byte[] f1082M;

    /* renamed from: X */
    private byte[] f1083X;
    private int mOff;
    private int xOff;

    public MD2Digest() {
        this.f1083X = new byte[48];
        this.f1082M = new byte[16];
        this.f1081C = new byte[16];
        reset();
    }

    public MD2Digest(MD2Digest mD2Digest) {
        this.f1083X = new byte[48];
        this.f1082M = new byte[16];
        this.f1081C = new byte[16];
        copyIn(mD2Digest);
    }

    private void copyIn(MD2Digest mD2Digest) {
        System.arraycopy(mD2Digest.f1083X, 0, this.f1083X, 0, mD2Digest.f1083X.length);
        this.xOff = mD2Digest.xOff;
        System.arraycopy(mD2Digest.f1082M, 0, this.f1082M, 0, mD2Digest.f1082M.length);
        this.mOff = mD2Digest.mOff;
        System.arraycopy(mD2Digest.f1081C, 0, this.f1081C, 0, mD2Digest.f1081C.length);
        this.COff = mD2Digest.COff;
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new MD2Digest(this);
    }

    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        byte length = (byte) (this.f1082M.length - this.mOff);
        for (int i2 = this.mOff; i2 < this.f1082M.length; i2++) {
            this.f1082M[i2] = length;
        }
        processCheckSum(this.f1082M);
        processBlock(this.f1082M);
        processBlock(this.f1081C);
        System.arraycopy(this.f1083X, this.xOff, bArr, i, 16);
        reset();
        return 16;
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD2";
    }

    @Override // org.spongycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 16;
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    protected void processBlock(byte[] bArr) {
        for (int i = 0; i < 16; i++) {
            this.f1083X[i + 16] = bArr[i];
            this.f1083X[i + 32] = (byte) (bArr[i] ^ this.f1083X[i]);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 18; i3++) {
            for (int i4 = 0; i4 < 48; i4++) {
                byte[] bArr2 = this.f1083X;
                byte b = (byte) (f1080S[i2] ^ bArr2[i4]);
                bArr2[i4] = b;
                i2 = b & 255;
            }
            i2 = (i2 + i3) % 256;
        }
    }

    protected void processCheckSum(byte[] bArr) {
        byte b = this.f1081C[15];
        for (int i = 0; i < 16; i++) {
            byte[] bArr2 = this.f1081C;
            bArr2[i] = (byte) (f1080S[(b ^ bArr[i]) & 255] ^ bArr2[i]);
            b = this.f1081C[i];
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public void reset() {
        this.xOff = 0;
        for (int i = 0; i != this.f1083X.length; i++) {
            this.f1083X[i] = (byte) 0;
        }
        this.mOff = 0;
        for (int i2 = 0; i2 != this.f1082M.length; i2++) {
            this.f1082M[i2] = (byte) 0;
        }
        this.COff = 0;
        for (int i3 = 0; i3 != this.f1081C.length; i3++) {
            this.f1081C[i3] = (byte) 0;
        }
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((MD2Digest) memoable);
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.f1082M;
        int i = this.mOff;
        this.mOff = i + 1;
        bArr[i] = b;
        if (this.mOff == 16) {
            processCheckSum(this.f1082M);
            processBlock(this.f1082M);
            this.mOff = 0;
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i;
        while (true) {
            i3 = i7;
            i4 = i2;
            if (this.mOff == 0) {
                break;
            }
            i3 = i7;
            i4 = i2;
            if (i2 <= 0) {
                break;
            }
            update(bArr[i7]);
            i7++;
            i2--;
        }
        while (true) {
            i5 = i3;
            if (i4 > 16) {
                System.arraycopy(bArr, i3, this.f1082M, 0, 16);
                processCheckSum(this.f1082M);
                processBlock(this.f1082M);
                i4 -= 16;
                i3 += 16;
            }
        }
        for (i6 = i4; i6 > 0; i6--) {
            update(bArr[i5]);
            i5++;
        }
    }
}
