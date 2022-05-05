package org.spongycastle.jce.provider;

import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KDFParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/BrokenKDF2BytesGenerator.class */
public class BrokenKDF2BytesGenerator implements DerivationFunction {
    private Digest digest;

    /* renamed from: iv */
    private byte[] f1502iv;
    private byte[] shared;

    public BrokenKDF2BytesGenerator(Digest digest) {
        this.digest = digest;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        if (bArr.length - i2 < i) {
            throw new OutputLengthException("output buffer too small");
        }
        long j = i2 * 8;
        if (j > this.digest.getDigestSize() * 8 * 2147483648L) {
            new IllegalArgumentException("Output length to large");
        }
        int digestSize = (int) (j / this.digest.getDigestSize());
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        int i3 = i;
        for (int i4 = 1; i4 <= digestSize; i4++) {
            this.digest.update(this.shared, 0, this.shared.length);
            this.digest.update((byte) (i4 & 255));
            this.digest.update((byte) ((i4 >> 8) & 255));
            this.digest.update((byte) ((i4 >> 16) & 255));
            this.digest.update((byte) ((i4 >> 24) & 255));
            this.digest.update(this.f1502iv, 0, this.f1502iv.length);
            this.digest.doFinal(bArr2, 0);
            int i5 = i2 - i3;
            if (i5 > bArr2.length) {
                System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
                i3 += bArr2.length;
            } else {
                System.arraycopy(bArr2, 0, bArr, i3, i5);
            }
        }
        this.digest.reset();
        return i2;
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFParameters)) {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
        KDFParameters kDFParameters = (KDFParameters) derivationParameters;
        this.shared = kDFParameters.getSharedSecret();
        this.f1502iv = kDFParameters.getIV();
    }
}
