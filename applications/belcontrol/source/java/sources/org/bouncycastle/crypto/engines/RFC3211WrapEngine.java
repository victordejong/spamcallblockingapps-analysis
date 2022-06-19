package org.bouncycastle.crypto.engines;

import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/RFC3211WrapEngine.class */
public class RFC3211WrapEngine implements Wrapper {
    private CBCBlockCipher engine;
    private boolean forWrapping;
    private ParametersWithIV param;
    private SecureRandom rand;

    public RFC3211WrapEngine(BlockCipher blockCipher) {
        this.engine = new CBCBlockCipher(blockCipher);
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.engine.getUnderlyingCipher().getAlgorithmName() + "/RFC3211Wrap";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forWrapping = z;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.rand = parametersWithRandom.getRandom();
            this.param = (ParametersWithIV) parametersWithRandom.getParameters();
            return;
        }
        if (z) {
            this.rand = new SecureRandom();
        }
        this.param = (ParametersWithIV) cipherParameters;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) {
        int i3;
        if (!this.forWrapping) {
            int blockSize = this.engine.getBlockSize();
            if (i2 < blockSize * 2) {
                throw new InvalidCipherTextException("input too short");
            }
            byte[] bArr2 = new byte[i2];
            byte[] bArr3 = new byte[blockSize];
            int i4 = 0;
            System.arraycopy(bArr, i, bArr2, 0, i2);
            System.arraycopy(bArr, i, bArr3, 0, blockSize);
            this.engine.init(false, new ParametersWithIV(this.param.getParameters(), bArr3));
            int i5 = blockSize;
            while (true) {
                int i6 = i5;
                if (i6 >= i2) {
                    break;
                }
                this.engine.processBlock(bArr2, i6, bArr2, i6);
                i5 = i6 + blockSize;
            }
            System.arraycopy(bArr2, i2 - blockSize, bArr3, 0, blockSize);
            this.engine.init(false, new ParametersWithIV(this.param.getParameters(), bArr3));
            this.engine.processBlock(bArr2, 0, bArr2, 0);
            this.engine.init(false, this.param);
            int i7 = 0;
            while (true) {
                int i8 = i7;
                if (i8 >= i2) {
                    break;
                }
                this.engine.processBlock(bArr2, i8, bArr2, i8);
                i7 = i8 + blockSize;
            }
            if ((bArr2[0] & 255) > i2 - 4) {
                throw new InvalidCipherTextException("wrapped key corrupted");
            }
            byte[] bArr4 = new byte[bArr2[0] & 255];
            System.arraycopy(bArr2, 4, bArr4, 0, bArr2[0]);
            int i9 = 0;
            while (true) {
                i3 = i9;
                int i10 = i4;
                if (i10 == 3) {
                    break;
                }
                i4 = i10 + 1;
                i9 = i3 | (((byte) (bArr2[i4] ^ (-1))) ^ bArr4[i10]);
            }
            if (i3 != 0) {
                throw new InvalidCipherTextException("wrapped key fails checksum");
            }
            return bArr4;
        }
        throw new IllegalStateException("not set for unwrapping");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) {
        int i3;
        if (this.forWrapping) {
            this.engine.init(true, this.param);
            int blockSize = this.engine.getBlockSize();
            int i4 = i2 + 4;
            int i5 = blockSize * 2;
            if (i4 >= i5) {
                i5 = i4 % blockSize == 0 ? i4 : ((i4 / blockSize) + 1) * blockSize;
            }
            byte[] bArr2 = new byte[i5];
            bArr2[0] = (byte) i2;
            bArr2[1] = (byte) (bArr[i] ^ (-1));
            bArr2[2] = (byte) (bArr[i + 1] ^ (-1));
            bArr2[3] = (byte) (bArr[i + 2] ^ (-1));
            System.arraycopy(bArr, i, bArr2, 4, i2);
            while (i4 < bArr2.length) {
                bArr2[i4] = (byte) this.rand.nextInt();
                i4++;
            }
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (i7 < bArr2.length) {
                    this.engine.processBlock(bArr2, i7, bArr2, i7);
                    i6 = i7 + blockSize;
                }
            }
            for (i3 = 0; i3 < bArr2.length; i3 += blockSize) {
                this.engine.processBlock(bArr2, i3, bArr2, i3);
            }
            return bArr2;
        }
        throw new IllegalStateException("not set for wrapping");
    }
}
