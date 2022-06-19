package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.DataLengthException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/CTSBlockCipher.class */
public class CTSBlockCipher extends BufferedBlockCipher {
    private int blockSize;

    public CTSBlockCipher(BlockCipher blockCipher) {
        if ((blockCipher instanceof OFBBlockCipher) || (blockCipher instanceof CFBBlockCipher)) {
            throw new IllegalArgumentException("CTSBlockCipher can only accept ECB, or CBC ciphers");
        }
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.buf = new byte[blockSize * 2];
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i) {
        if (this.bufOff + i <= bArr.length) {
            int blockSize = this.cipher.getBlockSize();
            int i2 = this.bufOff - blockSize;
            byte[] bArr2 = new byte[blockSize];
            if (this.forEncryption) {
                this.cipher.processBlock(this.buf, 0, bArr2, 0);
                int i3 = this.bufOff;
                if (i3 < blockSize) {
                    throw new DataLengthException("need at least one block of input for CTS");
                }
                while (true) {
                    byte[] bArr3 = this.buf;
                    if (i3 == bArr3.length) {
                        break;
                    }
                    bArr3[i3] = bArr2[i3 - blockSize];
                    i3++;
                }
                for (int i4 = blockSize; i4 != this.bufOff; i4++) {
                    byte[] bArr4 = this.buf;
                    bArr4[i4] = (byte) (bArr4[i4] ^ bArr2[i4 - blockSize]);
                }
                BlockCipher blockCipher = this.cipher;
                if (blockCipher instanceof CBCBlockCipher) {
                    ((CBCBlockCipher) blockCipher).getUnderlyingCipher().processBlock(this.buf, blockSize, bArr, i);
                } else {
                    blockCipher.processBlock(this.buf, blockSize, bArr, i);
                }
                System.arraycopy(bArr2, 0, bArr, i + blockSize, i2);
            } else {
                byte[] bArr5 = new byte[blockSize];
                BlockCipher blockCipher2 = this.cipher;
                if (blockCipher2 instanceof CBCBlockCipher) {
                    ((CBCBlockCipher) blockCipher2).getUnderlyingCipher().processBlock(this.buf, 0, bArr2, 0);
                } else {
                    blockCipher2.processBlock(this.buf, 0, bArr2, 0);
                }
                for (int i5 = blockSize; i5 != this.bufOff; i5++) {
                    int i6 = i5 - blockSize;
                    bArr5[i6] = (byte) (bArr2[i6] ^ this.buf[i5]);
                }
                System.arraycopy(this.buf, blockSize, bArr2, 0, i2);
                this.cipher.processBlock(bArr2, 0, bArr, i);
                System.arraycopy(bArr5, 0, bArr, i + blockSize, i2);
            }
            int i7 = this.bufOff;
            reset();
            return i7;
        }
        throw new DataLengthException("output buffer to small in doFinal");
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i) {
        return i + this.bufOff;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int i) {
        int i2 = i + this.bufOff;
        byte[] bArr = this.buf;
        int length = i2 % bArr.length;
        return length == 0 ? i2 - bArr.length : i2 - length;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b, byte[] bArr, int i) {
        int i2 = this.bufOff;
        byte[] bArr2 = this.buf;
        int i3 = 0;
        if (i2 == bArr2.length) {
            i3 = this.cipher.processBlock(bArr2, 0, bArr, i);
            byte[] bArr3 = this.buf;
            int i4 = this.blockSize;
            System.arraycopy(bArr3, i4, bArr3, 0, i4);
            this.bufOff = this.blockSize;
        }
        byte[] bArr4 = this.buf;
        int i5 = this.bufOff;
        this.bufOff = i5 + 1;
        bArr4[i5] = b;
        return i3;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4;
        if (i2 >= 0) {
            int blockSize = getBlockSize();
            int updateOutputSize = getUpdateOutputSize(i2);
            if (updateOutputSize > 0 && updateOutputSize + i3 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            byte[] bArr3 = this.buf;
            int length = bArr3.length;
            int i5 = this.bufOff;
            int i6 = length - i5;
            int i7 = 0;
            int i8 = i;
            int i9 = i2;
            if (i2 > i6) {
                System.arraycopy(bArr, i, bArr3, i5, i6);
                int processBlock = this.cipher.processBlock(this.buf, 0, bArr2, i3) + 0;
                byte[] bArr4 = this.buf;
                System.arraycopy(bArr4, blockSize, bArr4, 0, blockSize);
                this.bufOff = blockSize;
                int i10 = i2 - i6;
                int i11 = i;
                int i12 = i6;
                while (true) {
                    i4 = i11 + i12;
                    if (i10 <= blockSize) {
                        break;
                    }
                    System.arraycopy(bArr, i4, this.buf, this.bufOff, blockSize);
                    processBlock += this.cipher.processBlock(this.buf, 0, bArr2, i3 + processBlock);
                    byte[] bArr5 = this.buf;
                    System.arraycopy(bArr5, blockSize, bArr5, 0, blockSize);
                    i10 -= blockSize;
                    i11 = i4;
                    i12 = blockSize;
                }
                i7 = processBlock;
                i9 = i10;
                i8 = i4;
            }
            System.arraycopy(bArr, i8, this.buf, this.bufOff, i9);
            this.bufOff += i9;
            return i7;
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }
}
