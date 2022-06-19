package org.bouncycastle.crypto.p010io;

import java.io.FilterInputStream;
import java.io.InputStream;
import org.bouncycastle.crypto.Mac;
/* renamed from: org.bouncycastle.crypto.io.MacInputStream */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/io/MacInputStream.class */
public class MacInputStream extends FilterInputStream {
    public Mac mac;

    public MacInputStream(InputStream inputStream, Mac mac) {
        super(inputStream);
        this.mac = mac;
    }

    public Mac getMac() {
        return this.mac;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            this.mac.update((byte) read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read >= 0) {
            this.mac.update(bArr, i, read);
        }
        return read;
    }
}
