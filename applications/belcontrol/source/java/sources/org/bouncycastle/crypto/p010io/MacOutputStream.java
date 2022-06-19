package org.bouncycastle.crypto.p010io;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import org.bouncycastle.crypto.Mac;
/* renamed from: org.bouncycastle.crypto.io.MacOutputStream */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/io/MacOutputStream.class */
public class MacOutputStream extends FilterOutputStream {
    public Mac mac;

    public MacOutputStream(OutputStream outputStream, Mac mac) {
        super(outputStream);
        this.mac = mac;
    }

    public Mac getMac() {
        return this.mac;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        this.mac.update((byte) i);
        ((FilterOutputStream) this).out.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.mac.update(bArr, i, i2);
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }
}
