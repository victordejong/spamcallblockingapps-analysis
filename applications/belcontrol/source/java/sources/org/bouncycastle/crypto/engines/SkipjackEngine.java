package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/SkipjackEngine.class */
public class SkipjackEngine implements BlockCipher {
    public static final int BLOCK_SIZE = 8;
    public static short[] ftable = {163, 215, 9, 131, 248, 72, 246, 244, 179, 33, 21, 120, 153, 177, 175, 249, 231, 45, 77, 138, 206, 76, 202, 46, 82, 149, 217, 30, 78, 56, 68, 40, 10, 223, 2, 160, 23, 241, 96, 104, 18, 183, 122, 195, 233, 250, 61, 83, 150, 132, 107, 186, 242, 99, 154, 25, 124, 174, 229, 245, 247, 22, 106, 162, 57, 182, 123, 15, 193, 147, 129, 27, 238, 180, 26, 234, 208, 145, 47, 184, 85, 185, 218, 133, 63, 65, 191, 224, 90, 88, 128, 95, 102, 11, 216, 144, 53, 213, 192, 167, 51, 6, 101, 105, 69, 0, 148, 86, 109, 152, 155, 118, 151, 252, 178, 194, 176, 254, 219, 32, 225, 235, 214, 228, 221, 71, 74, 29, 66, 237, 158, 110, 73, 60, 205, 67, 39, 210, 7, 212, 222, 199, 103, 24, 137, 203, 48, 31, 141, 198, 143, 170, 200, 116, 220, 201, 93, 92, 49, 164, 112, 136, 97, 44, 159, 13, 43, 135, 80, 130, 84, 100, 38, 125, 3, 64, 52, 75, 28, 115, 209, 196, 253, 59, 204, 251, 127, 171, 230, 62, 91, 165, 173, 4, 35, 156, 20, 81, 34, 240, 41, 121, 113, 126, 255, 140, 14, 226, 12, 239, 188, 114, 117, 111, 55, 161, 236, 211, 142, 98, 139, 134, 16, 232, 8, 119, 17, 190, 146, 79, 36, 197, 50, 54, 157, 207, 243, 166, 187, 172, 94, 108, 169, 19, 87, 37, 181, 227, 189, 168, 58, 1, 5, 89, 42, 70};
    private boolean encrypting;
    private int[] key0;
    private int[] key1;
    private int[] key2;
    private int[] key3;

    /* renamed from: g */
    private int m957g(int i, int i2) {
        int i3 = i2 & 255;
        short[] sArr = ftable;
        int i4 = ((i2 >> 8) & 255) ^ sArr[this.key0[i] ^ i3];
        int i5 = i3 ^ sArr[this.key1[i] ^ i4];
        int i6 = i4 ^ sArr[this.key2[i] ^ i5];
        return (i6 << 8) + (sArr[this.key3[i] ^ i6] ^ i5);
    }

    /* renamed from: h */
    private int m956h(int i, int i2) {
        int i3 = (i2 >> 8) & 255;
        short[] sArr = ftable;
        int i4 = (i2 & 255) ^ sArr[this.key3[i] ^ i3];
        int i5 = i3 ^ sArr[this.key2[i] ^ i4];
        int i6 = i4 ^ sArr[this.key1[i] ^ i5];
        return ((sArr[this.key0[i] ^ i6] ^ i5) << 8) + i6;
    }

    public int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4 = (bArr[i + 0] << 8) + (bArr[i + 1] & 255);
        int i5 = (bArr[i + 2] << 8) + (bArr[i + 3] & 255);
        int i6 = (bArr[i + 4] << 8) + (bArr[i + 5] & 255);
        int i7 = (bArr[i + 6] << 8) + (bArr[i + 7] & 255);
        int i8 = 31;
        int i9 = 0;
        int i10 = i4;
        while (i9 < 2) {
            int i11 = 0;
            int i12 = i8;
            int i13 = i7;
            int i14 = i5;
            while (true) {
                i3 = i13;
                if (i11 >= 8) {
                    break;
                }
                int m956h = m956h(i12, i14);
                i11++;
                i13 = i10;
                i10 = m956h;
                i14 = (i6 ^ m956h) ^ (i12 + 1);
                i6 = i3;
                i12--;
            }
            int i15 = 0;
            int i16 = i3;
            i5 = i14;
            while (true) {
                i7 = i16;
                if (i15 < 8) {
                    i15++;
                    i16 = (i10 ^ i5) ^ (i12 + 1);
                    i10 = m956h(i12, i5);
                    i5 = i6;
                    i6 = i7;
                    i12--;
                }
            }
            i9++;
            i8 = i12;
        }
        bArr2[i2 + 0] = (byte) (i10 >> 8);
        bArr2[i2 + 1] = (byte) i10;
        bArr2[i2 + 2] = (byte) (i5 >> 8);
        bArr2[i2 + 3] = (byte) i5;
        bArr2[i2 + 4] = (byte) (i6 >> 8);
        bArr2[i2 + 5] = (byte) i6;
        bArr2[i2 + 6] = (byte) (i7 >> 8);
        bArr2[i2 + 7] = (byte) i7;
        return 8;
    }

    public int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = (bArr[i + 0] << 8) + (bArr[i + 1] & 255);
        int i4 = (bArr[i + 2] << 8) + (bArr[i + 3] & 255);
        int i5 = (bArr[i + 4] << 8) + (bArr[i + 5] & 255);
        int i6 = (bArr[i + 6] << 8) + (bArr[i + 7] & 255);
        int i7 = 0;
        int i8 = i5;
        for (int i9 = 0; i9 < 2; i9++) {
            int i10 = 0;
            while (i10 < 8) {
                int m957g = m957g(i7, i3);
                int i11 = i7 + 1;
                i10++;
                i3 = (i6 ^ m957g) ^ i11;
                i6 = i8;
                i8 = i4;
                i4 = m957g;
                i7 = i11;
            }
            int i12 = 0;
            while (true) {
                int i13 = i12;
                if (i13 < 8) {
                    int i14 = i7 + 1;
                    int m957g2 = m957g(i7, i3);
                    i7 = i14;
                    int i15 = i6;
                    i6 = i8;
                    i8 = (i4 ^ i3) ^ i14;
                    i3 = i15;
                    i4 = m957g2;
                    i12 = i13 + 1;
                }
            }
        }
        bArr2[i2 + 0] = (byte) (i3 >> 8);
        bArr2[i2 + 1] = (byte) i3;
        bArr2[i2 + 2] = (byte) (i4 >> 8);
        bArr2[i2 + 3] = (byte) i4;
        bArr2[i2 + 4] = (byte) (i8 >> 8);
        bArr2[i2 + 5] = (byte) i8;
        bArr2[i2 + 6] = (byte) (i6 >> 8);
        bArr2[i2 + 7] = (byte) i6;
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SKIPJACK";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to SKIPJACK init - " + cipherParameters.getClass().getName());
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.encrypting = z;
        this.key0 = new int[32];
        this.key1 = new int[32];
        this.key2 = new int[32];
        this.key3 = new int[32];
        for (int i = 0; i < 32; i++) {
            int i2 = i * 4;
            this.key0[i] = key[i2 % 10] & 255;
            this.key1[i] = key[(i2 + 1) % 10] & 255;
            this.key2[i] = key[(i2 + 2) % 10] & 255;
            this.key3[i] = key[(i2 + 3) % 10] & 255;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.key1 != null) {
            if (i + 8 > bArr.length) {
                throw new DataLengthException("input buffer too short");
            }
            if (i2 + 8 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            if (this.encrypting) {
                encryptBlock(bArr, i, bArr2, i2);
                return 8;
            }
            decryptBlock(bArr, i, bArr2, i2);
            return 8;
        }
        throw new IllegalStateException("SKIPJACK engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
