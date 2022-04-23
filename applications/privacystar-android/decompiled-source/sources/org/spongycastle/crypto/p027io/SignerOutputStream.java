package org.spongycastle.crypto.p027io;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Signer;
/* renamed from: org.spongycastle.crypto.io.SignerOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/io/SignerOutputStream.class */
public class SignerOutputStream extends OutputStream {
    protected Signer signer;

    public SignerOutputStream(Signer signer) {
        this.signer = signer;
    }

    public Signer getSigner() {
        return this.signer;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.signer.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.signer.update(bArr, i, i2);
    }
}
