package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ISO18033KDFParameters;
import org.bouncycastle.crypto.params.KDFParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/BaseKDFBytesGenerator.class */
public class BaseKDFBytesGenerator implements DerivationFunction {
    private int counterStart;
    private Digest digest;

    /* renamed from: iv */
    private byte[] f7518iv;
    private byte[] shared;

    public BaseKDFBytesGenerator(int i, Digest digest) {
        this.counterStart = i;
        this.digest = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr.length - i2 >= i) {
            long j = i2;
            int digestSize = this.digest.getDigestSize();
            if (j > 8589934591L) {
                throw new IllegalArgumentException("Output length too large");
            }
            long j2 = digestSize;
            int i4 = (int) (((j + j2) - 1) / j2);
            byte[] bArr2 = new byte[this.digest.getDigestSize()];
            int i5 = i2;
            int i6 = i;
            int i7 = 0;
            int i8 = this.counterStart;
            while (i7 < i4) {
                Digest digest = this.digest;
                byte[] bArr3 = this.shared;
                digest.update(bArr3, 0, bArr3.length);
                this.digest.update((byte) (i8 >> 24));
                this.digest.update((byte) (i8 >> 16));
                this.digest.update((byte) (i8 >> 8));
                this.digest.update((byte) i8);
                byte[] bArr4 = this.f7518iv;
                if (bArr4 != null) {
                    this.digest.update(bArr4, 0, bArr4.length);
                }
                this.digest.doFinal(bArr2, 0);
                if (i5 > digestSize) {
                    System.arraycopy(bArr2, 0, bArr, i6, digestSize);
                    i6 += digestSize;
                    i3 = i5 - digestSize;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i6, i5);
                    i3 = i5;
                }
                i8++;
                i7++;
                i6 = i6;
                i5 = i3;
            }
            this.digest.reset();
            return i5;
        }
        throw new DataLengthException("output buffer too small");
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof KDFParameters) {
            KDFParameters kDFParameters = (KDFParameters) derivationParameters;
            this.shared = kDFParameters.getSharedSecret();
            this.f7518iv = kDFParameters.getIV();
        } else if (!(derivationParameters instanceof ISO18033KDFParameters)) {
            throw new IllegalArgumentException("KDF parameters required for KDF2Generator");
        } else {
            this.shared = ((ISO18033KDFParameters) derivationParameters).getSeed();
            this.f7518iv = null;
        }
    }
}
