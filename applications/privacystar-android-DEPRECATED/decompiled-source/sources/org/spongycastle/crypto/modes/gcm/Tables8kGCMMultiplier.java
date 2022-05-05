package org.spongycastle.crypto.modes.gcm;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier.class */
public class Tables8kGCMMultiplier implements GCMMultiplier {

    /* renamed from: H */
    private byte[] f1378H;

    /* renamed from: M */
    private int[][][] f1379M;

    @Override // org.spongycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.f1379M == null) {
            this.f1379M = new int[32][16][4];
        } else if (Arrays.areEqual(this.f1378H, bArr)) {
            return;
        }
        this.f1378H = Arrays.clone(bArr);
        GCMUtil.asInts(bArr, this.f1379M[1][8]);
        for (int i = 4; i >= 1; i >>= 1) {
            GCMUtil.multiplyP(this.f1379M[1][i + i], this.f1379M[1][i]);
        }
        int i2 = 0;
        GCMUtil.multiplyP(this.f1379M[1][1], this.f1379M[0][8]);
        for (int i3 = 4; i3 >= 1; i3 >>= 1) {
            GCMUtil.multiplyP(this.f1379M[0][i3 + i3], this.f1379M[0][i3]);
        }
        while (true) {
            for (int i4 = 2; i4 < 16; i4 += i4) {
                for (int i5 = 1; i5 < i4; i5++) {
                    GCMUtil.xor(this.f1379M[i2][i4], this.f1379M[i2][i5], this.f1379M[i2][i4 + i5]);
                }
            }
            int i6 = i2 + 1;
            if (i6 != 32) {
                i2 = i6;
                if (i6 > 1) {
                    int i7 = 8;
                    while (true) {
                        i2 = i6;
                        if (i7 > 0) {
                            GCMUtil.multiplyP8(this.f1379M[i6 - 2][i7], this.f1379M[i6][i7]);
                            i7 >>= 1;
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // org.spongycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        int[] iArr = new int[4];
        for (int i = 15; i >= 0; i--) {
            int i2 = i + i;
            int[] iArr2 = this.f1379M[i2][bArr[i] & 15];
            iArr[0] = iArr[0] ^ iArr2[0];
            iArr[1] = iArr[1] ^ iArr2[1];
            iArr[2] = iArr[2] ^ iArr2[2];
            iArr[3] = iArr2[3] ^ iArr[3];
            int[] iArr3 = this.f1379M[i2 + 1][(bArr[i] & 240) >>> 4];
            iArr[0] = iArr[0] ^ iArr3[0];
            iArr[1] = iArr[1] ^ iArr3[1];
            iArr[2] = iArr[2] ^ iArr3[2];
            iArr[3] = iArr[3] ^ iArr3[3];
        }
        Pack.intToBigEndian(iArr, bArr, 0);
    }
}
