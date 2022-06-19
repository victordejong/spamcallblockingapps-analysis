package org.bouncycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/CAST6Engine.class */
public final class CAST6Engine extends CAST5Engine {
    public static final int BLOCK_SIZE = 16;
    public static final int ROUNDS = 12;
    public int[] _Kr = new int[48];
    public int[] _Km = new int[48];
    public int[] _Tr = new int[192];
    public int[] _Tm = new int[192];
    private int[] _workingKey = new int[8];

    public final void CAST_Decipher(int i, int i2, int i3, int i4, int[] iArr) {
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
                i3 ^= m969F1(i4, this._Km[i11], this._Kr[i11]);
                int i12 = i11 + 1;
                i2 ^= m968F2(i3, this._Km[i12], this._Kr[i12]);
                int i13 = i11 + 2;
                i ^= m967F3(i2, this._Km[i13], this._Kr[i13]);
                int i14 = i11 + 3;
                i4 ^= m969F1(i, this._Km[i14], this._Kr[i14]);
                i10++;
            }
        }
        for (i5 = 6; i5 < 12; i5++) {
            int i15 = (11 - i5) * 4;
            int i16 = i15 + 3;
            i9 ^= m969F1(i6, this._Km[i16], this._Kr[i16]);
            int i17 = i15 + 2;
            i6 ^= m967F3(i7, this._Km[i17], this._Kr[i17]);
            int i18 = i15 + 1;
            i7 ^= m968F2(i8, this._Km[i18], this._Kr[i18]);
            i8 ^= m969F1(i9, this._Km[i15], this._Kr[i15]);
        }
        iArr[0] = i6;
        iArr[1] = i7;
        iArr[2] = i8;
        iArr[3] = i9;
    }

    public final void CAST_Encipher(int i, int i2, int i3, int i4, int[] iArr) {
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
                i3 ^= m969F1(i4, this._Km[i11], this._Kr[i11]);
                int i12 = i11 + 1;
                i2 ^= m968F2(i3, this._Km[i12], this._Kr[i12]);
                int i13 = i11 + 2;
                i ^= m967F3(i2, this._Km[i13], this._Kr[i13]);
                int i14 = i11 + 3;
                i4 ^= m969F1(i, this._Km[i14], this._Kr[i14]);
                i10++;
            }
        }
        for (i5 = 6; i5 < 12; i5++) {
            int i15 = i5 * 4;
            int i16 = i15 + 3;
            i9 ^= m969F1(i6, this._Km[i16], this._Kr[i16]);
            int i17 = i15 + 2;
            i6 ^= m967F3(i7, this._Km[i17], this._Kr[i17]);
            int i18 = i15 + 1;
            i7 ^= m968F2(i8, this._Km[i18], this._Kr[i18]);
            i8 ^= m969F1(i9, this._Km[i15], this._Kr[i15]);
        }
        iArr[0] = i6;
        iArr[1] = i7;
        iArr[2] = i8;
        iArr[3] = i9;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    public int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        CAST_Decipher(BytesTo32bits(bArr, i), BytesTo32bits(bArr, i + 4), BytesTo32bits(bArr, i + 8), BytesTo32bits(bArr, i + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i2);
        Bits32ToBytes(iArr[1], bArr2, i2 + 4);
        Bits32ToBytes(iArr[2], bArr2, i2 + 8);
        Bits32ToBytes(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    public int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        CAST_Encipher(BytesTo32bits(bArr, i), BytesTo32bits(bArr, i + 4), BytesTo32bits(bArr, i + 8), BytesTo32bits(bArr, i + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i2);
        Bits32ToBytes(iArr[1], bArr2, i2 + 4);
        Bits32ToBytes(iArr[2], bArr2, i2 + 8);
        Bits32ToBytes(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "CAST6";
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    public void setKey(byte[] bArr) {
        int i = 1518500249;
        int i2 = 19;
        for (int i3 = 0; i3 < 24; i3++) {
            for (int i4 = 0; i4 < 8; i4++) {
                int i5 = (i3 * 8) + i4;
                this._Tm[i5] = i;
                i += 1859775393;
                this._Tr[i5] = i2;
                i2 = (i2 + 17) & 31;
            }
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
            iArr[6] = iArr[6] ^ m969F1(iArr[7], this._Tm[i9], this._Tr[i9]);
            int[] iArr2 = this._workingKey;
            int i10 = iArr2[5];
            int i11 = iArr2[6];
            int i12 = i9 + 1;
            iArr2[5] = i10 ^ m968F2(i11, this._Tm[i12], this._Tr[i12]);
            int[] iArr3 = this._workingKey;
            int i13 = iArr3[4];
            int i14 = iArr3[5];
            int i15 = i9 + 2;
            iArr3[4] = i13 ^ m967F3(i14, this._Tm[i15], this._Tr[i15]);
            int[] iArr4 = this._workingKey;
            int i16 = iArr4[3];
            int i17 = iArr4[4];
            int i18 = i9 + 3;
            iArr4[3] = m969F1(i17, this._Tm[i18], this._Tr[i18]) ^ i16;
            int[] iArr5 = this._workingKey;
            int i19 = iArr5[2];
            int i20 = iArr5[3];
            int i21 = i9 + 4;
            iArr5[2] = m968F2(i20, this._Tm[i21], this._Tr[i21]) ^ i19;
            int[] iArr6 = this._workingKey;
            int i22 = iArr6[1];
            int i23 = iArr6[2];
            int i24 = i9 + 5;
            iArr6[1] = m967F3(i23, this._Tm[i24], this._Tr[i24]) ^ i22;
            int[] iArr7 = this._workingKey;
            int i25 = iArr7[0];
            int i26 = iArr7[1];
            int i27 = i9 + 6;
            iArr7[0] = i25 ^ m969F1(i26, this._Tm[i27], this._Tr[i27]);
            int[] iArr8 = this._workingKey;
            int i28 = i9 + 7;
            iArr8[7] = m968F2(iArr8[0], this._Tm[i28], this._Tr[i28]) ^ iArr8[7];
            int i29 = (i8 + 1) * 8;
            int[] iArr9 = this._workingKey;
            iArr9[6] = iArr9[6] ^ m969F1(iArr9[7], this._Tm[i29], this._Tr[i29]);
            int[] iArr10 = this._workingKey;
            int i30 = iArr10[5];
            int i31 = iArr10[6];
            int i32 = i29 + 1;
            iArr10[5] = i30 ^ m968F2(i31, this._Tm[i32], this._Tr[i32]);
            int[] iArr11 = this._workingKey;
            int i33 = iArr11[4];
            int i34 = iArr11[5];
            int i35 = i29 + 2;
            iArr11[4] = i33 ^ m967F3(i34, this._Tm[i35], this._Tr[i35]);
            int[] iArr12 = this._workingKey;
            int i36 = iArr12[3];
            int i37 = iArr12[4];
            int i38 = i29 + 3;
            iArr12[3] = m969F1(i37, this._Tm[i38], this._Tr[i38]) ^ i36;
            int[] iArr13 = this._workingKey;
            int i39 = iArr13[2];
            int i40 = iArr13[3];
            int i41 = i29 + 4;
            iArr13[2] = m968F2(i40, this._Tm[i41], this._Tr[i41]) ^ i39;
            int[] iArr14 = this._workingKey;
            int i42 = iArr14[1];
            int i43 = iArr14[2];
            int i44 = i29 + 5;
            iArr14[1] = m967F3(i43, this._Tm[i44], this._Tr[i44]) ^ i42;
            int[] iArr15 = this._workingKey;
            int i45 = iArr15[0];
            int i46 = iArr15[1];
            int i47 = i29 + 6;
            iArr15[0] = i45 ^ m969F1(i46, this._Tm[i47], this._Tr[i47]);
            int[] iArr16 = this._workingKey;
            int i48 = i29 + 7;
            iArr16[7] = m968F2(iArr16[0], this._Tm[i48], this._Tr[i48]) ^ iArr16[7];
            int[] iArr17 = this._Kr;
            int i49 = i7 * 4;
            int[] iArr18 = this._workingKey;
            iArr17[i49] = iArr18[0] & 31;
            int i50 = i49 + 1;
            iArr17[i50] = iArr18[2] & 31;
            int i51 = i49 + 2;
            iArr17[i51] = iArr18[4] & 31;
            int i52 = i49 + 3;
            iArr17[i52] = iArr18[6] & 31;
            int[] iArr19 = this._Km;
            iArr19[i49] = iArr18[7];
            iArr19[i50] = iArr18[5];
            iArr19[i51] = iArr18[3];
            iArr19[i52] = iArr18[1];
        }
    }
}
