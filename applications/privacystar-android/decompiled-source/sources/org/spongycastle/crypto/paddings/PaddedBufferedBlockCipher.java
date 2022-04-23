package org.spongycastle.crypto.paddings;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.ParametersWithRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/paddings/PaddedBufferedBlockCipher.class */
public class PaddedBufferedBlockCipher extends BufferedBlockCipher {
    BlockCipherPadding padding;

    public PaddedBufferedBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, new PKCS7Padding());
    }

    public PaddedBufferedBlockCipher(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this.cipher = blockCipher;
        this.padding = blockCipherPadding;
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        int i2;
        int i3;
        int blockSize = this.cipher.getBlockSize();
        if (this.forEncryption) {
            if (this.bufOff != blockSize) {
                i3 = 0;
            } else if ((blockSize * 2) + i > bArr.length) {
                reset();
                throw new OutputLengthException("output buffer too short");
            } else {
                i3 = this.cipher.processBlock(this.buf, 0, bArr, i);
                this.bufOff = 0;
            }
            this.padding.addPadding(this.buf, this.bufOff);
            i2 = i3 + this.cipher.processBlock(this.buf, 0, bArr, i + i3);
            reset();
        } else if (this.bufOff == blockSize) {
            int processBlock = this.cipher.processBlock(this.buf, 0, this.buf, 0);
            this.bufOff = 0;
            try {
                int padCount = processBlock - this.padding.padCount(this.buf);
                System.arraycopy(this.buf, 0, bArr, i, padCount);
                reset();
                i2 = padCount;
            } catch (Throwable th) {
                reset();
                throw th;
            }
        } else {
            reset();
            throw new DataLengthException("last block incomplete in decryption");
        }
        return i2;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i) {
        int i2 = i + this.bufOff;
        int length = i2 % this.buf.length;
        return length == 0 ? this.forEncryption ? i2 + this.buf.length : i2 : (i2 - length) + this.buf.length;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int i) {
        int i2 = i + this.bufOff;
        int length = i2 % this.buf.length;
        return length == 0 ? Math.max(0, i2 - this.buf.length) : i2 - length;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        reset();
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.padding.init(parametersWithRandom.getRandom());
            this.cipher.init(z, parametersWithRandom.getParameters());
            return;
        }
        this.padding.init(null);
        this.cipher.init(z, cipherParameters);
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        int i2;
        if (this.bufOff == this.buf.length) {
            i2 = this.cipher.processBlock(this.buf, 0, bArr, i);
            this.bufOff = 0;
        } else {
            i2 = 0;
        }
        byte[] bArr2 = this.buf;
        int i3 = this.bufOff;
        this.bufOff = i3 + 1;
        bArr2[i3] = b;
        return i2;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException, IllegalStateException {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(i2);
        if (updateOutputSize <= 0 || updateOutputSize + i3 <= bArr2.length) {
            int length = this.buf.length - this.bufOff;
            int i4 = 0;
            int i5 = i;
            int i6 = i2;
            if (i2 > length) {
                System.arraycopy(bArr, i, this.buf, this.bufOff, length);
                int processBlock = this.cipher.processBlock(this.buf, 0, bArr2, i3);
                this.bufOff = 0;
                int i7 = i2 - length;
                int i8 = i + length;
                int i9 = processBlock + 0;
                while (true) {
                    i4 = i9;
                    i5 = i8;
                    i6 = i7;
                    if (i7 <= this.buf.length) {
                        break;
                    }
                    i9 += this.cipher.processBlock(bArr, i8, bArr2, i3 + i9);
                    i7 -= blockSize;
                    i8 += blockSize;
                }
            }
            System.arraycopy(bArr, i5, this.buf, this.bufOff, i6);
            this.bufOff += i6;
            return i4;
        }
        throw new OutputLengthException("output buffer too short");
    }
}
