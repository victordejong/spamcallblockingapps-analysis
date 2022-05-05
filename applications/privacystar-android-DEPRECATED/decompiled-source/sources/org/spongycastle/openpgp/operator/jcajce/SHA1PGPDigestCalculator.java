package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator.class */
class SHA1PGPDigestCalculator implements PGPDigestCalculator {
    private MessageDigest digest;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream.class */
    private class DigestOutputStream extends OutputStream {
        private MessageDigest dig;

        DigestOutputStream(MessageDigest messageDigest) {
            this.dig = messageDigest;
        }

        byte[] getDigest() {
            return this.dig.digest();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.dig.update((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.dig.update(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.dig.update(bArr, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SHA1PGPDigestCalculator() {
        try {
            this.digest = MessageDigest.getInstance("SHA1");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("cannot find SHA-1: " + e.getMessage());
        }
    }

    @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
    public int getAlgorithm() {
        return 2;
    }

    @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
    public byte[] getDigest() {
        return this.digest.digest();
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
