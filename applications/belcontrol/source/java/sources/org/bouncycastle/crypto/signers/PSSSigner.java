package org.bouncycastle.crypto.signers;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSABlindingParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/signers/PSSSigner.class */
public class PSSSigner implements Signer {
    public static final byte TRAILER_IMPLICIT = -68;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest contentDigest;
    private int emBits;
    private int hLen;
    private byte[] mDash;
    private Digest mgfDigest;
    private int mgfhLen;
    private SecureRandom random;
    private int sLen;
    private byte[] salt;
    private byte trailer;

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i) {
        this(asymmetricBlockCipher, digest, i, (byte) -68);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i, byte b) {
        this(asymmetricBlockCipher, digest, digest, i, b);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i) {
        this(asymmetricBlockCipher, digest, digest2, i, (byte) -68);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i, byte b) {
        this.cipher = asymmetricBlockCipher;
        this.contentDigest = digest;
        this.mgfDigest = digest2;
        this.hLen = digest.getDigestSize();
        this.mgfhLen = digest2.getDigestSize();
        this.sLen = i;
        this.salt = new byte[i];
        this.mDash = new byte[i + 8 + this.hLen];
        this.trailer = b;
    }

    private void ItoOSP(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    private void clearBlock(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) 0;
        }
    }

    private byte[] maskGeneratorFunction1(byte[] bArr, int i, int i2, int i3) {
        int i4;
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[this.mgfhLen];
        byte[] bArr4 = new byte[4];
        this.mgfDigest.reset();
        int i5 = 0;
        while (true) {
            i4 = this.mgfhLen;
            if (i5 >= i3 / i4) {
                break;
            }
            ItoOSP(i5, bArr4);
            this.mgfDigest.update(bArr, i, i2);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int i6 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, i5 * i6, i6);
            i5++;
        }
        if (i4 * i5 < i3) {
            ItoOSP(i5, bArr4);
            this.mgfDigest.update(bArr, i, i2);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int i7 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, i5 * i7, i3 - (i5 * i7));
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        byte[] bArr;
        Digest digest = this.contentDigest;
        byte[] bArr2 = this.mDash;
        digest.doFinal(bArr2, (bArr2.length - this.hLen) - this.sLen);
        if (this.sLen != 0) {
            this.random.nextBytes(this.salt);
            byte[] bArr3 = this.salt;
            byte[] bArr4 = this.mDash;
            int length = bArr4.length;
            int i = this.sLen;
            System.arraycopy(bArr3, 0, bArr4, length - i, i);
        }
        int i2 = this.hLen;
        byte[] bArr5 = new byte[i2];
        Digest digest2 = this.contentDigest;
        byte[] bArr6 = this.mDash;
        digest2.update(bArr6, 0, bArr6.length);
        this.contentDigest.doFinal(bArr5, 0);
        byte[] bArr7 = this.block;
        int length2 = bArr7.length;
        int i3 = this.sLen;
        int i4 = this.hLen;
        bArr7[(((length2 - i3) - 1) - i4) - 1] = (byte) 1;
        System.arraycopy(this.salt, 0, bArr7, ((bArr7.length - i3) - i4) - 1, i3);
        byte[] maskGeneratorFunction1 = maskGeneratorFunction1(bArr5, 0, i2, (this.block.length - this.hLen) - 1);
        for (int i5 = 0; i5 != maskGeneratorFunction1.length; i5++) {
            this.block[i5] = (byte) (bArr[i5] ^ maskGeneratorFunction1[i5]);
        }
        byte[] bArr8 = this.block;
        bArr8[0] = (byte) (bArr8[0] & (255 >> ((bArr8.length * 8) - this.emBits)));
        int length3 = bArr8.length;
        int i6 = this.hLen;
        System.arraycopy(bArr5, 0, bArr8, (length3 - i6) - 1, i6);
        byte[] bArr9 = this.block;
        bArr9[bArr9.length - 1] = this.trailer;
        byte[] processBlock = this.cipher.processBlock(bArr9, 0, bArr9.length);
        clearBlock(this.block);
        return processBlock;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            cipherParameters2 = parametersWithRandom.getParameters();
            this.random = parametersWithRandom.getRandom();
        } else {
            cipherParameters2 = cipherParameters;
            if (z) {
                this.random = new SecureRandom();
                cipherParameters2 = cipherParameters;
            }
        }
        this.cipher.init(z, cipherParameters2);
        int bitLength = (cipherParameters2 instanceof RSABlindingParameters ? ((RSABlindingParameters) cipherParameters2).getPublicKey() : (RSAKeyParameters) cipherParameters2).getModulus().bitLength() - 1;
        this.emBits = bitLength;
        if (bitLength >= (this.hLen * 8) + (this.sLen * 8) + 9) {
            this.block = new byte[(bitLength + 7) / 8];
            reset();
            return;
        }
        throw new IllegalArgumentException("key too small for specified hash and salt lengths");
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.contentDigest.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.contentDigest.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.contentDigest.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArr2;
        byte[] bArr3;
        Digest digest = this.contentDigest;
        byte[] bArr4 = this.mDash;
        digest.doFinal(bArr4, (bArr4.length - this.hLen) - this.sLen);
        try {
            byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            byte[] bArr5 = this.block;
            System.arraycopy(processBlock, 0, bArr5, bArr5.length - processBlock.length, processBlock.length);
            byte[] bArr6 = this.block;
            if (bArr6[bArr6.length - 1] != this.trailer) {
                clearBlock(bArr6);
                return false;
            }
            int length = bArr6.length;
            int i = this.hLen;
            byte[] maskGeneratorFunction1 = maskGeneratorFunction1(bArr6, (length - i) - 1, i, (bArr6.length - i) - 1);
            for (int i2 = 0; i2 != maskGeneratorFunction1.length; i2++) {
                this.block[i2] = (byte) (bArr3[i2] ^ maskGeneratorFunction1[i2]);
            }
            this.block[0] = (byte) (bArr2[0] & (255 >> ((bArr2.length * 8) - this.emBits)));
            int i3 = 0;
            while (true) {
                byte[] bArr7 = this.block;
                int length2 = bArr7.length;
                int i4 = this.hLen;
                int i5 = this.sLen;
                if (i3 != ((length2 - i4) - i5) - 2) {
                    if (bArr7[i3] != 0) {
                        clearBlock(bArr7);
                        return false;
                    }
                    i3++;
                } else if (bArr7[((bArr7.length - i4) - i5) - 2] != 1) {
                    clearBlock(bArr7);
                    return false;
                } else {
                    int length3 = bArr7.length;
                    byte[] bArr8 = this.mDash;
                    System.arraycopy(bArr7, ((length3 - i5) - i4) - 1, bArr8, bArr8.length - i5, i5);
                    Digest digest2 = this.contentDigest;
                    byte[] bArr9 = this.mDash;
                    digest2.update(bArr9, 0, bArr9.length);
                    Digest digest3 = this.contentDigest;
                    byte[] bArr10 = this.mDash;
                    digest3.doFinal(bArr10, bArr10.length - this.hLen);
                    int length4 = this.block.length;
                    int i6 = this.hLen;
                    int i7 = (length4 - i6) - 1;
                    int length5 = this.mDash.length - i6;
                    while (true) {
                        byte[] bArr11 = this.mDash;
                        if (length5 == bArr11.length) {
                            clearBlock(bArr11);
                            clearBlock(this.block);
                            return true;
                        } else if ((this.block[i7] ^ bArr11[length5]) != 0) {
                            clearBlock(bArr11);
                            clearBlock(this.block);
                            return false;
                        } else {
                            i7++;
                            length5++;
                        }
                    }
                }
            }
        } catch (Exception e) {
            return false;
        }
    }
}
