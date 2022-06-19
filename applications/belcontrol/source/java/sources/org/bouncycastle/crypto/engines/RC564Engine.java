package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.RC5Parameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/RC564Engine.class */
public class RC564Engine implements BlockCipher {
    private static final long P64 = -5196783011329398165L;
    private static final long Q64 = -7046029254386353131L;
    private static final int bytesPerWord = 8;
    private static final int wordSize = 64;
    private boolean forEncryption;
    private int _noRounds = 12;

    /* renamed from: _S */
    private long[] f7492_S = null;

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    private long bytesToWord(byte[] bArr, int i) {
        char c = 0;
        for (int i2 = 7; i2 >= 0; i2--) {
            c = (c << '\b') + (bArr[i2 + i] & 255);
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        char bytesToWord = bytesToWord(bArr, i);
        char bytesToWord2 = bytesToWord(bArr, i + 8);
        for (int i3 = this._noRounds; i3 >= 1; i3--) {
            int i4 = i3 * 2;
            bytesToWord2 = rotateRight(bytesToWord2 - this.f7492_S[i4 + 1], bytesToWord) ^ bytesToWord;
            bytesToWord = rotateRight(bytesToWord - this.f7492_S[i4], bytesToWord2) ^ bytesToWord2;
        }
        wordToBytes(bytesToWord - this.f7492_S[0], bArr2, i2);
        wordToBytes(bytesToWord2 - this.f7492_S[1], bArr2, i2 + 8);
        return 16;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        char bytesToWord = bytesToWord(bArr, i) + this.f7492_S[0];
        char bytesToWord2 = bytesToWord(bArr, i + 8) + this.f7492_S[1];
        for (int i3 = 1; i3 <= this._noRounds; i3++) {
            int i4 = i3 * 2;
            bytesToWord = rotateLeft(bytesToWord ^ bytesToWord2, bytesToWord2) + this.f7492_S[i4];
            bytesToWord2 = rotateLeft(bytesToWord2 ^ bytesToWord, bytesToWord) + this.f7492_S[i4 + 1];
        }
        wordToBytes(bytesToWord, bArr2, i2);
        wordToBytes(bytesToWord2, bArr2, i2 + 8);
        return 16;
    }

    private long rotateLeft(long j, long j2) {
        long j3 = j2 & 63;
        return (j >>> ((int) (64 - j3))) | (j << ((int) j3));
    }

    private long rotateRight(long j, long j2) {
        long j3 = j2 & 63;
        return (j << ((int) (64 - j3))) | (j >>> ((int) j3));
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    private void setKey(byte[] bArr) {
        long[] jArr;
        int length = (bArr.length + 7) / 8;
        long[] jArr2 = new long[length];
        int i = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            int i3 = i2 / 8;
            jArr2[i3] = jArr2[i3] + ((bArr[i2] & 255) << ((i2 % 8) * 8));
        }
        long[] jArr3 = new long[(this._noRounds + 1) * 2];
        this.f7492_S = jArr3;
        jArr3[0] = -5196783011329398165L;
        int i4 = 1;
        while (true) {
            jArr = this.f7492_S;
            if (i4 >= jArr.length) {
                break;
            }
            jArr[i4] = jArr[i4 - 1] - 7046029254386353131L;
            i4++;
        }
        int length2 = length > jArr.length ? length * 3 : jArr.length * 3;
        char c = 0;
        char c2 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i < length2) {
            long[] jArr4 = this.f7492_S;
            long j = jArr4[i5];
            char c3 = c == 1 ? 1 : 0;
            boolean z = c == 1 ? 1 : 0;
            char c4 = c2 == 1 ? 1 : 0;
            boolean z2 = c2 == 1 ? 1 : 0;
            char rotateLeft = rotateLeft(j + c3 + c4, 3L);
            long j2 = rotateLeft == 1 ? 1 : 0;
            long j3 = rotateLeft == 1 ? 1 : 0;
            jArr4[i5] = j2;
            long j4 = jArr2[i6];
            long j5 = rotateLeft == 1 ? 1L : 0L;
            long j6 = rotateLeft == 1 ? 1L : 0L;
            char rotateLeft2 = rotateLeft(j4 + j5 + c2, c2 + rotateLeft);
            long j7 = rotateLeft2 == 1 ? 1 : 0;
            long j8 = rotateLeft2 == 1 ? 1 : 0;
            jArr2[i6] = j7;
            i5 = (i5 + 1) % this.f7492_S.length;
            i6 = (i6 + 1) % length;
            i++;
            c = rotateLeft;
            c2 = rotateLeft2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    private void wordToBytes(long j, byte[] bArr, int i) {
        ?? r6 = j;
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i2 + i] = (byte) r6;
            r6 >>>= '\b';
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC5-64";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof RC5Parameters)) {
            throw new IllegalArgumentException("invalid parameter passed to RC564 init - " + cipherParameters.getClass().getName());
        }
        RC5Parameters rC5Parameters = (RC5Parameters) cipherParameters;
        this.forEncryption = z;
        this._noRounds = rC5Parameters.getRounds();
        setKey(rC5Parameters.getKey());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
