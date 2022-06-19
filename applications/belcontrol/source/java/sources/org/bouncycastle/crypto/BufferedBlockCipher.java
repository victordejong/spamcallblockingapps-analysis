package org.bouncycastle.crypto;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/BufferedBlockCipher.class */
public class BufferedBlockCipher {
    public byte[] buf;
    public int bufOff;
    public BlockCipher cipher;
    public boolean forEncryption;
    public boolean partialBlockOkay;
    public boolean pgpCFB;

    public BufferedBlockCipher() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        if (r0.startsWith("GCTR", r0) != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BufferedBlockCipher(org.bouncycastle.crypto.BlockCipher r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.cipher = r1
            r0 = r4
            r1 = r5
            int r1 = r1.getBlockSize()
            byte[] r1 = new byte[r1]
            r0.buf = r1
            r0 = 0
            r6 = r0
            r0 = r4
            r1 = 0
            r0.bufOff = r1
            r0 = r5
            java.lang.String r0 = r0.getAlgorithmName()
            r5 = r0
            r0 = r5
            r1 = 47
            int r0 = r0.indexOf(r1)
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
            r0 = r7
            if (r0 <= 0) goto L40
            r0 = r5
            java.lang.String r1 = "PGP"
            r2 = r7
            boolean r0 = r0.startsWith(r1, r2)
            if (r0 == 0) goto L40
            r0 = 1
            r8 = r0
            goto L43
        L40:
            r0 = 0
            r8 = r0
        L43:
            r0 = r4
            r1 = r8
            r0.pgpCFB = r1
            r0 = r8
            if (r0 == 0) goto L56
            r0 = r4
            r1 = 1
            r0.partialBlockOkay = r1
            goto L9b
        L56:
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 <= 0) goto L95
            r0 = r5
            java.lang.String r1 = "CFB"
            r2 = r7
            boolean r0 = r0.startsWith(r1, r2)
            if (r0 != 0) goto L92
            r0 = r5
            java.lang.String r1 = "OFB"
            r2 = r7
            boolean r0 = r0.startsWith(r1, r2)
            if (r0 != 0) goto L92
            r0 = r5
            java.lang.String r1 = "OpenPGP"
            r2 = r7
            boolean r0 = r0.startsWith(r1, r2)
            if (r0 != 0) goto L92
            r0 = r5
            java.lang.String r1 = "SIC"
            r2 = r7
            boolean r0 = r0.startsWith(r1, r2)
            if (r0 != 0) goto L92
            r0 = r6
            r8 = r0
            r0 = r5
            java.lang.String r1 = "GCTR"
            r2 = r7
            boolean r0 = r0.startsWith(r1, r2)
            if (r0 == 0) goto L95
        L92:
            r0 = 1
            r8 = r0
        L95:
            r0 = r4
            r1 = r8
            r0.partialBlockOkay = r1
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.BufferedBlockCipher.<init>(org.bouncycastle.crypto.BlockCipher):void");
    }

    /* JADX WARN: Finally extract failed */
    public int doFinal(byte[] bArr, int i) {
        try {
            int i2 = this.bufOff;
            if (i + i2 > bArr.length) {
                throw new DataLengthException("output buffer too short for doFinal()");
            }
            int i3 = 0;
            if (i2 != 0) {
                if (!this.partialBlockOkay) {
                    throw new DataLengthException("data not block size aligned");
                }
                BlockCipher blockCipher = this.cipher;
                byte[] bArr2 = this.buf;
                blockCipher.processBlock(bArr2, 0, bArr2, 0);
                i3 = this.bufOff;
                this.bufOff = 0;
                System.arraycopy(this.buf, 0, bArr, i, i3);
            }
            reset();
            return i3;
        } catch (Throwable th) {
            reset();
            throw th;
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
        return i2 - (this.pgpCFB ? (i2 % this.buf.length) - (this.cipher.getBlockSize() + 2) : i2 % this.buf.length);
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        this.forEncryption = z;
        reset();
        this.cipher.init(z, cipherParameters);
    }

    public int processByte(byte b, byte[] bArr, int i) {
        byte[] bArr2 = this.buf;
        int i2 = this.bufOff;
        int i3 = i2 + 1;
        this.bufOff = i3;
        bArr2[i2] = b;
        int i4 = 0;
        if (i3 == bArr2.length) {
            i4 = this.cipher.processBlock(bArr2, 0, bArr, i);
            this.bufOff = 0;
        }
        return i4;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4;
        int i5;
        int i6;
        if (i2 >= 0) {
            int blockSize = getBlockSize();
            int updateOutputSize = getUpdateOutputSize(i2);
            if (updateOutputSize > 0 && updateOutputSize + i3 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            byte[] bArr3 = this.buf;
            int length = bArr3.length;
            int i7 = this.bufOff;
            int i8 = length - i7;
            if (i2 > i8) {
                System.arraycopy(bArr, i, bArr3, i7, i8);
                int processBlock = this.cipher.processBlock(this.buf, 0, bArr2, i3) + 0;
                this.bufOff = 0;
                int i9 = i2 - i8;
                int i10 = i + i8;
                int i11 = i9;
                int i12 = i10;
                while (true) {
                    int i13 = i12;
                    i6 = processBlock;
                    i5 = i13;
                    i4 = i11;
                    if (i11 <= this.buf.length) {
                        break;
                    }
                    processBlock += this.cipher.processBlock(bArr, i13, bArr2, i3 + processBlock);
                    i11 -= blockSize;
                    i12 = i13 + blockSize;
                }
            } else {
                i6 = 0;
                i4 = i2;
                i5 = i;
            }
            System.arraycopy(bArr, i5, this.buf, this.bufOff, i4);
            int i14 = this.bufOff + i4;
            this.bufOff = i14;
            byte[] bArr4 = this.buf;
            int i15 = i6;
            if (i14 == bArr4.length) {
                i15 = i6 + this.cipher.processBlock(bArr4, 0, bArr2, i3 + i6);
                this.bufOff = 0;
            }
            return i15;
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }

    public void reset() {
        int i = 0;
        while (true) {
            byte[] bArr = this.buf;
            if (i >= bArr.length) {
                this.bufOff = 0;
                this.cipher.reset();
                return;
            }
            bArr[i] = (byte) 0;
            i++;
        }
    }
}
