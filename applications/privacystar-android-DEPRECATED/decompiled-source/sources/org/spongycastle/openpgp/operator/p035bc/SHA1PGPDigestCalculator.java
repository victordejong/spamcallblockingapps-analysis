package org.spongycastle.openpgp.operator.p035bc;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* renamed from: org.spongycastle.openpgp.operator.bc.SHA1PGPDigestCalculator */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator.class */
class SHA1PGPDigestCalculator implements PGPDigestCalculator {
    private Digest digest = new SHA1Digest();

    /* renamed from: org.spongycastle.openpgp.operator.bc.SHA1PGPDigestCalculator$DigestOutputStream */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream.class */
    private class DigestOutputStream extends OutputStream {
        private Digest dig;

        DigestOutputStream(Digest digest) {
            this.dig = digest;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.dig.update((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.dig.update(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.dig.update(bArr, i, i2);
        }
    }

    @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
    public int getAlgorithm() {
        return 2;
    }

    @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
    public byte[] getDigest() {
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        return bArr;
    }

    @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
    public OutputStream getOutputStream() {
        return new DigestOutputStream(this.digest);
    }

    @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
    public void reset() {
        this.digest.reset();
    }
}
