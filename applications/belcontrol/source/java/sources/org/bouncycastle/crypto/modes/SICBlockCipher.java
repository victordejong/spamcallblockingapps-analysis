package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/SICBlockCipher.class */
public class SICBlockCipher implements BlockCipher {

    /* renamed from: IV */
    private byte[] f7552IV;
    private final int blockSize;
    private final BlockCipher cipher;
    private byte[] counter;
    private byte[] counterOut;

    public SICBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.f7552IV = new byte[blockSize];
        this.counter = new byte[blockSize];
        this.counterOut = new byte[blockSize];
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/SIC";
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
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            byte[] bArr = this.f7552IV;
            System.arraycopy(iv, 0, bArr, 0, bArr.length);
            reset();
            this.cipher.init(true, parametersWithIV.getParameters());
            return;
        }
        throw new IllegalArgumentException("SIC mode requires ParametersWithIV");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        byte[] bArr3;
        int i3;
        this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
        int i4 = 0;
        while (true) {
            if (i4 >= this.counterOut.length) {
                break;
            }
            bArr2[i2 + i4] = (byte) (bArr3[i4] ^ bArr[i + i4]);
            i4++;
        }
        int i5 = 1;
        for (int length = this.counter.length - 1; length >= 0; length--) {
            byte[] bArr4 = this.counter;
            i5 = (bArr4[length] & 255) + i5 > 255 ? 1 : 0;
            bArr4[length] = (byte) i3;
        }
        return this.counter.length;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.f7552IV;
        byte[] bArr2 = this.counter;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.cipher.reset();
    }
}
