package org.bouncycastle.crypto.modes;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/CCMBlockCipher.class */
public class CCMBlockCipher implements AEADBlockCipher {
    private byte[] associatedText;
    private int blockSize;
    private BlockCipher cipher;
    private ByteArrayOutputStream data = new ByteArrayOutputStream();
    private boolean forEncryption;
    private CipherParameters keyParam;
    private byte[] macBlock;
    private int macSize;
    private byte[] nonce;

    public CCMBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.macBlock = new byte[blockSize];
        if (blockSize == 16) {
            return;
        }
        throw new IllegalArgumentException("cipher required with a block size of 16.");
    }

    private int calculateMac(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3;
        CBCBlockCipherMac cBCBlockCipherMac = new CBCBlockCipherMac(this.cipher, this.macSize * 8);
        cBCBlockCipherMac.init(this.keyParam);
        byte[] bArr3 = new byte[16];
        if (hasAssociatedText()) {
            bArr3[0] = (byte) (bArr3[0] | 64);
        }
        bArr3[0] = (byte) (bArr3[0] | ((((cBCBlockCipherMac.getMacSize() - 2) / 2) & 7) << 3));
        byte b = bArr3[0];
        byte[] bArr4 = this.nonce;
        bArr3[0] = (byte) (b | (((15 - bArr4.length) - 1) & 7));
        System.arraycopy(bArr4, 0, bArr3, 1, bArr4.length);
        int i4 = i2;
        int i5 = 1;
        while (i4 > 0) {
            bArr3[16 - i5] = (byte) (i4 & 255);
            i4 >>>= 8;
            i5++;
        }
        cBCBlockCipherMac.update(bArr3, 0, 16);
        if (hasAssociatedText()) {
            byte[] bArr5 = this.associatedText;
            if (bArr5.length < 65280) {
                cBCBlockCipherMac.update((byte) (bArr5.length >> 8));
                cBCBlockCipherMac.update((byte) this.associatedText.length);
                i3 = 2;
            } else {
                cBCBlockCipherMac.update((byte) -1);
                cBCBlockCipherMac.update((byte) -2);
                cBCBlockCipherMac.update((byte) (this.associatedText.length >> 24));
                cBCBlockCipherMac.update((byte) (this.associatedText.length >> 16));
                cBCBlockCipherMac.update((byte) (this.associatedText.length >> 8));
                cBCBlockCipherMac.update((byte) this.associatedText.length);
                i3 = 6;
            }
            byte[] bArr6 = this.associatedText;
            cBCBlockCipherMac.update(bArr6, 0, bArr6.length);
            int length = (i3 + this.associatedText.length) % 16;
            if (length != 0) {
                for (int i6 = 0; i6 != 16 - length; i6++) {
                    cBCBlockCipherMac.update((byte) 0);
                }
            }
        }
        cBCBlockCipherMac.update(bArr, i, i2);
        return cBCBlockCipherMac.doFinal(bArr2, 0);
    }

    private boolean hasAssociatedText() {
        byte[] bArr = this.associatedText;
        return (bArr == null || bArr.length == 0) ? false : true;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) {
        byte[] byteArray = this.data.toByteArray();
        byte[] processPacket = processPacket(byteArray, 0, byteArray.length);
        System.arraycopy(processPacket, 0, bArr, i, processPacket.length);
        reset();
        return processPacket.length;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        int i = this.macSize;
        byte[] bArr = new byte[i];
        System.arraycopy(this.macBlock, 0, bArr, 0, i);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        return this.forEncryption ? this.data.size() + i + this.macSize : (this.data.size() + i) - this.macSize;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        KeyParameter parameters;
        this.forEncryption = z;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            this.nonce = aEADParameters.getNonce();
            this.associatedText = aEADParameters.getAssociatedText();
            this.macSize = aEADParameters.getMacSize() / 8;
            parameters = aEADParameters.getKey();
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameters passed to CCM");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.nonce = parametersWithIV.getIV();
            this.associatedText = null;
            this.macSize = this.macBlock.length / 2;
            parameters = parametersWithIV.getParameters();
        }
        this.keyParam = parameters;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) {
        this.data.write(b);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.data.write(bArr, i, i2);
        return 0;
    }

    public byte[] processPacket(byte[] bArr, int i, int i2) {
        byte[] bArr2;
        int i3;
        int i4;
        if (this.keyParam != null) {
            SICBlockCipher sICBlockCipher = new SICBlockCipher(this.cipher);
            byte[] bArr3 = new byte[this.blockSize];
            byte[] bArr4 = this.nonce;
            bArr3[0] = (byte) (((15 - bArr4.length) - 1) & 7);
            System.arraycopy(bArr4, 0, bArr3, 1, bArr4.length);
            sICBlockCipher.init(this.forEncryption, new ParametersWithIV(this.keyParam, bArr3));
            if (this.forEncryption) {
                int i5 = this.macSize + i2;
                byte[] bArr5 = new byte[i5];
                calculateMac(bArr, i, i2, this.macBlock);
                byte[] bArr6 = this.macBlock;
                sICBlockCipher.processBlock(bArr6, 0, bArr6, 0);
                int i6 = 0;
                while (true) {
                    i4 = this.blockSize;
                    if (i >= i2 - i4) {
                        break;
                    }
                    sICBlockCipher.processBlock(bArr, i, bArr5, i6);
                    int i7 = this.blockSize;
                    i6 += i7;
                    i += i7;
                }
                byte[] bArr7 = new byte[i4];
                int i8 = i2 - i;
                System.arraycopy(bArr, i, bArr7, 0, i8);
                sICBlockCipher.processBlock(bArr7, 0, bArr7, 0);
                System.arraycopy(bArr7, 0, bArr5, i6, i8);
                int i9 = i6 + i8;
                System.arraycopy(this.macBlock, 0, bArr5, i9, i5 - i9);
                bArr2 = bArr5;
            } else {
                int i10 = this.macSize;
                int i11 = i2 - i10;
                byte[] bArr8 = new byte[i11];
                System.arraycopy(bArr, (i2 + i) - i10, this.macBlock, 0, i10);
                byte[] bArr9 = this.macBlock;
                sICBlockCipher.processBlock(bArr9, 0, bArr9, 0);
                int i12 = this.macSize;
                while (true) {
                    byte[] bArr10 = this.macBlock;
                    if (i12 == bArr10.length) {
                        break;
                    }
                    bArr10[i12] = (byte) 0;
                    i12++;
                }
                int i13 = 0;
                while (true) {
                    i3 = this.blockSize;
                    if (i13 >= i11 - i3) {
                        break;
                    }
                    sICBlockCipher.processBlock(bArr, i, bArr8, i13);
                    int i14 = this.blockSize;
                    i13 += i14;
                    i += i14;
                }
                byte[] bArr11 = new byte[i3];
                int i15 = i11 - i13;
                System.arraycopy(bArr, i, bArr11, 0, i15);
                sICBlockCipher.processBlock(bArr11, 0, bArr11, 0);
                System.arraycopy(bArr11, 0, bArr8, i13, i15);
                byte[] bArr12 = new byte[this.blockSize];
                calculateMac(bArr8, 0, i11, bArr12);
                if (!Arrays.constantTimeAreEqual(this.macBlock, bArr12)) {
                    throw new InvalidCipherTextException("mac check in CCM failed");
                }
                bArr2 = bArr8;
            }
            return bArr2;
        }
        throw new IllegalStateException("CCM cipher unitialized.");
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() {
        this.cipher.reset();
        this.data.reset();
    }
}
