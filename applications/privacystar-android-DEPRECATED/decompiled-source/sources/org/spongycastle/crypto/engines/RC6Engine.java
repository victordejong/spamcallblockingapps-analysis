package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/RC6Engine.class */
public class RC6Engine implements BlockCipher {
    private static final int LGW = 5;
    private static final int P32 = -1209970333;
    private static final int Q32 = -1640531527;
    private static final int _noRounds = 20;
    private static final int bytesPerWord = 4;
    private static final int wordSize = 32;

    /* renamed from: _S */
    private int[] f1259_S = null;
    private boolean forEncryption;

    private int bytesToWord(byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = 3; i3 >= 0; i3--) {
            i2 = (i2 << 8) + (bArr[i3 + i] & 255);
        }
        return i2;
    }

    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int bytesToWord = bytesToWord(bArr, i);
        int bytesToWord2 = bytesToWord(bArr, i + 4);
        int bytesToWord3 = bytesToWord(bArr, i + 8);
        int bytesToWord4 = bytesToWord(bArr, i + 12);
        int i3 = bytesToWord3 - this.f1259_S[43];
        int i4 = bytesToWord - this.f1259_S[42];
        int i5 = 20;
        while (i5 >= 1) {
            int rotateLeft = rotateLeft(((i4 * 2) + 1) * i4, 5);
            int rotateLeft2 = rotateLeft(((i3 * 2) + 1) * i3, 5);
            int i6 = i5 * 2;
            int rotateRight = rotateRight(bytesToWord2 - this.f1259_S[i6 + 1], rotateLeft);
            i5--;
            i4 = rotateRight(bytesToWord4 - this.f1259_S[i6], rotateLeft2) ^ rotateLeft;
            bytesToWord4 = i3;
            i3 = rotateRight ^ rotateLeft2;
            bytesToWord2 = i4;
        }
        int i7 = this.f1259_S[1];
        int i8 = this.f1259_S[0];
        wordToBytes(i4, bArr2, i2);
        wordToBytes(bytesToWord2 - i8, bArr2, i2 + 4);
        wordToBytes(i3, bArr2, i2 + 8);
        wordToBytes(bytesToWord4 - i7, bArr2, i2 + 12);
        return 16;
    }

    private int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int bytesToWord = bytesToWord(bArr, i);
        int bytesToWord2 = bytesToWord(bArr, i + 4);
        int bytesToWord3 = bytesToWord(bArr, i + 8);
        int bytesToWord4 = bytesToWord(bArr, i + 12);
        int i3 = bytesToWord2 + this.f1259_S[0];
        int i4 = bytesToWord4 + this.f1259_S[1];
        int i5 = 1;
        while (i5 <= 20) {
            int rotateLeft = rotateLeft(((i3 * 2) + 1) * i3, 5);
            int rotateLeft2 = rotateLeft(((i4 * 2) + 1) * i4, 5);
            int rotateLeft3 = rotateLeft(bytesToWord ^ rotateLeft, rotateLeft2);
            int i6 = i5 * 2;
            i5++;
            i4 = rotateLeft3 + this.f1259_S[i6];
            bytesToWord = i3;
            i3 = rotateLeft(bytesToWord3 ^ rotateLeft2, rotateLeft) + this.f1259_S[i6 + 1];
            bytesToWord3 = i4;
        }
        int i7 = this.f1259_S[42];
        int i8 = this.f1259_S[43];
        wordToBytes(bytesToWord + i7, bArr2, i2);
        wordToBytes(i3, bArr2, i2 + 4);
        wordToBytes(bytesToWord3 + i8, bArr2, i2 + 8);
        wordToBytes(i4, bArr2, i2 + 12);
        return 16;
    }

    private int rotateLeft(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    private int rotateRight(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    private void setKey(byte[] bArr) {
        int length = (bArr.length + 3) / 4;
        int[] iArr = new int[((bArr.length + 4) - 1) / 4];
        for (int length2 = bArr.length - 1; length2 >= 0; length2--) {
            int i = length2 / 4;
            iArr[i] = (iArr[i] << 8) + (bArr[length2] & 255);
        }
        this.f1259_S = new int[44];
        this.f1259_S[0] = P32;
        for (int i2 = 1; i2 < this.f1259_S.length; i2++) {
            this.f1259_S[i2] = this.f1259_S[i2 - 1] - 1640531527;
        }
        int length3 = iArr.length > this.f1259_S.length ? iArr.length * 3 : this.f1259_S.length * 3;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length3; i7++) {
            int[] iArr2 = this.f1259_S;
            i4 = rotateLeft(this.f1259_S[i3] + i4 + i5, 3);
            iArr2[i3] = i4;
            i5 = rotateLeft(iArr[i6] + i4 + i5, i5 + i4);
            iArr[i6] = i5;
            i3 = (i3 + 1) % this.f1259_S.length;
            i6 = (i6 + 1) % iArr.length;
        }
    }

    private void wordToBytes(int i, byte[] bArr, int i2) {
        int i3 = i;
        for (int i4 = 0; i4 < 4; i4++) {
            bArr[i4 + i2] = (byte) i3;
            i3 >>>= 8;
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC6";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to RC6 init - " + cipherParameters.getClass().getName());
        }
        this.forEncryption = z;
        setKey(((KeyParameter) cipherParameters).getKey());
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int blockSize = getBlockSize();
        if (this.f1259_S == null) {
            throw new IllegalStateException("RC6 engine not initialised");
        } else if (i + blockSize > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (blockSize + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }
}
