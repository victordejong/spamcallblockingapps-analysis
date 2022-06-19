package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher.class */
public class OpenPGPCFBBlockCipher implements BlockCipher {

    /* renamed from: FR */
    private byte[] f7548FR;
    private byte[] FRE;

    /* renamed from: IV */
    private byte[] f7549IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;

    public OpenPGPCFBBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.f7549IV = new byte[blockSize];
        this.f7548FR = new byte[blockSize];
        this.FRE = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = this.blockSize;
        if (i + i6 <= bArr.length) {
            if (i2 + i6 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            int i7 = this.count;
            int i8 = 2;
            if (i7 > i6) {
                byte b = bArr[i];
                this.f7548FR[i6 - 2] = b;
                bArr2[i2] = encryptByte(b, i6 - 2);
                byte b2 = bArr[i + 1];
                byte[] bArr3 = this.f7548FR;
                int i9 = this.blockSize;
                bArr3[i9 - 1] = b2;
                bArr2[i2 + 1] = encryptByte(b2, i9 - 1);
                this.cipher.processBlock(this.f7548FR, 0, this.FRE, 0);
                while (i8 < this.blockSize) {
                    byte b3 = bArr[i + i8];
                    int i10 = i8 - 2;
                    this.f7548FR[i10] = b3;
                    bArr2[i2 + i8] = encryptByte(b3, i10);
                    i8++;
                }
            } else {
                if (i7 == 0) {
                    this.cipher.processBlock(this.f7548FR, 0, this.FRE, 0);
                    int i11 = 0;
                    while (true) {
                        i5 = this.blockSize;
                        if (i11 >= i5) {
                            break;
                        }
                        int i12 = i + i11;
                        this.f7548FR[i11] = bArr[i12];
                        bArr2[i11] = encryptByte(bArr[i12], i11);
                        i11++;
                    }
                    i4 = this.count + i5;
                } else if (i7 == i6) {
                    this.cipher.processBlock(this.f7548FR, 0, this.FRE, 0);
                    byte b4 = bArr[i];
                    byte b5 = bArr[i + 1];
                    bArr2[i2] = encryptByte(b4, 0);
                    bArr2[i2 + 1] = encryptByte(b5, 1);
                    byte[] bArr4 = this.f7548FR;
                    System.arraycopy(bArr4, 2, bArr4, 0, this.blockSize - 2);
                    byte[] bArr5 = this.f7548FR;
                    int i13 = this.blockSize;
                    bArr5[i13 - 2] = b4;
                    bArr5[i13 - 1] = b5;
                    this.cipher.processBlock(bArr5, 0, this.FRE, 0);
                    while (true) {
                        i3 = this.blockSize;
                        if (i8 >= i3) {
                            break;
                        }
                        byte b6 = bArr[i + i8];
                        int i14 = i8 - 2;
                        this.f7548FR[i14] = b6;
                        bArr2[i2 + i8] = encryptByte(b6, i14);
                        i8++;
                    }
                    i4 = this.count + i3;
                }
                this.count = i4;
            }
            return this.blockSize;
        }
        throw new DataLengthException("input buffer too short");
    }

    private int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4 = this.blockSize;
        if (i + i4 <= bArr.length) {
            if (i2 + i4 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            int i5 = this.count;
            int i6 = 0;
            if (i5 > i4) {
                byte[] bArr3 = this.f7548FR;
                byte encryptByte = encryptByte(bArr[i], i4 - 2);
                bArr2[i2] = encryptByte;
                bArr3[i4 - 2] = encryptByte;
                byte[] bArr4 = this.f7548FR;
                int i7 = this.blockSize;
                byte encryptByte2 = encryptByte(bArr[i + 1], i7 - 1);
                bArr2[i2 + 1] = encryptByte2;
                bArr4[i7 - 1] = encryptByte2;
                this.cipher.processBlock(this.f7548FR, 0, this.FRE, 0);
                for (int i8 = 2; i8 < this.blockSize; i8++) {
                    byte[] bArr5 = this.f7548FR;
                    int i9 = i8 - 2;
                    byte encryptByte3 = encryptByte(bArr[i + i8], i9);
                    bArr2[i2 + i8] = encryptByte3;
                    bArr5[i9] = encryptByte3;
                }
            } else {
                if (i5 == 0) {
                    this.cipher.processBlock(this.f7548FR, 0, this.FRE, 0);
                    while (true) {
                        int i10 = this.blockSize;
                        i3 = i10;
                        if (i6 >= i10) {
                            break;
                        }
                        byte[] bArr6 = this.f7548FR;
                        byte encryptByte4 = encryptByte(bArr[i + i6], i6);
                        bArr2[i2 + i6] = encryptByte4;
                        bArr6[i6] = encryptByte4;
                        i6++;
                    }
                } else if (i5 == i4) {
                    this.cipher.processBlock(this.f7548FR, 0, this.FRE, 0);
                    bArr2[i2] = encryptByte(bArr[i], 0);
                    bArr2[i2 + 1] = encryptByte(bArr[i + 1], 1);
                    byte[] bArr7 = this.f7548FR;
                    System.arraycopy(bArr7, 2, bArr7, 0, this.blockSize - 2);
                    System.arraycopy(bArr2, i2, this.f7548FR, this.blockSize - 2, 2);
                    this.cipher.processBlock(this.f7548FR, 0, this.FRE, 0);
                    int i11 = 2;
                    while (true) {
                        int i12 = this.blockSize;
                        i3 = i12;
                        if (i11 >= i12) {
                            break;
                        }
                        byte[] bArr8 = this.f7548FR;
                        int i13 = i11 - 2;
                        byte encryptByte5 = encryptByte(bArr[i + i11], i13);
                        bArr2[i2 + i11] = encryptByte5;
                        bArr8[i13] = encryptByte5;
                        i11++;
                    }
                }
                this.count += i3;
            }
            return this.blockSize;
        }
        throw new DataLengthException("input buffer too short");
    }

    private byte encryptByte(byte b, int i) {
        return (byte) (b ^ this.FRE[i]);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/OpenPGPCFB";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forEncryption = z;
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        byte[] bArr = this.f7549IV;
        byte[] bArr2 = this.f7548FR;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.cipher.reset();
    }
}
