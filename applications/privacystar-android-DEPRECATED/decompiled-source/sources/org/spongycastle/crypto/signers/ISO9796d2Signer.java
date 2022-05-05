package org.spongycastle.crypto.signers;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.SignerWithRecovery;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/signers/ISO9796d2Signer.class */
public class ISO9796d2Signer implements SignerWithRecovery {
    public static final int TRAILER_IMPLICIT = 188;
    public static final int TRAILER_RIPEMD128 = 13004;
    public static final int TRAILER_RIPEMD160 = 12748;
    public static final int TRAILER_SHA1 = 13260;
    public static final int TRAILER_SHA256 = 13516;
    public static final int TRAILER_SHA384 = 14028;
    public static final int TRAILER_SHA512 = 13772;
    public static final int TRAILER_WHIRLPOOL = 14284;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest digest;
    private boolean fullMessage;
    private int keyBits;
    private byte[] mBuf;
    private int messageLength;
    private byte[] preBlock;
    private byte[] preSig;
    private byte[] recoveredMessage;
    private int trailer;

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, false);
    }

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, boolean z) {
        this.cipher = asymmetricBlockCipher;
        this.digest = digest;
        if (z) {
            this.trailer = 188;
            return;
        }
        Integer trailer = ISOTrailers.getTrailer(digest);
        if (trailer != null) {
            this.trailer = trailer.intValue();
            return;
        }
        throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
    }

    private void clearBlock(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z;
        boolean z2 = true;
        boolean z3 = true;
        if (this.messageLength <= this.mBuf.length) {
            if (this.messageLength != bArr2.length) {
                z2 = false;
            }
            int i = 0;
            while (true) {
                z = z2;
                if (i == bArr2.length) {
                    break;
                }
                if (bArr[i] != bArr2[i]) {
                    z2 = false;
                }
                i++;
            }
        } else {
            if (this.mBuf.length > bArr2.length) {
                z3 = false;
            }
            int i2 = 0;
            while (true) {
                z = z3;
                if (i2 == this.mBuf.length) {
                    break;
                }
                if (bArr[i2] != bArr2[i2]) {
                    z3 = false;
                }
                i2++;
            }
        }
        return z;
    }

    private boolean returnFalse(byte[] bArr) {
        this.messageLength = 0;
        clearBlock(this.mBuf);
        clearBlock(bArr);
        return false;
    }

    @Override // org.spongycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException {
        int i;
        int i2;
        int i3;
        byte b;
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        int digestSize = this.digest.getDigestSize();
        boolean z = true;
        if (this.trailer == 188) {
            i2 = (this.block.length - digestSize) - 1;
            this.digest.doFinal(this.block, i2);
            this.block[this.block.length - 1] = (byte) (-68);
            i = 8;
        } else {
            i = 16;
            i2 = (this.block.length - digestSize) - 2;
            this.digest.doFinal(this.block, i2);
            this.block[this.block.length - 2] = (byte) (this.trailer >>> 8);
            this.block[this.block.length - 1] = (byte) this.trailer;
        }
        int i4 = ((((digestSize + this.messageLength) * 8) + i) + 4) - this.keyBits;
        if (i4 > 0) {
            int i5 = this.messageLength - ((i4 + 7) / 8);
            b = 96;
            i3 = i2 - i5;
            System.arraycopy(this.mBuf, 0, this.block, i3, i5);
            this.recoveredMessage = new byte[i5];
        } else {
            b = 64;
            i3 = i2 - this.messageLength;
            System.arraycopy(this.mBuf, 0, this.block, i3, this.messageLength);
            this.recoveredMessage = new byte[this.messageLength];
        }
        int i6 = i3 - 1;
        if (i6 > 0) {
            for (int i7 = i6; i7 != 0; i7--) {
                this.block[i7] = (byte) (-69);
            }
            this.block[i6] = (byte) (bArr2[i6] ^ 1);
            this.block[0] = (byte) 11;
            this.block[0] = (byte) (bArr3[0] | b);
        } else {
            this.block[0] = (byte) 10;
            this.block[0] = (byte) (bArr[0] | b);
        }
        byte[] processBlock = this.cipher.processBlock(this.block, 0, this.block.length);
        if ((b & 32) != 0) {
            z = false;
        }
        this.fullMessage = z;
        System.arraycopy(this.mBuf, 0, this.recoveredMessage, 0, this.recoveredMessage.length);
        this.messageLength = 0;
        clearBlock(this.mBuf);
        clearBlock(this.block);
        return processBlock;
    }

    @Override // org.spongycastle.crypto.SignerWithRecovery
    public byte[] getRecoveredMessage() {
        return this.recoveredMessage;
    }

    @Override // org.spongycastle.crypto.SignerWithRecovery
    public boolean hasFullMessage() {
        return this.fullMessage;
    }

    @Override // org.spongycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) cipherParameters;
        this.cipher.init(z, rSAKeyParameters);
        this.keyBits = rSAKeyParameters.getModulus().bitLength();
        this.block = new byte[(this.keyBits + 7) / 8];
        if (this.trailer == 188) {
            this.mBuf = new byte[(this.block.length - this.digest.getDigestSize()) - 2];
        } else {
            this.mBuf = new byte[(this.block.length - this.digest.getDigestSize()) - 3];
        }
        reset();
    }

    @Override // org.spongycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        clearBlock(this.mBuf);
        if (this.recoveredMessage != null) {
            clearBlock(this.recoveredMessage);
        }
        this.recoveredMessage = null;
        this.fullMessage = false;
        if (this.preSig != null) {
            this.preSig = null;
            clearBlock(this.preBlock);
            this.preBlock = null;
        }
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte b) {
        this.digest.update(b);
        if (this.messageLength < this.mBuf.length) {
            this.mBuf[this.messageLength] = b;
        }
        this.messageLength++;
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        while (i2 > 0 && this.messageLength < this.mBuf.length) {
            update(bArr[i]);
            i++;
            i2--;
        }
        this.digest.update(bArr, i, i2);
        this.messageLength += i2;
    }

    @Override // org.spongycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) throws InvalidCipherTextException {
        byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
        if (((processBlock[0] & 192) ^ 64) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        } else if (((processBlock[processBlock.length - 1] & 15) ^ 12) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        } else {
            int i = 2;
            if (((processBlock[processBlock.length - 1] & 255) ^ 188) == 0) {
                i = 1;
            } else {
                int i2 = ((processBlock[processBlock.length - 2] & 255) << 8) | (processBlock[processBlock.length - 1] & 255);
                Integer trailer = ISOTrailers.getTrailer(this.digest);
                if (trailer == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                } else if (i2 != trailer.intValue()) {
                    throw new IllegalStateException("signer initialised with wrong digest for trailer " + i2);
                }
            }
            int i3 = 0;
            while (i3 != processBlock.length && ((processBlock[i3] & 15) ^ 10) != 0) {
                i3++;
            }
            int i4 = i3 + 1;
            int length = ((processBlock.length - i) - this.digest.getDigestSize()) - i4;
            if (length <= 0) {
                throw new InvalidCipherTextException("malformed block");
            }
            if ((processBlock[0] & 32) == 0) {
                this.fullMessage = true;
                this.recoveredMessage = new byte[length];
                System.arraycopy(processBlock, i4, this.recoveredMessage, 0, this.recoveredMessage.length);
            } else {
                this.fullMessage = false;
                this.recoveredMessage = new byte[length];
                System.arraycopy(processBlock, i4, this.recoveredMessage, 0, this.recoveredMessage.length);
            }
            this.preSig = bArr;
            this.preBlock = processBlock;
            this.digest.update(this.recoveredMessage, 0, this.recoveredMessage.length);
            this.messageLength = this.recoveredMessage.length;
            System.arraycopy(this.recoveredMessage, 0, this.mBuf, 0, this.recoveredMessage.length);
        }
    }

    @Override // org.spongycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] processBlock;
        if (this.preSig == null) {
            try {
                processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            } catch (Exception e) {
                return false;
            }
        } else if (!Arrays.areEqual(this.preSig, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        } else {
            processBlock = this.preBlock;
            this.preSig = null;
            this.preBlock = null;
        }
        if (((processBlock[0] & 192) ^ 64) == 0 && ((processBlock[processBlock.length - 1] & 15) ^ 12) == 0) {
            int i = 2;
            if (((processBlock[processBlock.length - 1] & 255) ^ 188) == 0) {
                i = 1;
            } else {
                int i2 = ((processBlock[processBlock.length - 2] & 255) << 8) | (processBlock[processBlock.length - 1] & 255);
                Integer trailer = ISOTrailers.getTrailer(this.digest);
                if (trailer == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                } else if (i2 != trailer.intValue()) {
                    throw new IllegalStateException("signer initialised with wrong digest for trailer " + i2);
                }
            }
            int i3 = 0;
            while (i3 != processBlock.length && ((processBlock[i3] & 15) ^ 10) != 0) {
                i3++;
            }
            int i4 = i3 + 1;
            byte[] bArr2 = new byte[this.digest.getDigestSize()];
            int length = (processBlock.length - i) - bArr2.length;
            int i5 = length - i4;
            if (i5 <= 0) {
                return returnFalse(processBlock);
            }
            if ((processBlock[0] & 32) == 0) {
                this.fullMessage = true;
                if (this.messageLength > i5) {
                    return returnFalse(processBlock);
                }
                this.digest.reset();
                this.digest.update(processBlock, i4, i5);
                this.digest.doFinal(bArr2, 0);
                boolean z = true;
                for (int i6 = 0; i6 != bArr2.length; i6++) {
                    int i7 = length + i6;
                    processBlock[i7] = (byte) (processBlock[i7] ^ bArr2[i6]);
                    if (processBlock[i7] != 0) {
                        z = false;
                    }
                }
                if (!z) {
                    return returnFalse(processBlock);
                }
                this.recoveredMessage = new byte[i5];
                System.arraycopy(processBlock, i4, this.recoveredMessage, 0, this.recoveredMessage.length);
            } else {
                this.fullMessage = false;
                this.digest.doFinal(bArr2, 0);
                boolean z2 = true;
                for (int i8 = 0; i8 != bArr2.length; i8++) {
                    int i9 = length + i8;
                    processBlock[i9] = (byte) (processBlock[i9] ^ bArr2[i8]);
                    if (processBlock[i9] != 0) {
                        z2 = false;
                    }
                }
                if (!z2) {
                    return returnFalse(processBlock);
                }
                this.recoveredMessage = new byte[i5];
                System.arraycopy(processBlock, i4, this.recoveredMessage, 0, this.recoveredMessage.length);
            }
            if (!(this.messageLength == 0 || isSameAs(this.mBuf, this.recoveredMessage))) {
                return returnFalse(processBlock);
            }
            clearBlock(this.mBuf);
            clearBlock(processBlock);
            this.messageLength = 0;
            return true;
        }
        return returnFalse(processBlock);
    }
}
