package org.bouncycastle.crypto.engines;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/DESedeWrapEngine.class */
public class DESedeWrapEngine implements Wrapper {
    private static final byte[] IV2 = {74, -35, -94, 44, 121, -24, 33, 5};
    private CBCBlockCipher engine;
    private boolean forWrapping;

    /* renamed from: iv */
    private byte[] f7476iv;
    private KeyParameter param;
    private ParametersWithIV paramPlusIV;
    public Digest sha1 = new SHA1Digest();
    public byte[] digest = new byte[20];

    private byte[] calculateCMSKeyChecksum(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.sha1.update(bArr, 0, bArr.length);
        this.sha1.doFinal(this.digest, 0);
        System.arraycopy(this.digest, 0, bArr2, 0, 8);
        return bArr2;
    }

    private boolean checkCMSKeyChecksum(byte[] bArr, byte[] bArr2) {
        return Arrays.constantTimeAreEqual(calculateCMSKeyChecksum(bArr), bArr2);
    }

    private static byte[] reverse(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < bArr.length) {
                int i3 = i2 + 1;
                bArr2[i2] = bArr[bArr.length - i3];
                i = i3;
            } else {
                return bArr2;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "DESede";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        this.forWrapping = z;
        this.engine = new CBCBlockCipher(new DESedeEngine());
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            cipherParameters = parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
        } else {
            secureRandom = new SecureRandom();
        }
        if (cipherParameters instanceof KeyParameter) {
            this.param = (KeyParameter) cipherParameters;
            if (!this.forWrapping) {
                return;
            }
            byte[] bArr = new byte[8];
            this.f7476iv = bArr;
            secureRandom.nextBytes(bArr);
            this.paramPlusIV = new ParametersWithIV(this.param, this.f7476iv);
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.paramPlusIV = parametersWithIV;
            this.f7476iv = parametersWithIV.getIV();
            this.param = (KeyParameter) this.paramPlusIV.getParameters();
            if (!this.forWrapping) {
                throw new IllegalArgumentException("You should not supply an IV for unwrapping");
            }
            byte[] bArr2 = this.f7476iv;
            if (bArr2 != null && bArr2.length == 8) {
                return;
            }
            throw new IllegalArgumentException("IV is not 8 octets");
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) {
        if (!this.forWrapping) {
            if (bArr == null) {
                throw new InvalidCipherTextException("Null pointer as ciphertext");
            }
            int blockSize = this.engine.getBlockSize();
            if (i2 % blockSize != 0) {
                throw new InvalidCipherTextException("Ciphertext not multiple of " + blockSize);
            }
            this.engine.init(false, new ParametersWithIV(this.param, IV2));
            byte[] bArr2 = new byte[i2];
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 == i2) {
                    break;
                }
                this.engine.processBlock(bArr, i + i4, bArr2, i4);
                i3 = i4 + blockSize;
            }
            byte[] reverse = reverse(bArr2);
            byte[] bArr3 = new byte[8];
            this.f7476iv = bArr3;
            int length = reverse.length - 8;
            byte[] bArr4 = new byte[length];
            System.arraycopy(reverse, 0, bArr3, 0, 8);
            System.arraycopy(reverse, 8, bArr4, 0, reverse.length - 8);
            ParametersWithIV parametersWithIV = new ParametersWithIV(this.param, this.f7476iv);
            this.paramPlusIV = parametersWithIV;
            this.engine.init(false, parametersWithIV);
            byte[] bArr5 = new byte[length];
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 == length) {
                    break;
                }
                this.engine.processBlock(bArr4, i6, bArr5, i6);
                i5 = i6 + blockSize;
            }
            int i7 = length - 8;
            byte[] bArr6 = new byte[i7];
            byte[] bArr7 = new byte[8];
            System.arraycopy(bArr5, 0, bArr6, 0, i7);
            System.arraycopy(bArr5, i7, bArr7, 0, 8);
            if (!checkCMSKeyChecksum(bArr6, bArr7)) {
                throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
            }
            return bArr6;
        }
        throw new IllegalStateException("Not set for unwrapping");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) {
        if (this.forWrapping) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            byte[] calculateCMSKeyChecksum = calculateCMSKeyChecksum(bArr2);
            int length = calculateCMSKeyChecksum.length + i2;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr2, 0, bArr3, 0, i2);
            System.arraycopy(calculateCMSKeyChecksum, 0, bArr3, i2, calculateCMSKeyChecksum.length);
            int blockSize = this.engine.getBlockSize();
            if (length % blockSize != 0) {
                throw new IllegalStateException("Not multiple of block length");
            }
            this.engine.init(true, this.paramPlusIV);
            byte[] bArr4 = new byte[length];
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 == length) {
                    break;
                }
                this.engine.processBlock(bArr3, i4, bArr4, i4);
                i3 = i4 + blockSize;
            }
            byte[] bArr5 = this.f7476iv;
            byte[] bArr6 = new byte[bArr5.length + length];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            System.arraycopy(bArr4, 0, bArr6, this.f7476iv.length, length);
            byte[] reverse = reverse(bArr6);
            this.engine.init(true, new ParametersWithIV(this.param, IV2));
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 == reverse.length) {
                    return reverse;
                }
                this.engine.processBlock(reverse, i6, reverse, i6);
                i5 = i6 + blockSize;
            }
        } else {
            throw new IllegalStateException("Not initialized for wrapping");
        }
    }
}
