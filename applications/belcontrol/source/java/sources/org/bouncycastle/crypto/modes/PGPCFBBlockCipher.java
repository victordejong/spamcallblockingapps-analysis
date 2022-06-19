package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/PGPCFBBlockCipher.class */
public class PGPCFBBlockCipher implements BlockCipher {

    /* renamed from: FR */
    private byte[] f7550FR;
    private byte[] FRE;

    /* renamed from: IV */
    private byte[] f7551IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;
    private boolean inlineIv;
    private byte[] tmp;

    public PGPCFBBlockCipher(BlockCipher blockCipher, boolean z) {
        this.cipher = blockCipher;
        this.inlineIv = z;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.f7551IV = new byte[blockSize];
        this.f7550FR = new byte[blockSize];
        this.FRE = new byte[blockSize];
        this.tmp = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4 = this.blockSize;
        if (i + i4 <= bArr.length) {
            if (i4 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
            int i5 = 0;
            while (true) {
                i3 = 0;
                if (i5 < this.blockSize) {
                    bArr2[i2 + i5] = encryptByte(bArr[i + i5], i5);
                    i5++;
                }
            }
            while (true) {
                int i6 = this.blockSize;
                if (i3 >= i6) {
                    return i6;
                }
                this.f7550FR[i3] = bArr[i + i3];
                i3++;
            }
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    private int decryptBlockWithIV(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4 = this.blockSize;
        if (i + i4 <= bArr.length) {
            if (i2 + i4 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            int i5 = this.count;
            if (i5 == 0) {
                for (int i6 = 0; i6 < this.blockSize; i6++) {
                    this.f7550FR[i6] = bArr[i + i6];
                }
                this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
                this.count += this.blockSize;
                return 0;
            } else if (i5 != i4) {
                if (i5 >= i4 + 2) {
                    System.arraycopy(bArr, i, this.tmp, 0, i4);
                    bArr2[i2 + 0] = encryptByte(this.tmp[0], this.blockSize - 2);
                    bArr2[i2 + 1] = encryptByte(this.tmp[1], this.blockSize - 1);
                    System.arraycopy(this.tmp, 0, this.f7550FR, this.blockSize - 2, 2);
                    this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
                    int i7 = 0;
                    while (true) {
                        i3 = this.blockSize;
                        if (i7 >= i3 - 2) {
                            break;
                        }
                        bArr2[i2 + i7 + 2] = encryptByte(this.tmp[i7 + 2], i7);
                        i7++;
                    }
                    System.arraycopy(this.tmp, 2, this.f7550FR, 0, i3 - 2);
                }
                return this.blockSize;
            } else {
                System.arraycopy(bArr, i, this.tmp, 0, i4);
                byte[] bArr3 = this.f7550FR;
                System.arraycopy(bArr3, 2, bArr3, 0, this.blockSize - 2);
                byte[] bArr4 = this.f7550FR;
                int i8 = this.blockSize;
                byte[] bArr5 = this.tmp;
                bArr4[i8 - 2] = bArr5[0];
                bArr4[i8 - 1] = bArr5[1];
                this.cipher.processBlock(bArr4, 0, this.FRE, 0);
                int i9 = 0;
                while (true) {
                    int i10 = this.blockSize;
                    if (i9 >= i10 - 2) {
                        System.arraycopy(this.tmp, 2, this.f7550FR, 0, i10 - 2);
                        this.count += 2;
                        return this.blockSize - 2;
                    }
                    bArr2[i2 + i9] = encryptByte(this.tmp[i9 + 2], i9);
                    i9++;
                }
            }
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    private int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4 = this.blockSize;
        if (i + i4 <= bArr.length) {
            if (i4 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
            int i5 = 0;
            while (true) {
                i3 = 0;
                if (i5 < this.blockSize) {
                    bArr2[i2 + i5] = encryptByte(bArr[i + i5], i5);
                    i5++;
                }
            }
            while (true) {
                int i6 = this.blockSize;
                if (i3 >= i6) {
                    return i6;
                }
                this.f7550FR[i3] = bArr2[i2 + i3];
                i3++;
            }
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    private int encryptBlockWithIV(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4;
        int i5 = this.blockSize;
        if (i + i5 <= bArr.length) {
            if (i2 + i5 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            int i6 = this.count;
            if (i6 != 0) {
                if (i6 >= i5 + 2) {
                    this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
                    int i7 = 0;
                    while (true) {
                        i3 = this.blockSize;
                        if (i7 >= i3) {
                            break;
                        }
                        bArr2[i2 + i7] = encryptByte(bArr[i + i7], i7);
                        i7++;
                    }
                    System.arraycopy(bArr2, i2, this.f7550FR, 0, i3);
                }
                return this.blockSize;
            }
            this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
            int i8 = 0;
            while (true) {
                i4 = this.blockSize;
                if (i8 >= i4) {
                    break;
                }
                bArr2[i2 + i8] = encryptByte(this.f7551IV[i8], i8);
                i8++;
            }
            System.arraycopy(bArr2, i2, this.f7550FR, 0, i4);
            this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
            int i9 = this.blockSize;
            bArr2[i2 + i9] = encryptByte(this.f7551IV[i9 - 2], 0);
            int i10 = this.blockSize;
            bArr2[i2 + i10 + 1] = encryptByte(this.f7551IV[i10 - 1], 1);
            System.arraycopy(bArr2, i2 + 2, this.f7550FR, 0, this.blockSize);
            this.cipher.processBlock(this.f7550FR, 0, this.FRE, 0);
            int i11 = 0;
            while (true) {
                int i12 = this.blockSize;
                if (i11 >= i12) {
                    System.arraycopy(bArr2, i2 + i12 + 2, this.f7550FR, 0, i12);
                    int i13 = this.count;
                    int i14 = this.blockSize;
                    this.count = i13 + (i14 * 2) + 2;
                    return (i14 * 2) + 2;
                }
                bArr2[i12 + i2 + 2 + i11] = encryptByte(bArr[i + i11], i11);
                i11++;
            }
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    private byte encryptByte(byte b, int i) {
        return (byte) (b ^ this.FRE[i]);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        StringBuilder sb;
        String str;
        if (this.inlineIv) {
            sb = new StringBuilder();
            sb.append(this.cipher.getAlgorithmName());
            str = "/PGPCFBwithIV";
        } else {
            sb = new StringBuilder();
            sb.append(this.cipher.getAlgorithmName());
            str = "/PGPCFB";
        }
        sb.append(str);
        return sb.toString();
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
        CipherParameters cipherParameters2;
        BlockCipher blockCipher;
        this.forEncryption = z;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            int length = iv.length;
            byte[] bArr = this.f7551IV;
            if (length < bArr.length) {
                System.arraycopy(iv, 0, bArr, bArr.length - iv.length, iv.length);
                int i = 0;
                while (true) {
                    byte[] bArr2 = this.f7551IV;
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
        if (this.inlineIv) {
            return this.forEncryption ? encryptBlockWithIV(bArr, i, bArr2, i2) : decryptBlockWithIV(bArr, i, bArr2, i2);
        }
        return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f7550FR;
            if (i == bArr.length) {
                this.cipher.reset();
                return;
            }
            if (this.inlineIv) {
                bArr[i] = (byte) 0;
            } else {
                bArr[i] = this.f7551IV[i];
            }
            i++;
        }
    }
}
