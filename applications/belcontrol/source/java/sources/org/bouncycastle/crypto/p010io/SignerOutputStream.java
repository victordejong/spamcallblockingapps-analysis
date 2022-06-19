package org.bouncycastle.crypto.p010io;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import org.bouncycastle.crypto.Signer;
/* renamed from: org.bouncycastle.crypto.io.SignerOutputStream */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/io/SignerOutputStream.class */
public class SignerOutputStream extends FilterOutputStream {
    public Signer signer;

    public SignerOutputStream(OutputStream outputStream, Signer signer) {
        super(outputStream);
        this.signer = signer;
    }

    public Signer getSigner() {
        return this.signer;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        this.signer.update((byte) i);
        ((FilterOutputStream) this).out.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.signer.update(bArr, i, i2);
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }
}
