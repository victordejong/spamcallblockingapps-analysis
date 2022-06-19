package org.bouncycastle.crypto.p010io;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import org.bouncycastle.crypto.Digest;
/* renamed from: org.bouncycastle.crypto.io.DigestOutputStream */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/io/DigestOutputStream.class */
public class DigestOutputStream extends FilterOutputStream {
    public Digest digest;

    public DigestOutputStream(OutputStream outputStream, Digest digest) {
        super(outputStream);
        this.digest = digest;
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        this.digest.update((byte) i);
        ((FilterOutputStream) this).out.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }
}
