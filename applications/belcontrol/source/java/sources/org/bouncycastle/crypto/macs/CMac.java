package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/macs/CMac.class */
public class CMac implements Mac {
    private static final byte CONSTANT_128 = -121;
    private static final byte CONSTANT_64 = 27;

    /* renamed from: L */
    private byte[] f7523L;

    /* renamed from: Lu */
    private byte[] f7524Lu;
    private byte[] Lu2;
    private byte[] ZEROES;
    private byte[] buf;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] mac;
    private int macSize;

    public CMac(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public CMac(BlockCipher blockCipher, int i) {
        if (i % 8 == 0) {
            if (i > blockCipher.getBlockSize() * 8) {
                throw new IllegalArgumentException("MAC size must be less or equal to " + (blockCipher.getBlockSize() * 8));
            } else if (blockCipher.getBlockSize() != 8 && blockCipher.getBlockSize() != 16) {
                throw new IllegalArgumentException("Block size must be either 64 or 128 bits");
            } else {
                this.cipher = new CBCBlockCipher(blockCipher);
                this.macSize = i / 8;
                this.mac = new byte[blockCipher.getBlockSize()];
                this.buf = new byte[blockCipher.getBlockSize()];
                this.ZEROES = new byte[blockCipher.getBlockSize()];
                this.bufOff = 0;
                return;
            }
        }
        throw new IllegalArgumentException("MAC size must be multiple of 8");
    }

    private byte[] doubleLu(byte[] bArr) {
        int length;
        int i;
        byte b = bArr[0];
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length - 1; i2++) {
            bArr2[i2] = (byte) ((bArr[i2] << 1) + ((bArr[i] & 255) >> 7));
        }
        bArr2[bArr.length - 1] = (byte) (bArr[bArr.length - 1] << 1);
        if (((b & 255) >> 7) == 1) {
            bArr2[bArr.length - 1] = (byte) ((bArr.length == 16 ? CONSTANT_128 : (byte) 27) ^ bArr2[length]);
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        byte[] bArr2;
        byte[] bArr3;
        if (this.bufOff == this.cipher.getBlockSize()) {
            bArr2 = this.f7524Lu;
        } else {
            new ISO7816d4Padding().addPadding(this.buf, this.bufOff);
            bArr2 = this.Lu2;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr4 = this.mac;
            if (i2 >= bArr4.length) {
                this.cipher.processBlock(this.buf, 0, bArr4, 0);
                System.arraycopy(this.mac, 0, bArr, i, this.macSize);
                reset();
                return this.macSize;
            }
            this.buf[i2] = (byte) (bArr3[i2] ^ bArr2[i2]);
            i2++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        reset();
        this.cipher.init(true, cipherParameters);
        byte[] bArr = this.ZEROES;
        byte[] bArr2 = new byte[bArr.length];
        this.f7523L = bArr2;
        this.cipher.processBlock(bArr, 0, bArr2, 0);
        byte[] doubleLu = doubleLu(this.f7523L);
        this.f7524Lu = doubleLu;
        this.Lu2 = doubleLu(doubleLu);
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Mac
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

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) {
        int i = this.bufOff;
        byte[] bArr = this.buf;
        if (i == bArr.length) {
            this.cipher.processBlock(bArr, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr2 = this.buf;
        int i2 = this.bufOff;
        this.bufOff = i2 + 1;
        bArr2[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        if (i2 >= 0) {
            int blockSize = this.cipher.getBlockSize();
            int i3 = this.bufOff;
            int i4 = blockSize - i3;
            int i5 = i;
            int i6 = i2;
            if (i2 > i4) {
                System.arraycopy(bArr, i, this.buf, i3, i4);
                this.cipher.processBlock(this.buf, 0, this.mac, 0);
                this.bufOff = 0;
                int i7 = i2 - i4;
                int i8 = i;
                int i9 = i4;
                while (true) {
                    int i10 = i8 + i9;
                    i5 = i10;
                    i6 = i7;
                    if (i7 <= blockSize) {
                        break;
                    }
                    this.cipher.processBlock(bArr, i10, this.mac, 0);
                    i7 -= blockSize;
                    i8 = i10;
                    i9 = blockSize;
                }
            }
            System.arraycopy(bArr, i5, this.buf, this.bufOff, i6);
            this.bufOff += i6;
            return;
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }
}
