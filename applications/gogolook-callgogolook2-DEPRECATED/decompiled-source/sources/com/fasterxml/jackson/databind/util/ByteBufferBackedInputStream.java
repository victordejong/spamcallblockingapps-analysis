package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/ByteBufferBackedInputStream.class */
public class ByteBufferBackedInputStream extends InputStream {

    /* renamed from: _b */
    public final ByteBuffer f3809_b;

    public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
        this.f3809_b = byteBuffer;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f3809_b.remaining();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f3809_b.hasRemaining() ? this.f3809_b.get() & 255 : -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f3809_b.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, this.f3809_b.remaining());
        this.f3809_b.get(bArr, i, min);
        return min;
    }
}
