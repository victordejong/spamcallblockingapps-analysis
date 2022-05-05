package org.spongycastle.jcajce.p028io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.spongycastle.crypto.p027io.InvalidCipherTextIOException;
/* renamed from: org.spongycastle.jcajce.io.CipherOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/io/CipherOutputStream.class */
public class CipherOutputStream extends FilterOutputStream {
    private final Cipher cipher;
    private final byte[] oneByte = new byte[1];

    public CipherOutputStream(OutputStream outputStream, Cipher cipher) {
        super(outputStream);
        this.cipher = cipher;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        IOException e;
        try {
            byte[] doFinal = this.cipher.doFinal();
            if (doFinal != null) {
                this.out.write(doFinal);
            }
            e = null;
        } catch (GeneralSecurityException e2) {
            e = new InvalidCipherTextIOException("Error during cipher finalisation", e2);
        } catch (Exception e3) {
            e = new IOException("Error closing stream: " + e3);
        }
        try {
            flush();
            this.out.close();
        } catch (IOException e4) {
            e = e4;
            if (e == null) {
            }
        }
        if (e != null) {
            throw e;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        this.oneByte[0] = (byte) i;
        write(this.oneByte, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] update = this.cipher.update(bArr, i, i2);
        if (update != null) {
            this.out.write(update);
        }
    }
}
