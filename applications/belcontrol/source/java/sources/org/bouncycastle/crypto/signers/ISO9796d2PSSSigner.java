package org.bouncycastle.crypto.signers;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.SignerWithRecovery;
import org.bouncycastle.crypto.digests.RIPEMD128Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/signers/ISO9796d2PSSSigner.class */
public class ISO9796d2PSSSigner implements SignerWithRecovery {
    public static final int TRAILER_IMPLICIT = 188;
    public static final int TRAILER_RIPEMD128 = 13004;
    public static final int TRAILER_RIPEMD160 = 12748;
    public static final int TRAILER_SHA1 = 13260;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest digest;
    private boolean fullMessage;
    private int hLen;
    private int keyBits;
    private byte[] mBuf;
    private int messageLength;
    private SecureRandom random;
    private byte[] recoveredMessage;
    private int saltLength;
    private byte[] standardSalt;
    private int trailer;

    public ISO9796d2PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i) {
        this(asymmetricBlockCipher, digest, i, false);
    }

    public ISO9796d2PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i, boolean z) {
        int i2;
        this.cipher = asymmetricBlockCipher;
        this.digest = digest;
        this.hLen = digest.getDigestSize();
        this.saltLength = i;
        if (z) {
            i2 = 188;
        } else if (digest instanceof SHA1Digest) {
            i2 = 13260;
        } else if (digest instanceof RIPEMD160Digest) {
            i2 = 12748;
        } else if (!(digest instanceof RIPEMD128Digest)) {
            throw new IllegalArgumentException("no valid trailer for digest");
        } else {
            i2 = 13004;
        }
        this.trailer = i2;
    }

    private void ItoOSP(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    private void LtoOSP(long j, byte[] bArr) {
        bArr[0] = (byte) (j >>> 56);
        bArr[1] = (byte) (j >>> 48);
        bArr[2] = (byte) (j >>> 40);
        bArr[3] = (byte) (j >>> 32);
        bArr[4] = (byte) (j >>> 24);
        bArr[5] = (byte) (j >>> 16);
        bArr[6] = (byte) (j >>> 8);
        bArr[7] = (byte) (j >>> 0);
    }

    private void clearBlock(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z = this.messageLength == bArr2.length;
        for (int i = 0; i != bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                z = false;
            }
        }
        return z;
    }

    private byte[] maskGeneratorFunction1(byte[] bArr, int i, int i2, int i3) {
        int i4;
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[this.hLen];
        byte[] bArr4 = new byte[4];
        this.digest.reset();
        int i5 = 0;
        while (true) {
            i4 = this.hLen;
            if (i5 >= i3 / i4) {
                break;
            }
            ItoOSP(i5, bArr4);
            this.digest.update(bArr, i, i2);
            this.digest.update(bArr4, 0, 4);
            this.digest.doFinal(bArr3, 0);
            int i6 = this.hLen;
            System.arraycopy(bArr3, 0, bArr2, i5 * i6, i6);
            i5++;
        }
        if (i4 * i5 < i3) {
            ItoOSP(i5, bArr4);
            this.digest.update(bArr, i, i2);
            this.digest.update(bArr4, 0, 4);
            this.digest.doFinal(bArr3, 0);
            int i7 = this.hLen;
            System.arraycopy(bArr3, 0, bArr2, i5 * i7, i3 - (i5 * i7));
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        int i;
        byte[] bArr;
        int digestSize = this.digest.getDigestSize();
        byte[] bArr2 = new byte[digestSize];
        this.digest.doFinal(bArr2, 0);
        byte[] bArr3 = new byte[8];
        LtoOSP(this.messageLength * 8, bArr3);
        this.digest.update(bArr3, 0, 8);
        this.digest.update(this.mBuf, 0, this.messageLength);
        this.digest.update(bArr2, 0, digestSize);
        byte[] bArr4 = this.standardSalt;
        if (bArr4 == null) {
            bArr4 = new byte[this.saltLength];
            this.random.nextBytes(bArr4);
        }
        this.digest.update(bArr4, 0, bArr4.length);
        int digestSize2 = this.digest.getDigestSize();
        byte[] bArr5 = new byte[digestSize2];
        this.digest.doFinal(bArr5, 0);
        int i2 = this.trailer == 188 ? 1 : 2;
        byte[] bArr6 = this.block;
        int length = bArr6.length;
        int i3 = this.messageLength;
        int length2 = ((((length - i3) - bArr4.length) - this.hLen) - i2) - 1;
        bArr6[length2] = (byte) 1;
        int i4 = length2 + 1;
        System.arraycopy(this.mBuf, 0, bArr6, i4, i3);
        System.arraycopy(bArr4, 0, this.block, i4 + this.messageLength, bArr4.length);
        byte[] maskGeneratorFunction1 = maskGeneratorFunction1(bArr5, 0, digestSize2, (this.block.length - this.hLen) - i2);
        for (int i5 = 0; i5 != maskGeneratorFunction1.length; i5++) {
            this.block[i5] = (byte) (bArr[i5] ^ maskGeneratorFunction1[i5]);
        }
        byte[] bArr7 = this.block;
        int length3 = bArr7.length;
        int i6 = this.hLen;
        System.arraycopy(bArr5, 0, bArr7, (length3 - i6) - i2, i6);
        if (this.trailer == 188) {
            byte[] bArr8 = this.block;
            bArr8[bArr8.length - 1] = (byte) (-68);
        } else {
            byte[] bArr9 = this.block;
            bArr9[bArr9.length - 2] = (byte) (i >>> 8);
            bArr9[bArr9.length - 1] = (byte) i;
        }
        byte[] bArr10 = this.block;
        bArr10[0] = (byte) (bArr10[0] & Byte.MAX_VALUE);
        byte[] processBlock = this.cipher.processBlock(bArr10, 0, bArr10.length);
        clearBlock(this.mBuf);
        clearBlock(this.block);
        this.messageLength = 0;
        return processBlock;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public byte[] getRecoveredMessage() {
        return this.recoveredMessage;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public boolean hasFullMessage() {
        return this.fullMessage;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ed  */
    @Override // org.bouncycastle.crypto.Signer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init(boolean r5, org.bouncycastle.crypto.CipherParameters r6) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.signers.ISO9796d2PSSSigner.init(boolean, org.bouncycastle.crypto.CipherParameters):void");
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        byte[] bArr = this.mBuf;
        if (bArr != null) {
            clearBlock(bArr);
        }
        byte[] bArr2 = this.recoveredMessage;
        if (bArr2 != null) {
            clearBlock(bArr2);
            this.recoveredMessage = null;
        }
        this.fullMessage = false;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        int i = this.messageLength;
        byte[] bArr = this.mBuf;
        if (i >= bArr.length) {
            this.digest.update(b);
            return;
        }
        this.messageLength = i + 1;
        bArr[i] = b;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        while (i2 > 0 && this.messageLength < this.mBuf.length) {
            update(bArr[i]);
            i++;
            i2--;
        }
        if (i2 > 0) {
            this.digest.update(bArr, i, i2);
        }
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) {
        throw new RuntimeException("not implemented");
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        try {
            byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            int length = processBlock.length;
            int i = this.keyBits;
            byte[] bArr2 = processBlock;
            if (length < (i + 7) / 8) {
                int i2 = (i + 7) / 8;
                bArr2 = new byte[i2];
                System.arraycopy(processBlock, 0, bArr2, i2 - processBlock.length, processBlock.length);
                clearBlock(processBlock);
            }
            int i3 = 2;
            if (((bArr2[bArr2.length - 1] & 255) ^ 188) == 0) {
                i3 = 1;
            } else {
                int i4 = ((bArr2[bArr2.length - 2] & 255) << 8) | (bArr2[bArr2.length - 1] & 255);
                if (i4 != 12748) {
                    if (i4 != 13004) {
                        if (i4 != 13260) {
                            throw new IllegalArgumentException("unrecognised hash in signature");
                        }
                        if (!(this.digest instanceof SHA1Digest)) {
                            throw new IllegalStateException("signer should be initialised with SHA1");
                        }
                    } else if (!(this.digest instanceof RIPEMD128Digest)) {
                        throw new IllegalStateException("signer should be initialised with RIPEMD128");
                    }
                } else if (!(this.digest instanceof RIPEMD160Digest)) {
                    throw new IllegalStateException("signer should be initialised with RIPEMD160");
                }
            }
            int i5 = this.hLen;
            byte[] bArr3 = new byte[i5];
            this.digest.doFinal(bArr3, 0);
            int length2 = bArr2.length;
            int i6 = this.hLen;
            byte[] maskGeneratorFunction1 = maskGeneratorFunction1(bArr2, (length2 - i6) - i3, i6, (bArr2.length - i6) - i3);
            for (int i7 = 0; i7 != maskGeneratorFunction1.length; i7++) {
                bArr2[i7] = (byte) (bArr2[i7] ^ maskGeneratorFunction1[i7]);
            }
            bArr2[0] = (byte) (bArr2[0] & Byte.MAX_VALUE);
            int i8 = 0;
            while (i8 != bArr2.length && bArr2[i8] != 1) {
                i8++;
            }
            int i9 = i8 + 1;
            if (i9 >= bArr2.length) {
                clearBlock(bArr2);
                return false;
            }
            this.fullMessage = i9 > 1;
            byte[] bArr4 = new byte[(maskGeneratorFunction1.length - i9) - this.saltLength];
            this.recoveredMessage = bArr4;
            System.arraycopy(bArr2, i9, bArr4, 0, bArr4.length);
            byte[] bArr5 = new byte[8];
            LtoOSP(this.recoveredMessage.length * 8, bArr5);
            this.digest.update(bArr5, 0, 8);
            byte[] bArr6 = this.recoveredMessage;
            if (bArr6.length != 0) {
                this.digest.update(bArr6, 0, bArr6.length);
            }
            this.digest.update(bArr3, 0, i5);
            this.digest.update(bArr2, i9 + this.recoveredMessage.length, this.saltLength);
            int digestSize = this.digest.getDigestSize();
            byte[] bArr7 = new byte[digestSize];
            this.digest.doFinal(bArr7, 0);
            int length3 = bArr2.length;
            boolean z = true;
            for (int i10 = 0; i10 != digestSize; i10++) {
                if (bArr7[i10] != bArr2[((length3 - i3) - digestSize) + i10]) {
                    z = false;
                }
            }
            clearBlock(bArr2);
            clearBlock(bArr7);
            if (!z) {
                this.fullMessage = false;
                clearBlock(this.recoveredMessage);
                return false;
            }
            if (this.messageLength != 0) {
                if (!isSameAs(this.mBuf, this.recoveredMessage)) {
                    clearBlock(this.mBuf);
                    return false;
                }
                this.messageLength = 0;
            }
            clearBlock(this.mBuf);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
