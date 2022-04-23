package org.spongycastle.crypto.modes.gcm;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier.class */
public class Tables64kGCMMultiplier implements GCMMultiplier {

    /* renamed from: H */
    private byte[] f1376H;

    /* renamed from: M */
    private int[][][] f1377M;

    @Override // org.spongycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.f1377M == null) {
            this.f1377M = new int[16][256][4];
        } else if (Arrays.areEqual(this.f1376H, bArr)) {
            return;
        }
        this.f1376H = Arrays.clone(bArr);
        int i = 0;
        GCMUtil.asInts(bArr, this.f1377M[0][128]);
        for (int i2 = 64; i2 >= 1; i2 >>= 1) {
            GCMUtil.multiplyP(this.f1377M[0][i2 + i2], this.f1377M[0][i2]);
        }
        while (true) {
            for (int i3 = 2; i3 < 256; i3 += i3) {
                for (int i4 = 1; i4 < i3; i4++) {
                    GCMUtil.xor(this.f1377M[i][i3], this.f1377M[i][i4], this.f1377M[i][i3 + i4]);
                }
            }
            int i5 = i + 1;
            if (i5 != 16) {
                int i6 = 128;
                while (true) {
                    i = i5;
                    if (i6 > 0) {
                        GCMUtil.multiplyP8(this.f1377M[i5 - 1][i6], this.f1377M[i5][i6]);
                        i6 >>= 1;
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
            int[] iArr2 = this.f1377M[i][bArr[i] & 255];
            iArr[0] = iArr[0] ^ iArr2[0];
            iArr[1] = iArr[1] ^ iArr2[1];
            iArr[2] = iArr[2] ^ iArr2[2];
            iArr[3] = iArr2[3] ^ iArr[3];
        }
        Pack.intToBigEndian(iArr, bArr, 0);
    }
}
