package org.bouncycastle.crypto.p010io;

import java.io.FilterInputStream;
import java.io.InputStream;
import org.bouncycastle.crypto.Digest;
/* renamed from: org.bouncycastle.crypto.io.DigestInputStream */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/io/DigestInputStream.class */
public class DigestInputStream extends FilterInputStream {
    public Digest digest;

    public DigestInputStream(InputStream inputStream, Digest digest) {
        super(inputStream);
        this.digest = digest;
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            this.digest.update((byte) read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read > 0) {
            this.digest.update(bArr, i, read);
        }
        return read;
    }
}
