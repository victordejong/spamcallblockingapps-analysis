package org.spongycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/CAST6Engine.class */
public final class CAST6Engine extends CAST5Engine {
    protected static final int BLOCK_SIZE = 16;
    protected static final int ROUNDS = 12;
    protected int[] _Kr = new int[48];
    protected int[] _Km = new int[48];
    protected int[] _Tr = new int[192];
    protected int[] _Tm = new int[192];
    private int[] _workingKey = new int[8];

    protected final void CAST_Decipher(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = 0;
        while (true) {
            i6 = i;
            i7 = i2;
            i8 = i3;
            i9 = i4;
            if (i10 < 6) {
                int i11 = (11 - i10) * 4;
                i3 ^= m135F1(i4, this._Km[i11], this._Kr[i11]);
                int i12 = i11 + 1;
                i2 ^= m134F2(i3, this._Km[i12], this._Kr[i12]);
                int i13 = i11 + 2;
                i ^= m133F3(i2, this._Km[i13], this._Kr[i13]);
                int i14 = i11 + 3;
                i4 ^= m135F1(i, this._Km[i14], this._Kr[i14]);
                i10++;
            }
        }
        for (i5 = 6; i5 < 12; i5++) {
            int i15 = (11 - i5) * 4;
            int i16 = i15 + 3;
            i9 ^= m135F1(i6, this._Km[i16], this._Kr[i16]);
            int i17 = i15 + 2;
            i6 ^= m133F3(i7, this._Km[i17], this._Kr[i17]);
            int i18 = i15 + 1;
            i7 ^= m134F2(i8, this._Km[i18], this._Kr[i18]);
            i8 ^= m135F1(i9, this._Km[i15], this._Kr[i15]);
        }
        iArr[0] = i6;
        iArr[1] = i7;
        iArr[2] = i8;
        iArr[3] = i9;
    }

    protected final void CAST_Encipher(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = 0;
        while (true) {
            i6 = i;
            i7 = i2;
            i8 = i3;
            i9 = i4;
            if (i10 < 6) {
                int i11 = i10 * 4;
                i3 ^= m135F1(i4, this._Km[i11], this._Kr[i11]);
                int i12 = i11 + 1;
                i2 ^= m134F2(i3, this._Km[i12], this._Kr[i12]);
                int i13 = i11 + 2;
                i ^= m133F3(i2, this._Km[i13], this._Kr[i13]);
                int i14 = i11 + 3;
                i4 ^= m135F1(i, this._Km[i14], this._Kr[i14]);
                i10++;
            }
        }
        for (i5 = 6; i5 < 12; i5++) {
            int i15 = i5 * 4;
            int i16 = i15 + 3;
            i9 ^= m135F1(i6, this._Km[i16], this._Kr[i16]);
            int i17 = i15 + 2;
            i6 ^= m133F3(i7, this._Km[i17], this._Kr[i17]);
            int i18 = i15 + 1;
            i7 ^= m134F2(i8, this._Km[i18], this._Kr[i18]);
            i8 ^= m135F1(i9, this._Km[i15], this._Kr[i15]);
        }
        iArr[0] = i6;
        iArr[1] = i7;
        iArr[2] = i8;
        iArr[3] = i9;
    }

    @Override // org.spongycastle.crypto.engines.CAST5Engine
    protected int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        CAST_Decipher(BytesTo32bits(bArr, i), BytesTo32bits(bArr, i + 4), BytesTo32bits(bArr, i + 8), BytesTo32bits(bArr, i + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i2);
        Bits32ToBytes(iArr[1], bArr2, i2 + 4);
        Bits32ToBytes(iArr[2], bArr2, i2 + 8);
        Bits32ToBytes(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    @Override // org.spongycastle.crypto.engines.CAST5Engine
    protected int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        CAST_Encipher(BytesTo32bits(bArr, i), BytesTo32bits(bArr, i + 4), BytesTo32bits(bArr, i + 8), BytesTo32bits(bArr, i + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i2);
        Bits32ToBytes(iArr[1], bArr2, i2 + 4);
        Bits32ToBytes(iArr[2], bArr2, i2 + 8);
        Bits32ToBytes(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    @Override // org.spongycastle.crypto.engines.CAST5Engine, org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "CAST6";
    }

    @Override // org.spongycastle.crypto.engines.CAST5Engine, org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.spongycastle.crypto.engines.CAST5Engine, org.spongycastle.crypto.BlockCipher
    public void reset() {
    }

    @Override // org.spongycastle.crypto.engines.CAST5Engine
    protected void setKey(byte[] bArr) {
        int i = 0;
        int i2 = 1518500249;
        int i3 = 19;
        while (i < 24) {
            for (int i4 = 0; i4 < 8; i4++) {
                int i5 = (i * 8) + i4;
                this._Tm[i5] = i2;
                i2 += 1859775393;
                this._Tr[i5] = i3;
                i3 = (i3 + 17) & 31;
            }
            i++;
            i3 = i3;
            i2 = i2;
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int i6 = 0; i6 < 8; i6++) {
            this._workingKey[i6] = BytesTo32bits(bArr2, i6 * 4);
        }
        for (int i7 = 0; i7 < 12; i7++) {
            int i8 = i7 * 2;
            int i9 = i8 * 8;
            int[] iArr = this._workingKey;
            iArr[6] = iArr[6] ^ m135F1(this._workingKey[7], this._Tm[i9], this._Tr[i9]);
            int[] iArr2 = this._workingKey;
            int i10 = i9 + 1;
            iArr2[5] = iArr2[5] ^ m134F2(this._workingKey[6], this._Tm[i10], this._Tr[i10]);
            int[] iArr3 = this._workingKey;
            int i11 = i9 + 2;
            iArr3[4] = iArr3[4] ^ m133F3(this._workingKey[5], this._Tm[i11], this._Tr[i11]);
            int[] iArr4 = this._workingKey;
            int i12 = i9 + 3;
            iArr4[3] = m135F1(this._workingKey[4], this._Tm[i12], this._Tr[i12]) ^ iArr4[3];
            int[] iArr5 = this._workingKey;
            int i13 = i9 + 4;
            iArr5[2] = m134F2(this._workingKey[3], this._Tm[i13], this._Tr[i13]) ^ iArr5[2];
            int[] iArr6 = this._workingKey;
            int i14 = i9 + 5;
            iArr6[1] = m133F3(this._workingKey[2], this._Tm[i14], this._Tr[i14]) ^ iArr6[1];
            int[] iArr7 = this._workingKey;
            int i15 = i9 + 6;
            iArr7[0] = iArr7[0] ^ m135F1(this._workingKey[1], this._Tm[i15], this._Tr[i15]);
            int[] iArr8 = this._workingKey;
            int i16 = i9 + 7;
            iArr8[7] = m134F2(this._workingKey[0], this._Tm[i16], this._Tr[i16]) ^ iArr8[7];
            int i17 = (i8 + 1) * 8;
            int[] iArr9 = this._workingKey;
            iArr9[6] = iArr9[6] ^ m135F1(this._workingKey[7], this._Tm[i17], this._Tr[i17]);
            int[] iArr10 = this._workingKey;
            int i18 = i17 + 1;
            iArr10[5] = iArr10[5] ^ m134F2(this._workingKey[6], this._Tm[i18], this._Tr[i18]);
            int[] iArr11 = this._workingKey;
            int i19 = i17 + 2;
            iArr11[4] = iArr11[4] ^ m133F3(this._workingKey[5], this._Tm[i19], this._Tr[i19]);
            int[] iArr12 = this._workingKey;
            int i20 = i17 + 3;
            iArr12[3] = m135F1(this._workingKey[4], this._Tm[i20], this._Tr[i20]) ^ iArr12[3];
            int[] iArr13 = this._workingKey;
            int i21 = i17 + 4;
            iArr13[2] = m134F2(this._workingKey[3], this._Tm[i21], this._Tr[i21]) ^ iArr13[2];
            int[] iArr14 = this._workingKey;
            int i22 = i17 + 5;
            iArr14[1] = m133F3(this._workingKey[2], this._Tm[i22], this._Tr[i22]) ^ iArr14[1];
            int[] iArr15 = this._workingKey;
            int i23 = i17 + 6;
            iArr15[0] = iArr15[0] ^ m135F1(this._workingKey[1], this._Tm[i23], this._Tr[i23]);
            int[] iArr16 = this._workingKey;
            int i24 = i17 + 7;
            iArr16[7] = m134F2(this._workingKey[0], this._Tm[i24], this._Tr[i24]) ^ iArr16[7];
            int i25 = i7 * 4;
            this._Kr[i25] = this._workingKey[0] & 31;
            int i26 = i25 + 1;
            this._Kr[i26] = this._workingKey[2] & 31;
            int i27 = i25 + 2;
            this._Kr[i27] = this._workingKey[4] & 31;
            int i28 = i25 + 3;
            this._Kr[i28] = this._workingKey[6] & 31;
            this._Km[i25] = this._workingKey[7];
            this._Km[i26] = this._workingKey[5];
            this._Km[i27] = this._workingKey[3];
            this._Km[i28] = this._workingKey[1];
        }
    }
}
