package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/NioByteString$1.class */
public class NioByteString$1 extends InputStream {
    private final ByteBuffer buf;
    public final /* synthetic */ NioByteString this$0;

    public NioByteString$1(NioByteString nioByteString) {
        this.this$0 = nioByteString;
        this.buf = NioByteString.access$000(nioByteString).slice();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.buf.remaining();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.buf.mark();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.buf.hasRemaining()) {
            return -1;
        }
        return this.buf.get() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.buf.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, this.buf.remaining());
        this.buf.get(bArr, i, min);
        return min;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        try {
            this.buf.reset();
        } catch (InvalidMarkException e) {
            throw new IOException(e);
        }
    }
}
