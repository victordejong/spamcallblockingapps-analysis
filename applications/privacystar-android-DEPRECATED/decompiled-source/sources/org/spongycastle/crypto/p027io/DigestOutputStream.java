package org.spongycastle.crypto.p027io;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Digest;
/* renamed from: org.spongycastle.crypto.io.DigestOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/io/DigestOutputStream.class */
public class DigestOutputStream extends OutputStream {
    protected Digest digest;

    public DigestOutputStream(Digest digest) {
        this.digest = digest;
    }

    public byte[] getDigest() {
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.digest.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.digest.update(bArr, i, i2);
    }
}
