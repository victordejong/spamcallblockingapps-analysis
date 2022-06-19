package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/GOFBBlockCipher.class */
public class GOFBBlockCipher implements BlockCipher {

    /* renamed from: C1 */
    public static final int f7542C1 = 16843012;

    /* renamed from: C2 */
    public static final int f7543C2 = 16843009;

    /* renamed from: IV */
    private byte[] f7544IV;

    /* renamed from: N3 */
    public int f7545N3;

    /* renamed from: N4 */
    public int f7546N4;
    private final int blockSize;
    private final BlockCipher cipher;
    public boolean firstStep = true;
    private byte[] ofbOutV;
    private byte[] ofbV;

    public GOFBBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        if (blockSize == 8) {
            this.f7544IV = new byte[blockCipher.getBlockSize()];
            this.ofbV = new byte[blockCipher.getBlockSize()];
            this.ofbOutV = new byte[blockCipher.getBlockSize()];
            return;
        }
        throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
    }

    private int bytesToint(byte[] bArr, int i) {
        return ((bArr[i + 3] << 24) & (-16777216)) + ((bArr[i + 2] << 16) & 16711680) + ((bArr[i + 1] << 8) & 65280) + (bArr[i] & 255);
    }

    private void intTobytes(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCTR";
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
        this.firstStep = true;
        this.f7545N3 = 0;
        this.f7546N4 = 0;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            int length = iv.length;
            byte[] bArr = this.f7544IV;
            if (length < bArr.length) {
                System.arraycopy(iv, 0, bArr, bArr.length - iv.length, iv.length);
                int i = 0;
                while (true) {
                    byte[] bArr2 = this.f7544IV;
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
        int i3 = this.blockSize;
        if (i + i3 <= bArr.length) {
            if (i3 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            if (this.firstStep) {
                this.firstStep = false;
                this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
                this.f7545N3 = bytesToint(this.ofbOutV, 0);
                this.f7546N4 = bytesToint(this.ofbOutV, 4);
            }
            int i4 = this.f7545N3 + f7543C2;
            this.f7545N3 = i4;
            this.f7546N4 += f7542C1;
            intTobytes(i4, this.ofbV, 0);
            intTobytes(this.f7546N4, this.ofbV, 4);
            this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
            int i5 = 0;
            while (true) {
                int i6 = this.blockSize;
                if (i5 >= i6) {
                    byte[] bArr3 = this.ofbV;
                    System.arraycopy(bArr3, i6, bArr3, 0, bArr3.length - i6);
                    byte[] bArr4 = this.ofbOutV;
                    byte[] bArr5 = this.ofbV;
                    int length = bArr5.length;
                    int i7 = this.blockSize;
                    System.arraycopy(bArr4, 0, bArr5, length - i7, i7);
                    return this.blockSize;
                }
                bArr2[i2 + i5] = (byte) (this.ofbOutV[i5] ^ bArr[i + i5]);
                i5++;
            }
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.f7544IV;
        System.arraycopy(bArr, 0, this.ofbV, 0, bArr.length);
        this.cipher.reset();
    }
}
