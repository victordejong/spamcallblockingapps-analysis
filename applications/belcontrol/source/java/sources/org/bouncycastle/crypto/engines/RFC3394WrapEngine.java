package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/RFC3394WrapEngine.class */
public class RFC3394WrapEngine implements Wrapper {
    private BlockCipher engine;
    private boolean forWrapping;

    /* renamed from: iv */
    private byte[] f7494iv = {-90, -90, -90, -90, -90, -90, -90, -90};
    private KeyParameter param;

    public RFC3394WrapEngine(BlockCipher blockCipher) {
        this.engine = blockCipher;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forWrapping = z;
        CipherParameters cipherParameters2 = cipherParameters;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters2 = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.param = (KeyParameter) cipherParameters2;
        } else if (!(cipherParameters2 instanceof ParametersWithIV)) {
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters2;
            this.f7494iv = parametersWithIV.getIV();
            this.param = (KeyParameter) parametersWithIV.getParameters();
            if (this.f7494iv.length != 8) {
                throw new IllegalArgumentException("IV not equal to 8");
            }
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) {
        int length;
        if (!this.forWrapping) {
            int i3 = i2 / 8;
            if (i3 * 8 != i2) {
                throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
            }
            byte[] bArr2 = this.f7494iv;
            byte[] bArr3 = new byte[i2 - bArr2.length];
            byte[] bArr4 = new byte[bArr2.length];
            byte[] bArr5 = new byte[bArr2.length + 8];
            System.arraycopy(bArr, 0, bArr4, 0, bArr2.length);
            byte[] bArr6 = this.f7494iv;
            System.arraycopy(bArr, bArr6.length, bArr3, 0, i2 - bArr6.length);
            this.engine.init(false, this.param);
            int i4 = i3 - 1;
            for (int i5 = 5; i5 >= 0; i5--) {
                for (int i6 = i4; i6 >= 1; i6--) {
                    System.arraycopy(bArr4, 0, bArr5, 0, this.f7494iv.length);
                    int i7 = (i6 - 1) * 8;
                    System.arraycopy(bArr3, i7, bArr5, this.f7494iv.length, 8);
                    int i8 = (i4 * i5) + i6;
                    int i9 = 1;
                    while (i8 != 0) {
                        bArr5[this.f7494iv.length - i9] = (byte) (((byte) i8) ^ bArr5[length]);
                        i8 >>>= 8;
                        i9++;
                    }
                    this.engine.processBlock(bArr5, 0, bArr5, 0);
                    System.arraycopy(bArr5, 0, bArr4, 0, 8);
                    System.arraycopy(bArr5, 8, bArr3, i7, 8);
                }
            }
            if (!Arrays.constantTimeAreEqual(bArr4, this.f7494iv)) {
                throw new InvalidCipherTextException("checksum failed");
            }
            return bArr3;
        }
        throw new IllegalStateException("not set for unwrapping");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) {
        int length;
        if (this.forWrapping) {
            int i3 = i2 / 8;
            if (i3 * 8 != i2) {
                throw new DataLengthException("wrap data must be a multiple of 8 bytes");
            }
            byte[] bArr2 = this.f7494iv;
            byte[] bArr3 = new byte[bArr2.length + i2];
            byte[] bArr4 = new byte[bArr2.length + 8];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            System.arraycopy(bArr, 0, bArr3, this.f7494iv.length, i2);
            this.engine.init(true, this.param);
            for (int i4 = 0; i4 != 6; i4++) {
                for (int i5 = 1; i5 <= i3; i5++) {
                    System.arraycopy(bArr3, 0, bArr4, 0, this.f7494iv.length);
                    int i6 = i5 * 8;
                    System.arraycopy(bArr3, i6, bArr4, this.f7494iv.length, 8);
                    this.engine.processBlock(bArr4, 0, bArr4, 0);
                    int i7 = (i3 * i4) + i5;
                    int i8 = 1;
                    while (i7 != 0) {
                        bArr4[this.f7494iv.length - i8] = (byte) (((byte) i7) ^ bArr4[length]);
                        i7 >>>= 8;
                        i8++;
                    }
                    System.arraycopy(bArr4, 0, bArr3, 0, 8);
                    System.arraycopy(bArr4, 8, bArr3, i6, 8);
                }
            }
            return bArr3;
        }
        throw new IllegalStateException("not set for wrapping");
    }
}
