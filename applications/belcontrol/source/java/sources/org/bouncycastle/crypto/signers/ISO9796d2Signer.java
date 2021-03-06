package org.bouncycastle.crypto.signers;

import java.util.Hashtable;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SignerWithRecovery;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/signers/ISO9796d2Signer.class */
public class ISO9796d2Signer implements SignerWithRecovery {
    public static final int TRAILER_IMPLICIT = 188;
    public static final int TRAILER_RIPEMD128 = 13004;
    public static final int TRAILER_RIPEMD160 = 12748;
    public static final int TRAILER_SHA1 = 13260;
    public static final int TRAILER_SHA256 = 13516;
    public static final int TRAILER_SHA384 = 14028;
    public static final int TRAILER_SHA512 = 13772;
    public static final int TRAILER_WHIRLPOOL = 14284;
    private static Hashtable trailerMap;
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

    static {
        Hashtable hashtable = new Hashtable();
        trailerMap = hashtable;
        hashtable.put("RIPEMD128", new Integer(13004));
        trailerMap.put("RIPEMD160", new Integer(12748));
        trailerMap.put("SHA-1", new Integer(13260));
        trailerMap.put("SHA-256", new Integer((int) TRAILER_SHA256));
        trailerMap.put("SHA-384", new Integer((int) TRAILER_SHA384));
        trailerMap.put("SHA-512", new Integer((int) TRAILER_SHA512));
        trailerMap.put("Whirlpool", new Integer((int) TRAILER_WHIRLPOOL));
    }

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, false);
    }

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, boolean z) {
        int intValue;
        this.cipher = asymmetricBlockCipher;
        this.digest = digest;
        if (z) {
            intValue = 188;
        } else {
            Integer num = (Integer) trailerMap.get(digest.getAlgorithmName());
            if (num == null) {
                throw new IllegalArgumentException("no valid trailer for digest");
            }
            intValue = num.intValue();
        }
        this.trailer = intValue;
    }

    private void clearBlock(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z;
        int i = this.messageLength;
        byte[] bArr3 = this.mBuf;
        boolean z2 = true;
        if (i <= bArr3.length) {
            boolean z3 = true;
            if (i != bArr2.length) {
                z3 = false;
            }
            int i2 = 0;
            while (true) {
                z = z3;
                if (i2 == bArr2.length) {
                    break;
                }
                if (bArr[i2] != bArr2[i2]) {
                    z3 = false;
                }
                i2++;
            }
        } else {
            if (bArr3.length > bArr2.length) {
                z2 = false;
            }
            int i3 = 0;
            while (true) {
                z = z2;
                if (i3 == this.mBuf.length) {
                    break;
                }
                if (bArr[i3] != bArr2[i3]) {
                    z2 = false;
                }
                i3++;
            }
        }
        return z;
    }

    private boolean returnFalse(byte[] bArr) {
        clearBlock(this.mBuf);
        clearBlock(bArr);
        return false;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        int i;
        int i2;
        int i3;
        byte b;
        int digestSize = this.digest.getDigestSize();
        if (this.trailer == 188) {
            byte[] bArr = this.block;
            i2 = (bArr.length - digestSize) - 1;
            this.digest.doFinal(bArr, i2);
            byte[] bArr2 = this.block;
            bArr2[bArr2.length - 1] = (byte) (-68);
            i = 8;
        } else {
            i = 16;
            byte[] bArr3 = this.block;
            i2 = (bArr3.length - digestSize) - 2;
            this.digest.doFinal(bArr3, i2);
            byte[] bArr4 = this.block;
            int length = bArr4.length;
            int i4 = this.trailer;
            bArr4[length - 2] = (byte) (i4 >>> 8);
            bArr4[bArr4.length - 1] = (byte) i4;
        }
        int i5 = this.messageLength;
        int i6 = ((((digestSize + i5) * 8) + i) + 4) - this.keyBits;
        if (i6 > 0) {
            int i7 = i5 - ((i6 + 7) / 8);
            int i8 = i2 - i7;
            System.arraycopy(this.mBuf, 0, this.block, i8, i7);
            b = 96;
            i3 = i8;
        } else {
            i3 = i2 - i5;
            System.arraycopy(this.mBuf, 0, this.block, i3, i5);
            b = 64;
        }
        int i9 = i3 - 1;
        if (i9 > 0) {
            for (int i10 = i9; i10 != 0; i10--) {
                this.block[i10] = (byte) (-69);
            }
            byte[] bArr5 = this.block;
            bArr5[i9] = (byte) (bArr5[i9] ^ 1);
            bArr5[0] = (byte) 11;
            bArr5[0] = (byte) (b | bArr5[0]);
        } else {
            byte[] bArr6 = this.block;
            bArr6[0] = (byte) 10;
            bArr6[0] = (byte) (b | bArr6[0]);
        }
        AsymmetricBlockCipher asymmetricBlockCipher = this.cipher;
        byte[] bArr7 = this.block;
        byte[] processBlock = asymmetricBlockCipher.processBlock(bArr7, 0, bArr7.length);
        clearBlock(this.mBuf);
        clearBlock(this.block);
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

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) cipherParameters;
        this.cipher.init(z, rSAKeyParameters);
        int bitLength = rSAKeyParameters.getModulus().bitLength();
        this.keyBits = bitLength;
        byte[] bArr = new byte[(bitLength + 7) / 8];
        this.block = bArr;
        int i = this.trailer;
        int length = bArr.length;
        if (i == 188) {
            this.mBuf = new byte[(length - this.digest.getDigestSize()) - 2];
        } else {
            this.mBuf = new byte[(length - this.digest.getDigestSize()) - 3];
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        clearBlock(this.mBuf);
        byte[] bArr = this.recoveredMessage;
        if (bArr != null) {
            clearBlock(bArr);
        }
        this.recoveredMessage = null;
        this.fullMessage = false;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.digest.update(b);
        if (this.preSig == null) {
            int i = this.messageLength;
            byte[] bArr = this.mBuf;
            if (i < bArr.length) {
                bArr[i] = b;
            }
        }
        this.messageLength++;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
        if (this.preSig == null && this.messageLength < this.mBuf.length) {
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = this.messageLength;
                byte[] bArr2 = this.mBuf;
                if (i3 + i4 >= bArr2.length) {
                    break;
                }
                bArr2[i4 + i3] = bArr[i + i3];
            }
        }
        this.messageLength += i2;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) {
        byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
        if (((processBlock[0] & 192) ^ 64) == 0) {
            if (((processBlock[processBlock.length - 1] & 15) ^ 12) != 0) {
                throw new InvalidCipherTextException("malformed signature");
            }
            int i = 2;
            if (((processBlock[processBlock.length - 1] & 255) ^ 188) == 0) {
                i = 1;
            } else {
                int i2 = ((processBlock[processBlock.length - 2] & 255) << 8) | (processBlock[processBlock.length - 1] & 255);
                Integer num = (Integer) trailerMap.get(this.digest.getAlgorithmName());
                if (num == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                }
                if (i2 != num.intValue()) {
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
                byte[] bArr2 = new byte[length];
                this.recoveredMessage = bArr2;
                System.arraycopy(processBlock, i4, bArr2, 0, bArr2.length);
            } else {
                this.fullMessage = false;
                byte[] bArr3 = new byte[length];
                this.recoveredMessage = bArr3;
                System.arraycopy(processBlock, i4, bArr3, 0, bArr3.length);
            }
            this.preSig = bArr;
            this.preBlock = processBlock;
            Digest digest = this.digest;
            byte[] bArr4 = this.recoveredMessage;
            digest.update(bArr4, 0, bArr4.length);
            this.messageLength = this.recoveredMessage.length;
            return;
        }
        throw new InvalidCipherTextException("malformed signature");
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] processBlock;
        boolean z;
        byte[] bArr2 = this.preSig;
        if (bArr2 == null) {
            try {
                processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
                z = false;
            } catch (Exception e) {
                return false;
            }
        } else if (!Arrays.areEqual(bArr2, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        } else {
            processBlock = this.preBlock;
            this.preSig = null;
            this.preBlock = null;
            z = true;
        }
        if (((processBlock[0] & 192) ^ 64) == 0 && ((processBlock[processBlock.length - 1] & 15) ^ 12) == 0) {
            int i = 2;
            if (((processBlock[processBlock.length - 1] & 255) ^ 188) == 0) {
                i = 1;
            } else {
                int i2 = ((processBlock[processBlock.length - 2] & 255) << 8) | (processBlock[processBlock.length - 1] & 255);
                Integer num = (Integer) trailerMap.get(this.digest.getAlgorithmName());
                if (num == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                }
                if (i2 != num.intValue()) {
                    throw new IllegalStateException("signer initialised with wrong digest for trailer " + i2);
                }
            }
            int i3 = 0;
            while (i3 != processBlock.length && ((processBlock[i3] & 15) ^ 10) != 0) {
                i3++;
            }
            int i4 = i3 + 1;
            int digestSize = this.digest.getDigestSize();
            byte[] bArr3 = new byte[digestSize];
            int length = (processBlock.length - i) - digestSize;
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
                this.digest.doFinal(bArr3, 0);
                boolean z2 = true;
                for (int i6 = 0; i6 != digestSize; i6++) {
                    int i7 = length + i6;
                    processBlock[i7] = (byte) (processBlock[i7] ^ bArr3[i6]);
                    if (processBlock[i7] != 0) {
                        z2 = false;
                    }
                }
                if (!z2) {
                    return returnFalse(processBlock);
                }
                byte[] bArr4 = new byte[i5];
                this.recoveredMessage = bArr4;
                System.arraycopy(processBlock, i4, bArr4, 0, bArr4.length);
            } else {
                this.fullMessage = false;
                this.digest.doFinal(bArr3, 0);
                boolean z3 = true;
                for (int i8 = 0; i8 != digestSize; i8++) {
                    int i9 = length + i8;
                    processBlock[i9] = (byte) (processBlock[i9] ^ bArr3[i8]);
                    if (processBlock[i9] != 0) {
                        z3 = false;
                    }
                }
                if (!z3) {
                    return returnFalse(processBlock);
                }
                byte[] bArr5 = new byte[i5];
                this.recoveredMessage = bArr5;
                System.arraycopy(processBlock, i4, bArr5, 0, bArr5.length);
            }
            if (this.messageLength != 0 && !z && !isSameAs(this.mBuf, this.recoveredMessage)) {
                return returnFalse(processBlock);
            }
            clearBlock(this.mBuf);
            clearBlock(processBlock);
            return true;
        }
        return returnFalse(processBlock);
    }
}
