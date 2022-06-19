package org.bouncycastle.crypto.modes.gcm;

import org.bouncycastle.crypto.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier.class */
public class Tables8kGCMMultiplier implements GCMMultiplier {

    /* renamed from: M */
    private final int[][][] f7556M = new int[32][16];

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        int[][][] iArr = this.f7556M;
        iArr[0][0] = new int[4];
        iArr[1][0] = new int[4];
        iArr[1][8] = GCMUtil.asInts(bArr);
        int i = 4;
        while (true) {
            int i2 = i;
            if (i2 < 1) {
                break;
            }
            int[] iArr2 = new int[4];
            System.arraycopy(this.f7556M[1][i2 + i2], 0, iArr2, 0, 4);
            GCMUtil.multiplyP(iArr2);
            this.f7556M[1][i2] = iArr2;
            i = i2 >> 1;
        }
        int[] iArr3 = new int[4];
        System.arraycopy(this.f7556M[1][1], 0, iArr3, 0, 4);
        GCMUtil.multiplyP(iArr3);
        this.f7556M[0][8] = iArr3;
        int i3 = 4;
        while (true) {
            int i4 = i3;
            if (i4 < 1) {
                break;
            }
            int[] iArr4 = new int[4];
            System.arraycopy(this.f7556M[0][i4 + i4], 0, iArr4, 0, 4);
            GCMUtil.multiplyP(iArr4);
            this.f7556M[0][i4] = iArr4;
            i3 = i4 >> 1;
        }
        int i5 = 0;
        while (true) {
            int i6 = 2;
            while (true) {
                int i7 = i6;
                if (i7 >= 16) {
                    break;
                }
                for (int i8 = 1; i8 < i7; i8++) {
                    int[] iArr5 = new int[4];
                    System.arraycopy(this.f7556M[i5][i7], 0, iArr5, 0, 4);
                    GCMUtil.xor(iArr5, this.f7556M[i5][i8]);
                    this.f7556M[i5][i7 + i8] = iArr5;
                }
                i6 = i7 + i7;
            }
            int i9 = i5 + 1;
            if (i9 == 32) {
                return;
            }
            i5 = i9;
            if (i9 > 1) {
                this.f7556M[i9][0] = new int[4];
                int i10 = 8;
                while (true) {
                    int i11 = i10;
                    i5 = i9;
                    if (i11 > 0) {
                        int[] iArr6 = new int[4];
                        System.arraycopy(this.f7556M[i9 - 2][i11], 0, iArr6, 0, 4);
                        GCMUtil.multiplyP8(iArr6);
                        this.f7556M[i9][i11] = iArr6;
                        i10 = i11 >> 1;
                    }
                }
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        int[] iArr = new int[4];
        for (int i = 15; i >= 0; i--) {
            int[][][] iArr2 = this.f7556M;
            int i2 = i + i;
            int[] iArr3 = iArr2[i2][bArr[i] & 15];
            iArr[0] = iArr[0] ^ iArr3[0];
            iArr[1] = iArr[1] ^ iArr3[1];
            iArr[2] = iArr[2] ^ iArr3[2];
            iArr[3] = iArr3[3] ^ iArr[3];
            int[] iArr4 = iArr2[i2 + 1][(bArr[i] & 240) >>> 4];
            iArr[0] = iArr[0] ^ iArr4[0];
            iArr[1] = iArr[1] ^ iArr4[1];
            iArr[2] = iArr[2] ^ iArr4[2];
            iArr[3] = iArr[3] ^ iArr4[3];
        }
        Pack.intToBigEndian(iArr[0], bArr, 0);
        Pack.intToBigEndian(iArr[1], bArr, 4);
        Pack.intToBigEndian(iArr[2], bArr, 8);
        Pack.intToBigEndian(iArr[3], bArr, 12);
    }
}
