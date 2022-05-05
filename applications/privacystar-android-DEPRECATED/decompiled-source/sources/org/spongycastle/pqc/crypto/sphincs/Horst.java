package org.spongycastle.pqc.crypto.sphincs;

import android.support.p001v4.media.session.PlaybackStateCompat;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/sphincs/Horst.class */
class Horst {
    static final int HORST_K = 32;
    static final int HORST_LOGT = 16;
    static final int HORST_SIGBYTES = 13312;
    static final int HORST_SKBYTES = 32;
    static final int HORST_T = 65536;
    static final int N_MASKS = 32;

    static void expand_seed(byte[] bArr, byte[] bArr2) {
        Seed.prg(bArr, 0, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, bArr2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int horst_sign(HashFunctions hashFunctions, byte[] bArr, int i, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        byte[] bArr6 = new byte[2097152];
        byte[] bArr7 = new byte[4194272];
        expand_seed(bArr6, bArr3);
        for (int i2 = 0; i2 < 65536; i2++) {
            hashFunctions.hash_n_n(bArr7, (65535 + i2) * 32, bArr6, i2 * 32);
        }
        for (int i3 = 0; i3 < 16; i3++) {
            int i4 = 16 - i3;
            long j = (1 << i4) - 1;
            int i5 = 1 << (i4 - 1);
            long j2 = i5 - 1;
            for (int i6 = 0; i6 < i5; i6++) {
                hashFunctions.hash_2n_n_mask(bArr7, (int) ((i6 + j2) * 32), bArr7, (int) (((i6 * 2) + j) * 32), bArr4, i3 * 2 * 32);
            }
        }
        int i7 = 2016;
        while (i7 < 4064) {
            bArr[i] = bArr7[i7];
            i7++;
            i++;
        }
        for (int i8 = 0; i8 < 32; i8++) {
            int i9 = i8 * 2;
            int i10 = (bArr5[i9] & 255) + ((bArr5[i9 + 1] & 255) << 8);
            int i11 = 0;
            while (i11 < 32) {
                bArr[i] = bArr6[(i10 * 32) + i11];
                i11++;
                i++;
            }
            int i12 = i10 + 65535;
            for (int i13 = 0; i13 < 10; i13++) {
                int i14 = (i12 & 1) != 0 ? i12 + 1 : i12 - 1;
                int i15 = 0;
                while (i15 < 32) {
                    bArr[i] = bArr7[(i14 * 32) + i15];
                    i15++;
                    i++;
                }
                i12 = (i14 - 1) / 2;
            }
        }
        for (int i16 = 0; i16 < 32; i16++) {
            bArr2[i16] = bArr7[i16];
        }
        return HORST_SIGBYTES;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int horst_verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[1024];
        int i2 = i + 2048;
        for (int i3 = 0; i3 < 32; i3++) {
            int i4 = i3 * 2;
            int i5 = (bArr4[i4] & 255) + ((bArr4[i4 + 1] & 255) << 8);
            if ((i5 & 1) == 0) {
                hashFunctions.hash_n_n(bArr5, 0, bArr2, i2);
                for (int i6 = 0; i6 < 32; i6++) {
                    bArr5[i6 + 32] = bArr2[i2 + 32 + i6];
                }
            } else {
                hashFunctions.hash_n_n(bArr5, 32, bArr2, i2);
                for (int i7 = 0; i7 < 32; i7++) {
                    bArr5[i7] = bArr2[i2 + 32 + i7];
                }
            }
            i2 += 64;
            int i8 = 1;
            while (i8 < 10) {
                int i9 = i5 >>> 1;
                if ((i9 & 1) == 0) {
                    hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr3, (i8 - 1) * 2 * 32);
                    for (int i10 = 0; i10 < 32; i10++) {
                        bArr5[i10 + 32] = bArr2[i2 + i10];
                    }
                } else {
                    hashFunctions.hash_2n_n_mask(bArr5, 32, bArr5, 0, bArr3, (i8 - 1) * 2 * 32);
                    for (int i11 = 0; i11 < 32; i11++) {
                        bArr5[i11] = bArr2[i2 + i11];
                    }
                }
                i2 += 32;
                i8++;
                i5 = i9;
            }
            hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr3, 576);
            for (int i12 = 0; i12 < 32; i12++) {
                if (bArr2[i + ((i5 >>> 1) * 32) + i12] != bArr5[i12]) {
                    for (int i13 = 0; i13 < 32; i13++) {
                        bArr[i13] = (byte) 0;
                    }
                    return -1;
                }
            }
        }
        for (int i14 = 0; i14 < 32; i14++) {
            hashFunctions.hash_2n_n_mask(bArr5, i14 * 32, bArr2, i + (i14 * 2 * 32), bArr3, 640);
        }
        for (int i15 = 0; i15 < 16; i15++) {
            hashFunctions.hash_2n_n_mask(bArr5, i15 * 32, bArr5, i15 * 2 * 32, bArr3, 704);
        }
        for (int i16 = 0; i16 < 8; i16++) {
            hashFunctions.hash_2n_n_mask(bArr5, i16 * 32, bArr5, i16 * 2 * 32, bArr3, 768);
        }
        for (int i17 = 0; i17 < 4; i17++) {
            hashFunctions.hash_2n_n_mask(bArr5, i17 * 32, bArr5, i17 * 2 * 32, bArr3, 832);
        }
        for (int i18 = 0; i18 < 2; i18++) {
            hashFunctions.hash_2n_n_mask(bArr5, i18 * 32, bArr5, i18 * 2 * 32, bArr3, 896);
        }
        hashFunctions.hash_2n_n_mask(bArr, 0, bArr5, 0, bArr3, 960);
        return 0;
    }
}
