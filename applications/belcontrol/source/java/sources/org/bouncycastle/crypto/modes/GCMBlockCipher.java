package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;
import org.bouncycastle.crypto.modes.gcm.Tables8kGCMMultiplier;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.util.Pack;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/GCMBlockCipher.class */
public class GCMBlockCipher implements AEADBlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final byte[] ZEROES = new byte[16];

    /* renamed from: A */
    private byte[] f7538A;

    /* renamed from: H */
    private byte[] f7539H;

    /* renamed from: J0 */
    private byte[] f7540J0;

    /* renamed from: S */
    private byte[] f7541S;
    private byte[] bufBlock;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] counter;
    private boolean forEncryption;
    private byte[] initS;
    private KeyParameter keyParam;
    private byte[] macBlock;
    private int macSize;
    private GCMMultiplier multiplier;
    private byte[] nonce;
    private long totalLength;

    public GCMBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, null);
    }

    public GCMBlockCipher(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        if (blockCipher.getBlockSize() == 16) {
            Tables8kGCMMultiplier tables8kGCMMultiplier = gCMMultiplier == null ? new Tables8kGCMMultiplier() : gCMMultiplier;
            this.cipher = blockCipher;
            this.multiplier = tables8kGCMMultiplier;
            return;
        }
        throw new IllegalArgumentException("cipher required with a block size of 16.");
    }

    private void gCTRBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        byte[] bArr3;
        for (int i3 = 15; i3 >= 12; i3--) {
            byte[] bArr4 = this.counter;
            byte b = (byte) ((bArr4[i3] + 1) & 255);
            bArr4[i3] = b;
            if (b != 0) {
                break;
            }
        }
        byte[] bArr5 = new byte[16];
        this.cipher.processBlock(this.counter, 0, bArr5, 0);
        if (this.forEncryption) {
            System.arraycopy(ZEROES, i, bArr5, i, 16 - i);
            bArr3 = bArr5;
        } else {
            bArr3 = bArr;
        }
        for (int i4 = i - 1; i4 >= 0; i4--) {
            bArr5[i4] = (byte) (bArr5[i4] ^ bArr[i4]);
            bArr2[i2 + i4] = bArr5[i4];
        }
        xor(this.f7541S, bArr3);
        this.multiplier.multiplyH(this.f7541S);
        this.totalLength += i;
    }

    private byte[] gHASH(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        for (int i = 0; i < bArr.length; i += 16) {
            byte[] bArr3 = new byte[16];
            System.arraycopy(bArr, i, bArr3, 0, Math.min(bArr.length - i, 16));
            xor(bArr2, bArr3);
            this.multiplier.multiplyH(bArr2);
        }
        return bArr2;
    }

    private static void packLength(long j, byte[] bArr, int i) {
        Pack.intToBigEndian((int) (j >>> 32), bArr, i);
        Pack.intToBigEndian((int) j, bArr, i + 4);
    }

    private int process(byte b, byte[] bArr, int i) {
        byte[] bArr2 = this.bufBlock;
        int i2 = this.bufOff;
        int i3 = i2 + 1;
        this.bufOff = i3;
        bArr2[i2] = b;
        if (i3 == bArr2.length) {
            gCTRBlock(bArr2, 16, bArr, i);
            if (!this.forEncryption) {
                byte[] bArr3 = this.bufBlock;
                System.arraycopy(bArr3, 16, bArr3, 0, this.macSize);
            }
            this.bufOff = this.bufBlock.length - 16;
            return 16;
        }
        return 0;
    }

    private void reset(boolean z) {
        this.f7541S = Arrays.clone(this.initS);
        this.counter = Arrays.clone(this.f7540J0);
        this.bufOff = 0;
        this.totalLength = 0L;
        byte[] bArr = this.bufBlock;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
        if (z) {
            this.macBlock = null;
        }
        this.cipher.reset();
    }

    private static void xor(byte[] bArr, byte[] bArr2) {
        for (int i = 15; i >= 0; i--) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) {
        int i2 = this.bufOff;
        int i3 = i2;
        if (!this.forEncryption) {
            int i4 = this.macSize;
            if (i2 < i4) {
                throw new InvalidCipherTextException("data too short");
            }
            i3 = i2 - i4;
        }
        if (i3 > 0) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(this.bufBlock, 0, bArr2, 0, i3);
            gCTRBlock(bArr2, i3, bArr, i);
        }
        byte[] bArr3 = new byte[16];
        packLength(this.f7538A.length * 8, bArr3, 0);
        packLength(this.totalLength * 8, bArr3, 8);
        xor(this.f7541S, bArr3);
        this.multiplier.multiplyH(this.f7541S);
        byte[] bArr4 = new byte[16];
        this.cipher.processBlock(this.f7540J0, 0, bArr4, 0);
        xor(bArr4, this.f7541S);
        int i5 = this.macSize;
        byte[] bArr5 = new byte[i5];
        this.macBlock = bArr5;
        System.arraycopy(bArr4, 0, bArr5, 0, i5);
        if (this.forEncryption) {
            System.arraycopy(this.macBlock, 0, bArr, i + this.bufOff, this.macSize);
            i3 += this.macSize;
        } else {
            int i6 = this.macSize;
            byte[] bArr6 = new byte[i6];
            System.arraycopy(this.bufBlock, i3, bArr6, 0, i6);
            if (!Arrays.constantTimeAreEqual(this.macBlock, bArr6)) {
                throw new InvalidCipherTextException("mac check in GCM failed");
            }
        }
        reset(false);
        return i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        return Arrays.clone(this.macBlock);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        return this.forEncryption ? i + this.bufOff + this.macSize : (i + this.bufOff) - this.macSize;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        return ((i + this.bufOff) / 16) * 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        KeyParameter keyParameter;
        this.forEncryption = z;
        this.macBlock = null;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            this.nonce = aEADParameters.getNonce();
            this.f7538A = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 96 || macSize > 128 || macSize % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + macSize);
            }
            this.macSize = macSize / 8;
            keyParameter = aEADParameters.getKey();
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameters passed to GCM");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.nonce = parametersWithIV.getIV();
            this.f7538A = null;
            this.macSize = 16;
            keyParameter = (KeyParameter) parametersWithIV.getParameters();
        }
        this.keyParam = keyParameter;
        this.bufBlock = new byte[z ? 16 : this.macSize + 16];
        byte[] bArr = this.nonce;
        if (bArr == null || bArr.length < 1) {
            throw new IllegalArgumentException("IV must be at least 1 byte");
        }
        if (this.f7538A == null) {
            this.f7538A = new byte[0];
        }
        this.cipher.init(true, this.keyParam);
        byte[] bArr2 = new byte[16];
        this.f7539H = bArr2;
        this.cipher.processBlock(ZEROES, 0, bArr2, 0);
        this.multiplier.init(this.f7539H);
        this.initS = gHASH(this.f7538A);
        byte[] bArr3 = this.nonce;
        if (bArr3.length == 12) {
            byte[] bArr4 = new byte[16];
            this.f7540J0 = bArr4;
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            this.f7540J0[15] = (byte) 1;
        } else {
            this.f7540J0 = gHASH(bArr3);
            byte[] bArr5 = new byte[16];
            packLength(this.nonce.length * 8, bArr5, 8);
            xor(this.f7540J0, bArr5);
            this.multiplier.multiplyH(this.f7540J0);
        }
        this.f7541S = Arrays.clone(this.initS);
        this.counter = Arrays.clone(this.f7540J0);
        this.bufOff = 0;
        this.totalLength = 0L;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) {
        return process(b, bArr, i);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 != i2) {
                byte[] bArr3 = this.bufBlock;
                int i7 = this.bufOff;
                int i8 = i7 + 1;
                this.bufOff = i8;
                bArr3[i7] = bArr[i + i4];
                int i9 = i6;
                if (i8 == bArr3.length) {
                    gCTRBlock(bArr3, 16, bArr2, i3 + i6);
                    if (!this.forEncryption) {
                        byte[] bArr4 = this.bufBlock;
                        System.arraycopy(bArr4, 16, bArr4, 0, this.macSize);
                    }
                    this.bufOff = this.bufBlock.length - 16;
                    i9 = i6 + 16;
                }
                i4++;
                i5 = i9;
            } else {
                return i6;
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() {
        reset(true);
    }
}
