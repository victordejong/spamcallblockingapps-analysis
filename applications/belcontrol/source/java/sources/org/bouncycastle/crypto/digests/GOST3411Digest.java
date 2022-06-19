package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.engines.GOST28147Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.crypto.util.Pack;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/GOST3411Digest.class */
public class GOST3411Digest implements ExtendedDigest {

    /* renamed from: C2 */
    private static final byte[] f7311C2 = {0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, 0, -1, -1, 0, 0, 0, -1, -1, 0, -1};
    private static final int DIGEST_LENGTH = 32;

    /* renamed from: C */
    private byte[][] f7312C;

    /* renamed from: H */
    private byte[] f7313H;

    /* renamed from: K */
    private byte[] f7314K;

    /* renamed from: L */
    private byte[] f7315L;

    /* renamed from: M */
    private byte[] f7316M;

    /* renamed from: S */
    public byte[] f7317S;
    private byte[] Sum;

    /* renamed from: U */
    public byte[] f7318U;

    /* renamed from: V */
    public byte[] f7319V;

    /* renamed from: W */
    public byte[] f7320W;

    /* renamed from: a */
    public byte[] f7321a;
    private long byteCount;
    private BlockCipher cipher;
    private byte[] sBox;

    /* renamed from: wS */
    public short[] f7322wS;
    public short[] w_S;
    private byte[] xBuf;
    private int xBufOff;

    public GOST3411Digest() {
        this.f7313H = new byte[32];
        this.f7315L = new byte[32];
        this.f7316M = new byte[32];
        this.Sum = new byte[32];
        this.f7312C = new byte[4][32];
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.f7314K = new byte[32];
        this.f7321a = new byte[8];
        this.f7322wS = new short[16];
        this.w_S = new short[16];
        this.f7317S = new byte[32];
        this.f7318U = new byte[32];
        this.f7319V = new byte[32];
        this.f7320W = new byte[32];
        byte[] sBox = GOST28147Engine.getSBox("D-A");
        this.sBox = sBox;
        this.cipher.init(true, new ParametersWithSBox(null, sBox));
        reset();
    }

    public GOST3411Digest(GOST3411Digest gOST3411Digest) {
        this.f7313H = new byte[32];
        this.f7315L = new byte[32];
        this.f7316M = new byte[32];
        this.Sum = new byte[32];
        this.f7312C = new byte[4][32];
        this.xBuf = new byte[32];
        GOST28147Engine gOST28147Engine = new GOST28147Engine();
        this.cipher = gOST28147Engine;
        this.f7314K = new byte[32];
        this.f7321a = new byte[8];
        this.f7322wS = new short[16];
        this.w_S = new short[16];
        this.f7317S = new byte[32];
        this.f7318U = new byte[32];
        this.f7319V = new byte[32];
        this.f7320W = new byte[32];
        byte[] bArr = gOST3411Digest.sBox;
        this.sBox = bArr;
        gOST28147Engine.init(true, new ParametersWithSBox(null, bArr));
        reset();
        byte[] bArr2 = gOST3411Digest.f7313H;
        System.arraycopy(bArr2, 0, this.f7313H, 0, bArr2.length);
        byte[] bArr3 = gOST3411Digest.f7315L;
        System.arraycopy(bArr3, 0, this.f7315L, 0, bArr3.length);
        byte[] bArr4 = gOST3411Digest.f7316M;
        System.arraycopy(bArr4, 0, this.f7316M, 0, bArr4.length);
        byte[] bArr5 = gOST3411Digest.Sum;
        System.arraycopy(bArr5, 0, this.Sum, 0, bArr5.length);
        byte[][] bArr6 = gOST3411Digest.f7312C;
        System.arraycopy(bArr6[1], 0, this.f7312C[1], 0, bArr6[1].length);
        byte[][] bArr7 = gOST3411Digest.f7312C;
        System.arraycopy(bArr7[2], 0, this.f7312C[2], 0, bArr7[2].length);
        byte[][] bArr8 = gOST3411Digest.f7312C;
        System.arraycopy(bArr8[3], 0, this.f7312C[3], 0, bArr8[3].length);
        byte[] bArr9 = gOST3411Digest.xBuf;
        System.arraycopy(bArr9, 0, this.xBuf, 0, bArr9.length);
        this.xBufOff = gOST3411Digest.xBufOff;
        this.byteCount = gOST3411Digest.byteCount;
    }

    public GOST3411Digest(byte[] bArr) {
        this.f7313H = new byte[32];
        this.f7315L = new byte[32];
        this.f7316M = new byte[32];
        this.Sum = new byte[32];
        this.f7312C = new byte[4][32];
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.f7314K = new byte[32];
        this.f7321a = new byte[8];
        this.f7322wS = new short[16];
        this.w_S = new short[16];
        this.f7317S = new byte[32];
        this.f7318U = new byte[32];
        this.f7319V = new byte[32];
        this.f7320W = new byte[32];
        byte[] clone = Arrays.clone(bArr);
        this.sBox = clone;
        this.cipher.init(true, new ParametersWithSBox(null, clone));
        reset();
    }

    /* renamed from: A */
    private byte[] m1017A(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            this.f7321a[i] = (byte) (bArr[i] ^ bArr[i + 8]);
        }
        System.arraycopy(bArr, 8, bArr, 0, 24);
        System.arraycopy(this.f7321a, 0, bArr, 24, 8);
        return bArr;
    }

    /* renamed from: E */
    private void m1016E(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, int i2) {
        this.cipher.init(true, new KeyParameter(bArr));
        this.cipher.processBlock(bArr3, i2, bArr2, i);
    }

    /* renamed from: P */
    private byte[] m1015P(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            byte[] bArr2 = this.f7314K;
            int i2 = i * 4;
            bArr2[i2] = bArr[i];
            bArr2[i2 + 1] = bArr[i + 8];
            bArr2[i2 + 2] = bArr[i + 16];
            bArr2[i2 + 3] = bArr[i + 24];
        }
        return this.f7314K;
    }

    private void cpyBytesToShort(byte[] bArr, short[] sArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            int i2 = i * 2;
            sArr[i] = (short) ((bArr[i2] & 255) | ((bArr[i2 + 1] << 8) & 65280));
        }
    }

    private void cpyShortToBytes(short[] sArr, byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            int i2 = i * 2;
            bArr[i2 + 1] = (byte) (sArr[i] >> 8);
            bArr[i2] = (byte) sArr[i];
        }
    }

    private void finish() {
        Pack.longToLittleEndian(this.byteCount * 8, this.f7315L, 0);
        while (this.xBufOff != 0) {
            update((byte) 0);
        }
        processBlock(this.f7315L, 0);
        processBlock(this.Sum, 0);
    }

    /* renamed from: fw */
    private void m1014fw(byte[] bArr) {
        cpyBytesToShort(bArr, this.f7322wS);
        short[] sArr = this.w_S;
        short[] sArr2 = this.f7322wS;
        sArr[15] = (short) (((((sArr2[0] ^ sArr2[1]) ^ sArr2[2]) ^ sArr2[3]) ^ sArr2[12]) ^ sArr2[15]);
        System.arraycopy(sArr2, 1, sArr, 0, 15);
        cpyShortToBytes(this.w_S, bArr);
    }

    private void sumByteArray(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.Sum;
            if (i != bArr2.length) {
                int i3 = (bArr2[i] & 255) + (bArr[i] & 255) + i2;
                bArr2[i] = (byte) i3;
                i2 = i3 >>> 8;
                i++;
            } else {
                return;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        byte[] bArr2 = this.f7313H;
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "GOST3411";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    public void processBlock(byte[] bArr, int i) {
        byte[] bArr2;
        byte[] bArr3;
        System.arraycopy(bArr, i, this.f7316M, 0, 32);
        System.arraycopy(this.f7313H, 0, this.f7318U, 0, 32);
        System.arraycopy(this.f7316M, 0, this.f7319V, 0, 32);
        for (int i2 = 0; i2 < 32; i2++) {
            this.f7320W[i2] = (byte) (this.f7318U[i2] ^ this.f7319V[i2]);
        }
        m1016E(m1015P(this.f7320W), this.f7317S, 0, this.f7313H, 0);
        for (int i3 = 1; i3 < 4; i3++) {
            byte[] m1017A = m1017A(this.f7318U);
            for (int i4 = 0; i4 < 32; i4++) {
                this.f7318U[i4] = (byte) (m1017A[i4] ^ this.f7312C[i3][i4]);
            }
            this.f7319V = m1017A(m1017A(this.f7319V));
            for (int i5 = 0; i5 < 32; i5++) {
                this.f7320W[i5] = (byte) (this.f7318U[i5] ^ this.f7319V[i5]);
            }
            int i6 = i3 * 8;
            m1016E(m1015P(this.f7320W), this.f7317S, i6, this.f7313H, i6);
        }
        for (int i7 = 0; i7 < 12; i7++) {
            m1014fw(this.f7317S);
        }
        for (int i8 = 0; i8 < 32; i8++) {
            this.f7317S[i8] = (byte) (bArr3[i8] ^ this.f7316M[i8]);
        }
        m1014fw(this.f7317S);
        for (int i9 = 0; i9 < 32; i9++) {
            this.f7317S[i9] = (byte) (this.f7313H[i9] ^ bArr2[i9]);
        }
        for (int i10 = 0; i10 < 61; i10++) {
            m1014fw(this.f7317S);
        }
        byte[] bArr4 = this.f7317S;
        byte[] bArr5 = this.f7313H;
        System.arraycopy(bArr4, 0, bArr5, 0, bArr5.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f7313H;
            if (i >= bArr.length) {
                break;
            }
            bArr[i] = (byte) 0;
            i++;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.f7315L;
            if (i2 >= bArr2.length) {
                break;
            }
            bArr2[i2] = (byte) 0;
            i2++;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr3 = this.f7316M;
            if (i3 >= bArr3.length) {
                break;
            }
            bArr3[i3] = (byte) 0;
            i3++;
        }
        int i4 = 0;
        while (true) {
            byte[][] bArr4 = this.f7312C;
            if (i4 >= bArr4[1].length) {
                break;
            }
            bArr4[1][i4] = (byte) 0;
            i4++;
        }
        int i5 = 0;
        while (true) {
            byte[][] bArr5 = this.f7312C;
            if (i5 >= bArr5[3].length) {
                break;
            }
            bArr5[3][i5] = (byte) 0;
            i5++;
        }
        int i6 = 0;
        while (true) {
            byte[] bArr6 = this.Sum;
            if (i6 >= bArr6.length) {
                break;
            }
            bArr6[i6] = (byte) 0;
            i6++;
        }
        int i7 = 0;
        while (true) {
            byte[] bArr7 = this.xBuf;
            if (i7 >= bArr7.length) {
                byte[] bArr8 = f7311C2;
                System.arraycopy(bArr8, 0, this.f7312C[2], 0, bArr8.length);
                return;
            }
            bArr7[i7] = (byte) 0;
            i7++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.xBuf;
        int i = this.xBufOff;
        int i2 = i + 1;
        this.xBufOff = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            sumByteArray(bArr);
            processBlock(this.xBuf, 0);
            this.xBufOff = 0;
        }
        this.byteCount++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i2;
        int i8 = i;
        while (true) {
            i3 = i8;
            i4 = i7;
            if (this.xBufOff == 0) {
                break;
            }
            i3 = i8;
            i4 = i7;
            if (i7 <= 0) {
                break;
            }
            update(bArr[i8]);
            i8++;
            i7--;
        }
        while (true) {
            byte[] bArr2 = this.xBuf;
            i5 = i3;
            if (i4 > bArr2.length) {
                System.arraycopy(bArr, i3, bArr2, 0, bArr2.length);
                sumByteArray(this.xBuf);
                processBlock(this.xBuf, 0);
                byte[] bArr3 = this.xBuf;
                i3 += bArr3.length;
                i4 -= bArr3.length;
                this.byteCount += bArr3.length;
            }
        }
        for (i6 = i4; i6 > 0; i6--) {
            update(bArr[i5]);
            i5++;
        }
    }
}
