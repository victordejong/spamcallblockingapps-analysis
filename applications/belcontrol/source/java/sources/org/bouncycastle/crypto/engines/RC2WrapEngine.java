package org.bouncycastle.crypto.engines;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/RC2WrapEngine.class */
public class RC2WrapEngine implements Wrapper {
    private static final byte[] IV2 = {74, -35, -94, 44, 121, -24, 33, 5};
    private CBCBlockCipher engine;
    private boolean forWrapping;

    /* renamed from: iv */
    private byte[] f7487iv;
    private CipherParameters param;
    private ParametersWithIV paramPlusIV;

    /* renamed from: sr */
    private SecureRandom f7488sr;
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

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "RC2";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forWrapping = z;
        this.engine = new CBCBlockCipher(new RC2Engine());
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.f7488sr = parametersWithRandom.getRandom();
            cipherParameters = parametersWithRandom.getParameters();
        } else {
            this.f7488sr = new SecureRandom();
        }
        if (!(cipherParameters instanceof ParametersWithIV)) {
            this.param = cipherParameters;
            if (!this.forWrapping) {
                return;
            }
            byte[] bArr = new byte[8];
            this.f7487iv = bArr;
            this.f7488sr.nextBytes(bArr);
            this.paramPlusIV = new ParametersWithIV(this.param, this.f7487iv);
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        this.paramPlusIV = parametersWithIV;
        this.f7487iv = parametersWithIV.getIV();
        this.param = this.paramPlusIV.getParameters();
        if (!this.forWrapping) {
            throw new IllegalArgumentException("You should not supply an IV for unwrapping");
        }
        byte[] bArr2 = this.f7487iv;
        if (bArr2 != null && bArr2.length == 8) {
            return;
        }
        throw new IllegalArgumentException("IV is not 8 octets");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) {
        int i3;
        if (!this.forWrapping) {
            if (bArr == null) {
                throw new InvalidCipherTextException("Null pointer as ciphertext");
            }
            if (i2 % this.engine.getBlockSize() != 0) {
                throw new InvalidCipherTextException("Ciphertext not multiple of " + this.engine.getBlockSize());
            }
            this.engine.init(false, new ParametersWithIV(this.param, IV2));
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            for (int i4 = 0; i4 < i2 / this.engine.getBlockSize(); i4++) {
                int blockSize = this.engine.getBlockSize() * i4;
                this.engine.processBlock(bArr2, blockSize, bArr2, blockSize);
            }
            byte[] bArr3 = new byte[i2];
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 >= i2) {
                    break;
                }
                bArr3[i6] = bArr2[i2 - i3];
                i5 = i6 + 1;
            }
            byte[] bArr4 = new byte[8];
            this.f7487iv = bArr4;
            int i7 = i2 - 8;
            byte[] bArr5 = new byte[i7];
            System.arraycopy(bArr3, 0, bArr4, 0, 8);
            System.arraycopy(bArr3, 8, bArr5, 0, i7);
            ParametersWithIV parametersWithIV = new ParametersWithIV(this.param, this.f7487iv);
            this.paramPlusIV = parametersWithIV;
            this.engine.init(false, parametersWithIV);
            byte[] bArr6 = new byte[i7];
            System.arraycopy(bArr5, 0, bArr6, 0, i7);
            for (int i8 = 0; i8 < i7 / this.engine.getBlockSize(); i8++) {
                int blockSize2 = this.engine.getBlockSize() * i8;
                this.engine.processBlock(bArr6, blockSize2, bArr6, blockSize2);
            }
            int i9 = i7 - 8;
            byte[] bArr7 = new byte[i9];
            byte[] bArr8 = new byte[8];
            System.arraycopy(bArr6, 0, bArr7, 0, i9);
            System.arraycopy(bArr6, i9, bArr8, 0, 8);
            if (!checkCMSKeyChecksum(bArr7, bArr8)) {
                throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
            }
            if (i9 - (((bArr7[0] == 1 ? 1 : 0) & 255) + 1) <= 7) {
                int i10 = bArr7[0];
                byte[] bArr9 = new byte[i10];
                System.arraycopy(bArr7, 1, bArr9, 0, i10);
                return bArr9;
            }
            throw new InvalidCipherTextException("too many pad bytes (" + (i9 - (((bArr7[0] == 1 ? 1 : 0) & 255) + 1)) + ")");
        }
        throw new IllegalStateException("Not set for unwrapping");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) {
        int i3;
        if (this.forWrapping) {
            int i4 = i2 + 1;
            int i5 = i4 % 8;
            int i6 = i5 != 0 ? (8 - i5) + i4 : i4;
            byte[] bArr2 = new byte[i6];
            bArr2[0] = (byte) i2;
            System.arraycopy(bArr, i, bArr2, 1, i2);
            int i7 = (i6 - i2) - 1;
            byte[] bArr3 = new byte[i7];
            if (i7 > 0) {
                this.f7488sr.nextBytes(bArr3);
                System.arraycopy(bArr3, 0, bArr2, i4, i7);
            }
            byte[] calculateCMSKeyChecksum = calculateCMSKeyChecksum(bArr2);
            int length = calculateCMSKeyChecksum.length + i6;
            byte[] bArr4 = new byte[length];
            System.arraycopy(bArr2, 0, bArr4, 0, i6);
            System.arraycopy(calculateCMSKeyChecksum, 0, bArr4, i6, calculateCMSKeyChecksum.length);
            byte[] bArr5 = new byte[length];
            System.arraycopy(bArr4, 0, bArr5, 0, length);
            int blockSize = length / this.engine.getBlockSize();
            if (length % this.engine.getBlockSize() != 0) {
                throw new IllegalStateException("Not multiple of block length");
            }
            this.engine.init(true, this.paramPlusIV);
            for (int i8 = 0; i8 < blockSize; i8++) {
                int blockSize2 = this.engine.getBlockSize() * i8;
                this.engine.processBlock(bArr5, blockSize2, bArr5, blockSize2);
            }
            byte[] bArr6 = this.f7487iv;
            int length2 = bArr6.length + length;
            byte[] bArr7 = new byte[length2];
            System.arraycopy(bArr6, 0, bArr7, 0, bArr6.length);
            System.arraycopy(bArr5, 0, bArr7, this.f7487iv.length, length);
            byte[] bArr8 = new byte[length2];
            int i9 = 0;
            while (true) {
                int i10 = i9;
                if (i10 >= length2) {
                    break;
                }
                bArr8[i10] = bArr7[length2 - i3];
                i9 = i10 + 1;
            }
            this.engine.init(true, new ParametersWithIV(this.param, IV2));
            for (int i11 = 0; i11 < blockSize + 1; i11++) {
                int blockSize3 = this.engine.getBlockSize() * i11;
                this.engine.processBlock(bArr8, blockSize3, bArr8, blockSize3);
            }
            return bArr8;
        }
        throw new IllegalStateException("Not initialized for wrapping");
    }
}
