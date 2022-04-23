package org.spongycastle.crypto.p027io;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Mac;
/* renamed from: org.spongycastle.crypto.io.MacOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/io/MacOutputStream.class */
public class MacOutputStream extends OutputStream {
    protected Mac mac;

    public MacOutputStream(Mac mac) {
        this.mac = mac;
    }

    public byte[] getMac() {
        byte[] bArr = new byte[this.mac.getMacSize()];
        this.mac.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.mac.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.mac.update(bArr, i, i2);
    }
}
