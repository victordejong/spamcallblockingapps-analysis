package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/HC256Engine.class */
public class HC256Engine implements StreamCipher {
    private boolean initialised;

    /* renamed from: iv */
    private byte[] f7481iv;
    private byte[] key;

    /* renamed from: p */
    private int[] f7482p = new int[1024];

    /* renamed from: q */
    private int[] f7483q = new int[1024];
    private int cnt = 0;
    private byte[] buf = new byte[4];
    private int idx = 0;

    private byte getByte() {
        if (this.idx == 0) {
            int step = step();
            byte[] bArr = this.buf;
            bArr[0] = (byte) (step & 255);
            int i = step >> 8;
            bArr[1] = (byte) (i & 255);
            int i2 = i >> 8;
            bArr[2] = (byte) (i2 & 255);
            bArr[3] = (byte) ((i2 >> 8) & 255);
        }
        byte[] bArr2 = this.buf;
        int i3 = this.idx;
        byte b = bArr2[i3];
        this.idx = 3 & (i3 + 1);
        return b;
    }

    private void init() {
        int i;
        byte[] bArr = this.key;
        if (bArr.length == 32 || bArr.length == 16) {
            if (this.f7481iv.length < 16) {
                throw new IllegalArgumentException("The IV must be at least 128 bits long");
            }
            if (bArr.length != 32) {
                byte[] bArr2 = new byte[32];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                byte[] bArr3 = this.key;
                System.arraycopy(bArr3, 0, bArr2, 16, bArr3.length);
                this.key = bArr2;
            }
            byte[] bArr4 = this.f7481iv;
            if (bArr4.length < 32) {
                byte[] bArr5 = new byte[32];
                System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
                byte[] bArr6 = this.f7481iv;
                System.arraycopy(bArr6, 0, bArr5, bArr6.length, 32 - bArr6.length);
                this.f7481iv = bArr5;
            }
            this.cnt = 0;
            int[] iArr = new int[2560];
            for (int i2 = 0; i2 < 32; i2++) {
                int i3 = i2 >> 2;
                iArr[i3] = iArr[i3] | ((this.key[i2] & 255) << ((i2 & 3) * 8));
            }
            int i4 = 0;
            while (true) {
                if (i4 < 32) {
                    int i5 = (i4 >> 2) + 8;
                    iArr[i5] = iArr[i5] | ((this.f7481iv[i4] & 255) << ((i4 & 3) * 8));
                    i4++;
                }
            }
            for (i = 16; i < 2560; i++) {
                int i6 = iArr[i - 2];
                int i7 = iArr[i - 15];
                iArr[i] = ((i6 >>> 10) ^ (rotateRight(i6, 17) ^ rotateRight(i6, 19))) + iArr[i - 7] + ((i7 >>> 3) ^ (rotateRight(i7, 7) ^ rotateRight(i7, 18))) + iArr[i - 16] + i;
            }
            System.arraycopy(iArr, 512, this.f7482p, 0, 1024);
            System.arraycopy(iArr, 1536, this.f7483q, 0, 1024);
            for (int i8 = 0; i8 < 4096; i8++) {
                step();
            }
            this.cnt = 0;
            return;
        }
        throw new IllegalArgumentException("The key must be 128/256 bits long");
    }

    private static int rotateRight(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    private int step() {
        int i;
        int i2;
        int i3 = this.cnt;
        int i4 = i3 & 1023;
        if (i3 < 1024) {
            int[] iArr = this.f7482p;
            int i5 = iArr[(i4 - 3) & 1023];
            int i6 = iArr[(i4 - 1023) & 1023];
            int i7 = iArr[i4];
            int i8 = iArr[(i4 - 10) & 1023];
            int rotateRight = rotateRight(i5, 10);
            int rotateRight2 = rotateRight(i6, 23);
            int[] iArr2 = this.f7483q;
            iArr[i4] = i7 + i8 + (rotateRight2 ^ rotateRight) + iArr2[(i5 ^ i6) & 1023];
            int[] iArr3 = this.f7482p;
            int i9 = iArr3[(i4 - 12) & 1023];
            i2 = iArr2[i9 & 255] + iArr2[((i9 >> 8) & 255) + 256] + iArr2[((i9 >> 16) & 255) + 512] + iArr2[((i9 >> 24) & 255) + 768];
            i = iArr3[i4];
        } else {
            int[] iArr4 = this.f7483q;
            int i10 = iArr4[(i4 - 3) & 1023];
            int i11 = iArr4[(i4 - 1023) & 1023];
            int i12 = iArr4[i4];
            int i13 = iArr4[(i4 - 10) & 1023];
            int rotateRight3 = rotateRight(i10, 10);
            int rotateRight4 = rotateRight(i11, 23);
            int[] iArr5 = this.f7482p;
            iArr4[i4] = i12 + i13 + (rotateRight4 ^ rotateRight3) + iArr5[(i10 ^ i11) & 1023];
            int[] iArr6 = this.f7483q;
            int i14 = iArr6[(i4 - 12) & 1023];
            i2 = iArr5[i14 & 255] + iArr5[((i14 >> 8) & 255) + 256] + iArr5[((i14 >> 16) & 255) + 512] + iArr5[((i14 >> 24) & 255) + 768];
            i = iArr6[i4];
        }
        this.cnt = (this.cnt + 1) & 2047;
        return i ^ i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-256";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.f7481iv = parametersWithIV.getIV();
            cipherParameters2 = parametersWithIV.getParameters();
        } else {
            this.f7481iv = new byte[0];
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.key = ((KeyParameter) cipherParameters2).getKey();
            init();
            this.initialised = true;
            return;
        }
        throw new IllegalArgumentException("Invalid parameter passed to HC256 init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else {
            if (i3 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ getByte());
            }
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.idx = 0;
        init();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        return (byte) (b ^ getByte());
    }
}
