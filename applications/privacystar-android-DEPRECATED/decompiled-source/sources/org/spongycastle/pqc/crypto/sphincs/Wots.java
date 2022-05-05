package org.spongycastle.pqc.crypto.sphincs;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/sphincs/Wots.class */
class Wots {
    static final int WOTS_L = 67;
    static final int WOTS_L1 = 64;
    static final int WOTS_LOGW = 4;
    static final int WOTS_LOG_L = 7;
    static final int WOTS_SIGBYTES = 2144;
    static final int WOTS_W = 16;

    private static void clear(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 != i2; i3++) {
            bArr[i3 + i] = (byte) 0;
        }
    }

    static void expand_seed(byte[] bArr, int i, byte[] bArr2, int i2) {
        clear(bArr, i, WOTS_SIGBYTES);
        Seed.prg(bArr, i, 2144L, bArr2, i2);
    }

    static void gen_chain(HashFunctions hashFunctions, byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3, int i4) {
        for (int i5 = 0; i5 < 32; i5++) {
            bArr[i5 + i] = bArr2[i5 + i2];
        }
        for (int i6 = 0; i6 < i4 && i6 < 16; i6++) {
            hashFunctions.hash_n_n_mask(bArr, i, bArr, i, bArr3, i3 + (i6 * 32));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wots_pkgen(HashFunctions hashFunctions, byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        expand_seed(bArr, i, bArr2, i2);
        for (int i4 = 0; i4 < 67; i4++) {
            int i5 = i + (i4 * 32);
            gen_chain(hashFunctions, bArr, i5, bArr, i5, bArr3, i3, 15);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wots_sign(HashFunctions hashFunctions, byte[] bArr, int i, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int i2;
        int i3;
        int[] iArr = new int[67];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i3 = i5;
            if (i4 < 64) {
                int i6 = i4 / 2;
                iArr[i4] = bArr2[i6] & 15;
                int i7 = i4 + 1;
                iArr[i7] = (bArr2[i6] & 255) >>> 4;
                i5 = i5 + (15 - iArr[i4]) + (15 - iArr[i7]);
                i4 += 2;
            }
        }
        for (i2 = i4; i2 < 67; i2++) {
            iArr[i2] = i3 & 15;
            i3 >>>= 4;
        }
        expand_seed(bArr, i, bArr3, 0);
        for (int i8 = 0; i8 < 67; i8++) {
            int i9 = i + (i8 * 32);
            gen_chain(hashFunctions, bArr, i9, bArr, i9, bArr4, 0, iArr[i8]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wots_verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i, byte[] bArr3, byte[] bArr4) {
        int i2;
        int i3;
        int[] iArr = new int[67];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i3 = i5;
            if (i4 < 64) {
                int i6 = i4 / 2;
                iArr[i4] = bArr3[i6] & 15;
                int i7 = i4 + 1;
                iArr[i7] = (bArr3[i6] & 255) >>> 4;
                i5 = i5 + (15 - iArr[i4]) + (15 - iArr[i7]);
                i4 += 2;
            }
        }
        for (i2 = i4; i2 < 67; i2++) {
            iArr[i2] = i3 & 15;
            i3 >>>= 4;
        }
        for (int i8 = 0; i8 < 67; i8++) {
            int i9 = i8 * 32;
            gen_chain(hashFunctions, bArr, i9, bArr2, i + i9, bArr4, iArr[i8] * 32, 15 - iArr[i8]);
        }
    }
}
