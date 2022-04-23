package org.spongycastle.jcajce.p028io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.spongycastle.crypto.p027io.InvalidCipherTextIOException;
/* renamed from: org.spongycastle.jcajce.io.CipherInputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/io/CipherInputStream.class */
public class CipherInputStream extends FilterInputStream {
    private byte[] buf;
    private int bufOff;
    private final Cipher cipher;
    private int maxBuf;
    private final byte[] inputBuffer = new byte[512];
    private boolean finalized = false;

    public CipherInputStream(InputStream inputStream, Cipher cipher) {
        super(inputStream);
        this.cipher = cipher;
    }

    private byte[] finaliseCipher() throws InvalidCipherTextIOException {
        try {
            this.finalized = true;
            return this.cipher.doFinal();
        } catch (GeneralSecurityException e) {
            throw new InvalidCipherTextIOException("Error finalising cipher", e);
        }
    }

    private int nextChunk() throws IOException {
        if (this.finalized) {
            return -1;
        }
        this.bufOff = 0;
        this.maxBuf = 0;
        while (this.maxBuf == 0) {
            int read = this.in.read(this.inputBuffer);
            if (read == -1) {
                this.buf = finaliseCipher();
                if (this.buf == null || this.buf.length == 0) {
                    return -1;
                }
                this.maxBuf = this.buf.length;
                return this.maxBuf;
            }
            this.buf = this.cipher.update(this.inputBuffer, 0, read);
            if (this.buf != null) {
                this.maxBuf = this.buf.length;
            }
        }
        return this.maxBuf;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.maxBuf - this.bufOff;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.in.close();
            if (!this.finalized) {
                finaliseCipher();
            }
            this.bufOff = 0;
            this.maxBuf = 0;
        } catch (Throwable th) {
            if (!this.finalized) {
                finaliseCipher();
            }
            throw th;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.bufOff >= this.maxBuf && nextChunk() < 0) {
            return -1;
        }
        byte[] bArr = this.buf;
        int i = this.bufOff;
        this.bufOff = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.bufOff >= this.maxBuf && nextChunk() < 0) {
            return -1;
        }
        int min = Math.min(i2, available());
        System.arraycopy(this.buf, this.bufOff, bArr, i, min);
        this.bufOff += min;
        return min;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        int min = (int) Math.min(j, available());
        this.bufOff += min;
        return min;
    }
}
