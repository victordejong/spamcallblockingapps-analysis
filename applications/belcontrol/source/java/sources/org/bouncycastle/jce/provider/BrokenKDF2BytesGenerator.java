package org.bouncycastle.jce.provider;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KDFParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/BrokenKDF2BytesGenerator.class */
public class BrokenKDF2BytesGenerator implements DerivationFunction {
    private Digest digest;

    /* renamed from: iv */
    private byte[] f7607iv;
    private byte[] shared;

    public BrokenKDF2BytesGenerator(Digest digest) {
        this.digest = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) {
        if (bArr.length - i2 >= i) {
            long j = i2 * 8;
            if (j > this.digest.getDigestSize() * 8 * 29) {
                new IllegalArgumentException("Output length to large");
            }
            int digestSize = (int) (j / this.digest.getDigestSize());
            int digestSize2 = this.digest.getDigestSize();
            byte[] bArr2 = new byte[digestSize2];
            int i3 = i;
            for (int i4 = 1; i4 <= digestSize; i4++) {
                Digest digest = this.digest;
                byte[] bArr3 = this.shared;
                digest.update(bArr3, 0, bArr3.length);
                this.digest.update((byte) (i4 & 255));
                this.digest.update((byte) ((i4 >> 8) & 255));
                this.digest.update((byte) ((i4 >> 16) & 255));
                this.digest.update((byte) ((i4 >> 24) & 255));
                Digest digest2 = this.digest;
                byte[] bArr4 = this.f7607iv;
                digest2.update(bArr4, 0, bArr4.length);
                this.digest.doFinal(bArr2, 0);
                int i5 = i2 - i3;
                if (i5 > digestSize2) {
                    System.arraycopy(bArr2, 0, bArr, i3, digestSize2);
                    i3 += digestSize2;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i3, i5);
                }
            }
            this.digest.reset();
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
        if (derivationParameters instanceof KDFParameters) {
            KDFParameters kDFParameters = (KDFParameters) derivationParameters;
            this.shared = kDFParameters.getSharedSecret();
            this.f7607iv = kDFParameters.getIV();
            return;
        }
        throw new IllegalArgumentException("KDF parameters required for KDF2Generator");
    }
}
