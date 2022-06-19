package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/HC128Engine.class */
public class HC128Engine implements StreamCipher {
    private boolean initialised;

    /* renamed from: iv */
    private byte[] f7478iv;
    private byte[] key;

    /* renamed from: p */
    private int[] f7479p = new int[512];

    /* renamed from: q */
    private int[] f7480q = new int[512];
    private int cnt = 0;
    private byte[] buf = new byte[4];
    private int idx = 0;

    private static int dim(int i, int i2) {
        return mod512(i - i2);
    }

    /* renamed from: f1 */
    private static int m966f1(int i) {
        return (i >>> 3) ^ (rotateRight(i, 7) ^ rotateRight(i, 18));
    }

    /* renamed from: f2 */
    private static int m965f2(int i) {
        return (i >>> 10) ^ (rotateRight(i, 17) ^ rotateRight(i, 19));
    }

    /* renamed from: g1 */
    private int m964g1(int i, int i2, int i3) {
        return (rotateRight(i, 10) ^ rotateRight(i3, 23)) + rotateRight(i2, 8);
    }

    /* renamed from: g2 */
    private int m963g2(int i, int i2, int i3) {
        return (rotateLeft(i, 10) ^ rotateLeft(i3, 23)) + rotateLeft(i2, 8);
    }

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

    /* renamed from: h1 */
    private int m962h1(int i) {
        int[] iArr = this.f7480q;
        return iArr[i & 255] + iArr[((i >> 16) & 255) + 256];
    }

    /* renamed from: h2 */
    private int m961h2(int i) {
        int[] iArr = this.f7479p;
        return iArr[i & 255] + iArr[((i >> 16) & 255) + 256];
    }

    private void init() {
        if (this.key.length == 16) {
            this.cnt = 0;
            int[] iArr = new int[1280];
            for (int i = 0; i < 16; i++) {
                int i2 = i >> 2;
                iArr[i2] = ((this.key[i] & 255) << ((i & 3) * 8)) | iArr[i2];
            }
            System.arraycopy(iArr, 0, iArr, 4, 4);
            int i3 = 0;
            while (true) {
                byte[] bArr = this.f7478iv;
                if (i3 >= bArr.length || i3 >= 16) {
                    break;
                }
                int i4 = (i3 >> 2) + 8;
                iArr[i4] = ((bArr[i3] & 255) << ((i3 & 3) * 8)) | iArr[i4];
                i3++;
            }
            System.arraycopy(iArr, 8, iArr, 12, 4);
            for (int i5 = 16; i5 < 1280; i5++) {
                iArr[i5] = m965f2(iArr[i5 - 2]) + iArr[i5 - 7] + m966f1(iArr[i5 - 15]) + iArr[i5 - 16] + i5;
            }
            System.arraycopy(iArr, 256, this.f7479p, 0, 512);
            System.arraycopy(iArr, 768, this.f7480q, 0, 512);
            for (int i6 = 0; i6 < 512; i6++) {
                this.f7479p[i6] = step();
            }
            for (int i7 = 0; i7 < 512; i7++) {
                this.f7480q[i7] = step();
            }
            this.cnt = 0;
            return;
        }
        throw new IllegalArgumentException("The key must be 128 bits long");
    }

    private static int mod1024(int i) {
        return i & 1023;
    }

    private static int mod512(int i) {
        return i & 511;
    }

    private static int rotateLeft(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    private static int rotateRight(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    private int step() {
        int i;
        int i2;
        int mod512 = mod512(this.cnt);
        if (this.cnt < 512) {
            int[] iArr = this.f7479p;
            iArr[mod512] = iArr[mod512] + m964g1(iArr[dim(mod512, 3)], this.f7479p[dim(mod512, 10)], this.f7479p[dim(mod512, 511)]);
            i = m962h1(this.f7479p[dim(mod512, 12)]);
            i2 = this.f7479p[mod512];
        } else {
            int[] iArr2 = this.f7480q;
            iArr2[mod512] = iArr2[mod512] + m963g2(iArr2[dim(mod512, 3)], this.f7480q[dim(mod512, 10)], this.f7480q[dim(mod512, 511)]);
            i = m961h2(this.f7480q[dim(mod512, 12)]);
            i2 = this.f7480q[mod512];
        }
        this.cnt = mod1024(this.cnt + 1);
        return i2 ^ i;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.f7478iv = parametersWithIV.getIV();
            cipherParameters2 = parametersWithIV.getParameters();
        } else {
            this.f7478iv = new byte[0];
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.key = ((KeyParameter) cipherParameters2).getKey();
            init();
            this.initialised = true;
            return;
        }
        throw new IllegalArgumentException("Invalid parameter passed to HC128 init - " + cipherParameters.getClass().getName());
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
