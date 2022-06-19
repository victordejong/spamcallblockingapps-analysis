package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.MGFParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/MGF1BytesGenerator.class */
public class MGF1BytesGenerator implements DerivationFunction {
    private Digest digest;
    private int hLen;
    private byte[] seed;

    public MGF1BytesGenerator(Digest digest) {
        this.digest = digest;
        this.hLen = digest.getDigestSize();
    }

    private void ItoOSP(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (bArr.length - i2 >= i) {
            byte[] bArr2 = new byte[this.hLen];
            byte[] bArr3 = new byte[4];
            this.digest.reset();
            if (i2 > this.hLen) {
                int i5 = 0;
                do {
                    ItoOSP(i5, bArr3);
                    Digest digest = this.digest;
                    byte[] bArr4 = this.seed;
                    digest.update(bArr4, 0, bArr4.length);
                    this.digest.update(bArr3, 0, 4);
                    this.digest.doFinal(bArr2, 0);
                    int i6 = this.hLen;
                    System.arraycopy(bArr2, 0, bArr, (i5 * i6) + i, i6);
                    i4 = i5 + 1;
                    i5 = i4;
                } while (i4 < i2 / this.hLen);
                i3 = i4;
            } else {
                i3 = 0;
            }
            if (this.hLen * i3 < i2) {
                ItoOSP(i3, bArr3);
                Digest digest2 = this.digest;
                byte[] bArr5 = this.seed;
                digest2.update(bArr5, 0, bArr5.length);
                this.digest.update(bArr3, 0, 4);
                this.digest.doFinal(bArr2, 0);
                int i7 = this.hLen;
                System.arraycopy(bArr2, 0, bArr, i + (i3 * i7), i2 - (i3 * i7));
            }
            return i2;
        }
        throw new DataLengthException("output buffer too small");
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof MGFParameters) {
            this.seed = ((MGFParameters) derivationParameters).getSeed();
            return;
        }
        throw new IllegalArgumentException("MGF parameters required for MGF1Generator");
    }
}
