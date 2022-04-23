package org.spongycastle.crypto;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/BufferedBlockCipher.class */
public class BufferedBlockCipher {
    protected byte[] buf;
    protected int bufOff;
    protected BlockCipher cipher;
    protected boolean forEncryption;
    protected boolean partialBlockOkay;
    protected boolean pgpCFB;

    /* JADX INFO: Access modifiers changed from: protected */
    public BufferedBlockCipher() {
    }

    public BufferedBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
        String algorithmName = blockCipher.getAlgorithmName();
        int indexOf = algorithmName.indexOf(47) + 1;
        this.pgpCFB = indexOf > 0 && algorithmName.startsWith("PGP", indexOf);
        if (this.pgpCFB || (blockCipher instanceof StreamCipher)) {
            this.partialBlockOkay = true;
            return;
        }
        boolean z = false;
        if (indexOf > 0) {
            z = false;
            if (algorithmName.startsWith("OpenPGP", indexOf)) {
                z = true;
            }
        }
        this.partialBlockOkay = z;
    }

    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        int i2;
        try {
            if (this.bufOff + i > bArr.length) {
                throw new OutputLengthException("output buffer too short for doFinal()");
            }
            if (this.bufOff == 0) {
                i2 = 0;
            } else if (!this.partialBlockOkay) {
                throw new DataLengthException("data not block size aligned");
            } else {
                this.cipher.processBlock(this.buf, 0, this.buf, 0);
                int i3 = this.bufOff;
                this.bufOff = 0;
                System.arraycopy(this.buf, 0, bArr, i, i3);
                i2 = i3;
            }
            return i2;
        } finally {
            reset();
        }
    }

    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public int getOutputSize(int i) {
        return i + this.bufOff;
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    public int getUpdateOutputSize(int i) {
        int i2 = i + this.bufOff;
        return i2 - (this.pgpCFB ? this.forEncryption ? (i2 % this.buf.length) - (this.cipher.getBlockSize() + 2) : i2 % this.buf.length : i2 % this.buf.length);
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        reset();
        this.cipher.init(z, cipherParameters);
    }

    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        int i2;
        byte[] bArr2 = this.buf;
        int i3 = this.bufOff;
        this.bufOff = i3 + 1;
        bArr2[i3] = b;
        if (this.bufOff == this.buf.length) {
            i2 = this.cipher.processBlock(this.buf, 0, bArr, i);
            this.bufOff = 0;
        } else {
            i2 = 0;
        }
        return i2;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException, IllegalStateException {
        int i4;
        int i5;
        int i6;
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(i2);
        if (updateOutputSize <= 0 || updateOutputSize + i3 <= bArr2.length) {
            int length = this.buf.length - this.bufOff;
            if (i2 > length) {
                System.arraycopy(bArr, i, this.buf, this.bufOff, length);
                int processBlock = this.cipher.processBlock(this.buf, 0, bArr2, i3) + 0;
                this.bufOff = 0;
                int i7 = i2 - length;
                int i8 = i;
                int i9 = length;
                while (true) {
                    int i10 = i8 + i9;
                    i6 = processBlock;
                    i5 = i10;
                    i4 = i7;
                    if (i7 <= this.buf.length) {
                        break;
                    }
                    processBlock += this.cipher.processBlock(bArr, i10, bArr2, i3 + processBlock);
                    i7 -= blockSize;
                    i8 = i10;
                    i9 = blockSize;
                }
            } else {
                i6 = 0;
                i4 = i2;
                i5 = i;
            }
            System.arraycopy(bArr, i5, this.buf, this.bufOff, i4);
            this.bufOff += i4;
            int i11 = i6;
            if (this.bufOff == this.buf.length) {
                i11 = i6 + this.cipher.processBlock(this.buf, 0, bArr2, i3 + i6);
                this.bufOff = 0;
            }
            return i11;
        }
        throw new OutputLengthException("output buffer too short");
    }

    public void reset() {
        for (int i = 0; i < this.buf.length; i++) {
            this.buf[i] = (byte) 0;
        }
        this.bufOff = 0;
        this.cipher.reset();
    }
}
