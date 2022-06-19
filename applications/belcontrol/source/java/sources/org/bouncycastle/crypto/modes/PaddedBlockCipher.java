package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/PaddedBlockCipher.class */
public class PaddedBlockCipher extends BufferedBlockCipher {
    public PaddedBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i) {
        int i2;
        int i3;
        int blockSize = this.cipher.getBlockSize();
        if (this.forEncryption) {
            if (this.bufOff != blockSize) {
                i3 = 0;
            } else if ((blockSize * 2) + i > bArr.length) {
                throw new DataLengthException("output buffer too short");
            } else {
                i3 = this.cipher.processBlock(this.buf, 0, bArr, i);
                this.bufOff = 0;
            }
            byte b = (byte) (blockSize - this.bufOff);
            while (true) {
                int i4 = this.bufOff;
                if (i4 >= blockSize) {
                    break;
                }
                this.buf[i4] = b;
                this.bufOff = i4 + 1;
            }
            i2 = i3 + this.cipher.processBlock(this.buf, 0, bArr, i + i3);
        } else if (this.bufOff != blockSize) {
            throw new DataLengthException("last block incomplete in decryption");
        } else {
            BlockCipher blockCipher = this.cipher;
            byte[] bArr2 = this.buf;
            int processBlock = blockCipher.processBlock(bArr2, 0, bArr2, 0);
            this.bufOff = 0;
            byte[] bArr3 = this.buf;
            int i5 = bArr3[blockSize - 1] & 255;
            if (i5 < 0 || i5 > blockSize) {
                throw new InvalidCipherTextException("pad block corrupted");
            }
            int i6 = processBlock - i5;
            System.arraycopy(bArr3, 0, bArr, i, i6);
            i2 = i6;
        }
        reset();
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (r3.forEncryption != false) goto L6;
     */
    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getOutputSize(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = r3
            int r1 = r1.bufOff
            int r0 = r0 + r1
            r4 = r0
            r0 = r3
            byte[] r0 = r0.buf
            r5 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.length
            int r0 = r0 % r1
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L25
            r0 = r4
            r6 = r0
            r0 = r3
            boolean r0 = r0.forEncryption
            if (r0 == 0) goto L23
        L1e:
            r0 = r4
            r1 = r5
            int r1 = r1.length
            int r0 = r0 + r1
            r6 = r0
        L23:
            r0 = r6
            return r0
        L25:
            r0 = r4
            r1 = r6
            int r0 = r0 - r1
            r4 = r0
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.modes.PaddedBlockCipher.getOutputSize(int):int");
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
            this.bufOff = 0;
        }
        byte[] bArr3 = this.buf;
        int i4 = this.bufOff;
        this.bufOff = i4 + 1;
        bArr3[i4] = b;
        return i3;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 >= 0) {
            int blockSize = getBlockSize();
            int updateOutputSize = getUpdateOutputSize(i2);
            if (updateOutputSize > 0 && updateOutputSize + i3 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            byte[] bArr3 = this.buf;
            int length = bArr3.length;
            int i4 = this.bufOff;
            int i5 = length - i4;
            int i6 = 0;
            int i7 = i;
            int i8 = i2;
            if (i2 > i5) {
                System.arraycopy(bArr, i, bArr3, i4, i5);
                int processBlock = this.cipher.processBlock(this.buf, 0, bArr2, i3);
                this.bufOff = 0;
                int i9 = i2 - i5;
                int i10 = i + i5;
                int i11 = processBlock + 0;
                while (true) {
                    i6 = i11;
                    i7 = i10;
                    i8 = i9;
                    if (i9 <= this.buf.length) {
                        break;
                    }
                    i11 += this.cipher.processBlock(bArr, i10, bArr2, i3 + i11);
                    i9 -= blockSize;
                    i10 += blockSize;
                }
            }
            System.arraycopy(bArr, i7, this.buf, this.bufOff, i8);
            this.bufOff += i8;
            return i6;
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }
}
