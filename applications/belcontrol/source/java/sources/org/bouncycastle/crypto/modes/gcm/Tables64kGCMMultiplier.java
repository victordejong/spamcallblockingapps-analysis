package org.bouncycastle.crypto.modes.gcm;

import org.bouncycastle.crypto.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier.class */
public class Tables64kGCMMultiplier implements GCMMultiplier {

    /* renamed from: M */
    private final int[][][] f7555M = new int[16][256];

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        int[][][] iArr = this.f7555M;
        iArr[0][0] = new int[4];
        iArr[0][128] = GCMUtil.asInts(bArr);
        int i = 64;
        while (true) {
            int i2 = i;
            if (i2 < 1) {
                break;
            }
            int[] iArr2 = new int[4];
            System.arraycopy(this.f7555M[0][i2 + i2], 0, iArr2, 0, 4);
            GCMUtil.multiplyP(iArr2);
            this.f7555M[0][i2] = iArr2;
            i = i2 >> 1;
        }
        int i3 = 0;
        while (true) {
            int i4 = 2;
            while (true) {
                int i5 = i4;
                if (i5 >= 256) {
                    break;
                }
                for (int i6 = 1; i6 < i5; i6++) {
                    int[] iArr3 = new int[4];
                    System.arraycopy(this.f7555M[i3][i5], 0, iArr3, 0, 4);
                    GCMUtil.xor(iArr3, this.f7555M[i3][i6]);
                    this.f7555M[i3][i5 + i6] = iArr3;
                }
                i4 = i5 + i5;
            }
            int i7 = i3 + 1;
            if (i7 == 16) {
                return;
            }
            this.f7555M[i7][0] = new int[4];
            int i8 = 128;
            while (true) {
                int i9 = i8;
                i3 = i7;
                if (i9 > 0) {
                    int[] iArr4 = new int[4];
                    System.arraycopy(this.f7555M[i7 - 1][i9], 0, iArr4, 0, 4);
                    GCMUtil.multiplyP8(iArr4);
                    this.f7555M[i7][i9] = iArr4;
                    i8 = i9 >> 1;
                }
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        int[] iArr = new int[4];
        for (int i = 15; i >= 0; i--) {
            int[] iArr2 = this.f7555M[i][bArr[i] & 255];
            iArr[0] = iArr[0] ^ iArr2[0];
            iArr[1] = iArr[1] ^ iArr2[1];
            iArr[2] = iArr[2] ^ iArr2[2];
            iArr[3] = iArr[3] ^ iArr2[3];
        }
        Pack.intToBigEndian(iArr[0], bArr, 0);
        Pack.intToBigEndian(iArr[1], bArr, 4);
        Pack.intToBigEndian(iArr[2], bArr, 8);
        Pack.intToBigEndian(iArr[3], bArr, 12);
    }
}
