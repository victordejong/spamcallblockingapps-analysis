package org.spongycastle.operator.p037bc;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Signer;
/* renamed from: org.spongycastle.operator.bc.BcSignerOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/BcSignerOutputStream.class */
public class BcSignerOutputStream extends OutputStream {
    private Signer sig;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BcSignerOutputStream(Signer signer) {
        this.sig = signer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getSignature() throws CryptoException {
        return this.sig.generateSignature();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean verify(byte[] bArr) {
        return this.sig.verifySignature(bArr);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.sig.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.sig.update(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.sig.update(bArr, i, i2);
    }
}
