package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.MaxBytesExceededException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/Salsa20Engine.class */
public class Salsa20Engine implements StreamCipher {
    private static final int stateSize = 16;
    private int cW0;
    private int cW1;
    private int cW2;
    private static final byte[] sigma = Strings.toByteArray("expand 32-byte k");
    private static final byte[] tau = Strings.toByteArray("expand 16-byte k");
    private int index = 0;
    private int[] engineState = new int[16];

    /* renamed from: x */
    private int[] f7503x = new int[16];
    private byte[] keyStream = new byte[64];
    private byte[] workingKey = null;
    private byte[] workingIV = null;
    private boolean initialised = false;

    private int byteToIntLittle(byte[] bArr, int i) {
        return (bArr[i + 3] << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private byte[] intToByteLittle(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
        return bArr;
    }

    private boolean limitExceeded() {
        boolean z = true;
        int i = this.cW0 + 1;
        this.cW0 = i;
        if (i == 0) {
            int i2 = this.cW1 + 1;
            this.cW1 = i2;
            if (i2 != 0) {
                return false;
            }
            int i3 = this.cW2 + 1;
            this.cW2 = i3;
            if ((i3 & 32) == 0) {
                z = false;
            }
            return z;
        }
        return false;
    }

    private boolean limitExceeded(int i) {
        boolean z;
        int i2 = this.cW0;
        if (i2 >= 0) {
            this.cW0 = i2 + i;
            z = false;
        } else {
            int i3 = i2 + i;
            this.cW0 = i3;
            z = false;
            if (i3 >= 0) {
                int i4 = this.cW1 + 1;
                this.cW1 = i4;
                z = false;
                if (i4 == 0) {
                    int i5 = this.cW2 + 1;
                    this.cW2 = i5;
                    z = false;
                    if ((i5 & 32) != 0) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    private void resetCounter() {
        this.cW0 = 0;
        this.cW1 = 0;
        this.cW2 = 0;
    }

    private int rotl(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    private void salsa20WordToByte(int[] iArr, byte[] bArr) {
        int i;
        int i2;
        int i3 = 0;
        System.arraycopy(iArr, 0, this.f7503x, 0, iArr.length);
        for (int i4 = 0; i4 < 10; i4++) {
            int[] iArr2 = this.f7503x;
            iArr2[4] = iArr2[4] ^ rotl(iArr2[0] + iArr2[12], 7);
            int[] iArr3 = this.f7503x;
            iArr3[8] = iArr3[8] ^ rotl(iArr3[4] + iArr3[0], 9);
            int[] iArr4 = this.f7503x;
            iArr4[12] = iArr4[12] ^ rotl(iArr4[8] + iArr4[4], 13);
            int[] iArr5 = this.f7503x;
            iArr5[0] = iArr5[0] ^ rotl(iArr5[12] + iArr5[8], 18);
            int[] iArr6 = this.f7503x;
            iArr6[9] = iArr6[9] ^ rotl(iArr6[5] + iArr6[1], 7);
            int[] iArr7 = this.f7503x;
            iArr7[13] = iArr7[13] ^ rotl(iArr7[9] + iArr7[5], 9);
            int[] iArr8 = this.f7503x;
            iArr8[1] = iArr8[1] ^ rotl(iArr8[13] + iArr8[9], 13);
            int[] iArr9 = this.f7503x;
            iArr9[5] = iArr9[5] ^ rotl(iArr9[1] + iArr9[13], 18);
            int[] iArr10 = this.f7503x;
            iArr10[14] = rotl(iArr10[10] + iArr10[6], 7) ^ iArr10[14];
            int[] iArr11 = this.f7503x;
            iArr11[2] = rotl(iArr11[14] + iArr11[10], 9) ^ iArr11[2];
            int[] iArr12 = this.f7503x;
            iArr12[6] = iArr12[6] ^ rotl(iArr12[2] + iArr12[14], 13);
            int[] iArr13 = this.f7503x;
            iArr13[10] = iArr13[10] ^ rotl(iArr13[6] + iArr13[2], 18);
            int[] iArr14 = this.f7503x;
            iArr14[3] = rotl(iArr14[15] + iArr14[11], 7) ^ iArr14[3];
            int[] iArr15 = this.f7503x;
            iArr15[7] = iArr15[7] ^ rotl(iArr15[3] + iArr15[15], 9);
            int[] iArr16 = this.f7503x;
            iArr16[11] = iArr16[11] ^ rotl(iArr16[7] + iArr16[3], 13);
            int[] iArr17 = this.f7503x;
            iArr17[15] = iArr17[15] ^ rotl(iArr17[11] + iArr17[7], 18);
            int[] iArr18 = this.f7503x;
            iArr18[1] = iArr18[1] ^ rotl(iArr18[0] + iArr18[3], 7);
            int[] iArr19 = this.f7503x;
            iArr19[2] = iArr19[2] ^ rotl(iArr19[1] + iArr19[0], 9);
            int[] iArr20 = this.f7503x;
            iArr20[3] = iArr20[3] ^ rotl(iArr20[2] + iArr20[1], 13);
            int[] iArr21 = this.f7503x;
            iArr21[0] = rotl(iArr21[3] + iArr21[2], 18) ^ iArr21[0];
            int[] iArr22 = this.f7503x;
            iArr22[6] = iArr22[6] ^ rotl(iArr22[5] + iArr22[4], 7);
            int[] iArr23 = this.f7503x;
            iArr23[7] = iArr23[7] ^ rotl(iArr23[6] + iArr23[5], 9);
            int[] iArr24 = this.f7503x;
            iArr24[4] = iArr24[4] ^ rotl(iArr24[7] + iArr24[6], 13);
            int[] iArr25 = this.f7503x;
            iArr25[5] = rotl(iArr25[4] + iArr25[7], 18) ^ iArr25[5];
            int[] iArr26 = this.f7503x;
            iArr26[11] = iArr26[11] ^ rotl(iArr26[10] + iArr26[9], 7);
            int[] iArr27 = this.f7503x;
            iArr27[8] = iArr27[8] ^ rotl(iArr27[11] + iArr27[10], 9);
            int[] iArr28 = this.f7503x;
            iArr28[9] = iArr28[9] ^ rotl(iArr28[8] + iArr28[11], 13);
            int[] iArr29 = this.f7503x;
            iArr29[10] = rotl(iArr29[9] + iArr29[8], 18) ^ iArr29[10];
            int[] iArr30 = this.f7503x;
            iArr30[12] = iArr30[12] ^ rotl(iArr30[15] + iArr30[14], 7);
            int[] iArr31 = this.f7503x;
            iArr31[13] = iArr31[13] ^ rotl(iArr31[12] + iArr31[15], 9);
            int[] iArr32 = this.f7503x;
            iArr32[14] = rotl(iArr32[13] + iArr32[12], 13) ^ iArr32[14];
            int[] iArr33 = this.f7503x;
            iArr33[15] = iArr33[15] ^ rotl(iArr33[14] + iArr33[13], 18);
        }
        int i5 = 0;
        while (true) {
            i = 16;
            i2 = i5;
            if (i3 < 16) {
                intToByteLittle(this.f7503x[i3] + iArr[i3], bArr, i5);
                i5 += 4;
                i3++;
            }
        }
        while (true) {
            int[] iArr34 = this.f7503x;
            if (i < iArr34.length) {
                intToByteLittle(iArr34[i], bArr, i2);
                i2 += 4;
                i++;
            } else {
                return;
            }
        }
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        int i;
        byte[] bArr3;
        this.workingKey = bArr;
        this.workingIV = bArr2;
        this.index = 0;
        resetCounter();
        this.engineState[1] = byteToIntLittle(this.workingKey, 0);
        this.engineState[2] = byteToIntLittle(this.workingKey, 4);
        this.engineState[3] = byteToIntLittle(this.workingKey, 8);
        this.engineState[4] = byteToIntLittle(this.workingKey, 12);
        byte[] bArr4 = this.workingKey;
        if (bArr4.length == 32) {
            bArr3 = sigma;
            i = 16;
        } else {
            bArr3 = tau;
            i = 0;
        }
        this.engineState[11] = byteToIntLittle(bArr4, i);
        this.engineState[12] = byteToIntLittle(this.workingKey, i + 4);
        this.engineState[13] = byteToIntLittle(this.workingKey, i + 8);
        this.engineState[14] = byteToIntLittle(this.workingKey, i + 12);
        this.engineState[0] = byteToIntLittle(bArr3, 0);
        this.engineState[5] = byteToIntLittle(bArr3, 4);
        this.engineState[10] = byteToIntLittle(bArr3, 8);
        this.engineState[15] = byteToIntLittle(bArr3, 12);
        this.engineState[6] = byteToIntLittle(this.workingIV, 0);
        this.engineState[7] = byteToIntLittle(this.workingIV, 4);
        int[] iArr = this.engineState;
        iArr[9] = 0;
        iArr[8] = 0;
        this.initialised = true;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Salsa20";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv == null || iv.length != 8) {
                throw new IllegalArgumentException("Salsa20 requires exactly 8 bytes of IV");
            }
            if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
                throw new IllegalArgumentException("Salsa20 Init parameters must include a key");
            }
            byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
            this.workingKey = key;
            this.workingIV = iv;
            setKey(key, iv);
            return;
        }
        throw new IllegalArgumentException("Salsa20 Init parameters must include an IV");
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
            if (limitExceeded(i2)) {
                throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
            }
            for (int i4 = 0; i4 < i2; i4++) {
                if (this.index == 0) {
                    salsa20WordToByte(this.engineState, this.keyStream);
                    int[] iArr = this.engineState;
                    iArr[8] = iArr[8] + 1;
                    if (iArr[8] == 0) {
                        iArr[9] = iArr[9] + 1;
                    }
                }
                byte[] bArr3 = this.keyStream;
                int i5 = this.index;
                bArr2[i4 + i3] = (byte) (bArr3[i5] ^ bArr[i4 + i]);
                this.index = (i5 + 1) & 63;
            }
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        setKey(this.workingKey, this.workingIV);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        if (!limitExceeded()) {
            if (this.index == 0) {
                salsa20WordToByte(this.engineState, this.keyStream);
                int[] iArr = this.engineState;
                iArr[8] = iArr[8] + 1;
                if (iArr[8] == 0) {
                    iArr[9] = iArr[9] + 1;
                }
            }
            byte[] bArr = this.keyStream;
            int i = this.index;
            byte b2 = (byte) (b ^ bArr[i]);
            this.index = (i + 1) & 63;
            return b2;
        }
        throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
    }
}
