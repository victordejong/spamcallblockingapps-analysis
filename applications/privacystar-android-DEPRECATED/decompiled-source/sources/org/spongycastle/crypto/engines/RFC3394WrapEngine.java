package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/RFC3394WrapEngine.class */
public class RFC3394WrapEngine implements Wrapper {
    private BlockCipher engine;
    private boolean forWrapping;

    /* renamed from: iv */
    private byte[] f1260iv;
    private KeyParameter param;
    private boolean wrapCipherMode;

    public RFC3394WrapEngine(BlockCipher blockCipher) {
        this(blockCipher, false);
    }

    public RFC3394WrapEngine(BlockCipher blockCipher, boolean z) {
        this.f1260iv = new byte[]{-90, -90, -90, -90, -90, -90, -90, -90};
        this.engine = blockCipher;
        this.wrapCipherMode = !z;
    }

    @Override // org.spongycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName();
    }

    @Override // org.spongycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forWrapping = z;
        CipherParameters cipherParameters2 = cipherParameters;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters2 = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.param = (KeyParameter) cipherParameters2;
        } else if (cipherParameters2 instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters2;
            this.f1260iv = parametersWithIV.getIV();
            this.param = (KeyParameter) parametersWithIV.getParameters();
            if (this.f1260iv.length != 8) {
                throw new IllegalArgumentException("IV not equal to 8");
            }
        }
    }

    @Override // org.spongycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        int length;
        if (this.forWrapping) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
        }
        byte[] bArr2 = new byte[i2 - this.f1260iv.length];
        byte[] bArr3 = new byte[this.f1260iv.length];
        byte[] bArr4 = new byte[this.f1260iv.length + 8];
        System.arraycopy(bArr, i, bArr3, 0, this.f1260iv.length);
        System.arraycopy(bArr, i + this.f1260iv.length, bArr2, 0, i2 - this.f1260iv.length);
        this.engine.init(!this.wrapCipherMode, this.param);
        int i4 = i3 - 1;
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = i4; i6 >= 1; i6--) {
                System.arraycopy(bArr3, 0, bArr4, 0, this.f1260iv.length);
                int i7 = (i6 - 1) * 8;
                System.arraycopy(bArr2, i7, bArr4, this.f1260iv.length, 8);
                int i8 = (i4 * i5) + i6;
                int i9 = 1;
                while (i8 != 0) {
                    bArr4[this.f1260iv.length - i9] = (byte) (((byte) i8) ^ bArr4[length]);
                    i8 >>>= 8;
                    i9++;
                }
                this.engine.processBlock(bArr4, 0, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr3, 0, 8);
                System.arraycopy(bArr4, 8, bArr2, i7, 8);
            }
        }
        if (Arrays.constantTimeAreEqual(bArr3, this.f1260iv)) {
            return bArr2;
        }
        throw new InvalidCipherTextException("checksum failed");
    }

    @Override // org.spongycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) {
        if (!this.forWrapping) {
            throw new IllegalStateException("not set for wrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new DataLengthException("wrap data must be a multiple of 8 bytes");
        }
        byte[] bArr2 = new byte[this.f1260iv.length + i2];
        byte[] bArr3 = new byte[this.f1260iv.length + 8];
        System.arraycopy(this.f1260iv, 0, bArr2, 0, this.f1260iv.length);
        System.arraycopy(bArr, i, bArr2, this.f1260iv.length, i2);
        this.engine.init(this.wrapCipherMode, this.param);
        for (int i4 = 0; i4 != 6; i4++) {
            for (int i5 = 1; i5 <= i3; i5++) {
                System.arraycopy(bArr2, 0, bArr3, 0, this.f1260iv.length);
                int i6 = i5 * 8;
                System.arraycopy(bArr2, i6, bArr3, this.f1260iv.length, 8);
                this.engine.processBlock(bArr3, 0, bArr3, 0);
                int i7 = (i3 * i4) + i5;
                int i8 = 1;
                while (i7 != 0) {
                    int length = this.f1260iv.length - i8;
                    bArr3[length] = (byte) (((byte) i7) ^ bArr3[length]);
                    i7 >>>= 8;
                    i8++;
                }
                System.arraycopy(bArr3, 0, bArr2, 0, 8);
                System.arraycopy(bArr3, 8, bArr2, i6, 8);
            }
        }
        return bArr2;
    }
}
