package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/CFBBlockCipher.class */
public class CFBBlockCipher implements BlockCipher {

    /* renamed from: IV */
    private byte[] f7537IV;
    private int blockSize;
    private byte[] cfbOutV;
    private byte[] cfbV;
    private BlockCipher cipher;
    private boolean encrypting;

    public CFBBlockCipher(BlockCipher blockCipher, int i) {
        this.cipher = null;
        this.cipher = blockCipher;
        this.blockSize = i / 8;
        this.f7537IV = new byte[blockCipher.getBlockSize()];
        this.cfbV = new byte[blockCipher.getBlockSize()];
        this.cfbOutV = new byte[blockCipher.getBlockSize()];
    }

    public int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = this.blockSize;
        if (i + i3 <= bArr.length) {
            if (i3 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            int i4 = 0;
            this.cipher.processBlock(this.cfbV, 0, this.cfbOutV, 0);
            byte[] bArr3 = this.cfbV;
            int i5 = this.blockSize;
            System.arraycopy(bArr3, i5, bArr3, 0, bArr3.length - i5);
            byte[] bArr4 = this.cfbV;
            int length = bArr4.length;
            int i6 = this.blockSize;
            System.arraycopy(bArr, i, bArr4, length - i6, i6);
            while (true) {
                int i7 = this.blockSize;
                if (i4 >= i7) {
                    return i7;
                }
                bArr2[i2 + i4] = (byte) (this.cfbOutV[i4] ^ bArr[i + i4]);
                i4++;
            }
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    public int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = this.blockSize;
        if (i + i3 <= bArr.length) {
            if (i3 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            this.cipher.processBlock(this.cfbV, 0, this.cfbOutV, 0);
            int i4 = 0;
            while (true) {
                int i5 = this.blockSize;
                if (i4 >= i5) {
                    byte[] bArr3 = this.cfbV;
                    System.arraycopy(bArr3, i5, bArr3, 0, bArr3.length - i5);
                    byte[] bArr4 = this.cfbV;
                    int length = bArr4.length;
                    int i6 = this.blockSize;
                    System.arraycopy(bArr2, i2, bArr4, length - i6, i6);
                    return this.blockSize;
                }
                bArr2[i2 + i4] = (byte) (this.cfbOutV[i4] ^ bArr[i + i4]);
                i4++;
            }
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CFB" + (this.blockSize * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2;
        BlockCipher blockCipher;
        this.encrypting = z;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            int length = iv.length;
            byte[] bArr = this.f7537IV;
            if (length < bArr.length) {
                System.arraycopy(iv, 0, bArr, bArr.length - iv.length, iv.length);
                int i = 0;
                while (true) {
                    byte[] bArr2 = this.f7537IV;
                    if (i >= bArr2.length - iv.length) {
                        break;
                    }
                    bArr2[i] = (byte) 0;
                    i++;
                }
            } else {
                System.arraycopy(iv, 0, bArr, 0, bArr.length);
            }
            reset();
            blockCipher = this.cipher;
            cipherParameters2 = parametersWithIV.getParameters();
        } else {
            reset();
            cipherParameters2 = cipherParameters;
            blockCipher = this.cipher;
        }
        blockCipher.init(true, cipherParameters2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        return this.encrypting ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.f7537IV;
        System.arraycopy(bArr, 0, this.cfbV, 0, bArr.length);
        this.cipher.reset();
    }
}
