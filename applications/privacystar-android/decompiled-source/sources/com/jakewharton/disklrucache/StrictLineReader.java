package com.jakewharton.disklrucache;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/jakewharton/disklrucache/StrictLineReader.class */
class StrictLineReader implements Closeable {

    /* renamed from: CR */
    private static final byte f216CR = 13;

    /* renamed from: LF */
    private static final byte f217LF = 10;
    private byte[] buf;
    private final Charset charset;
    private int end;

    /* renamed from: in */
    private final InputStream f218in;
    private int pos;

    public StrictLineReader(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (!charset.equals(Util.US_ASCII)) {
            throw new IllegalArgumentException("Unsupported encoding");
        } else {
            this.f218in = inputStream;
            this.charset = charset;
            this.buf = new byte[i];
        }
    }

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void fillBuf() throws IOException {
        int read = this.f218in.read(this.buf, 0, this.buf.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.pos = 0;
        this.end = read;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f218in) {
            if (this.buf != null) {
                this.buf = null;
                this.f218in.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
        if (r6.buf[r10] == 13) goto L_0x0062;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readLine() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jakewharton.disklrucache.StrictLineReader.readLine():java.lang.String");
    }
}
