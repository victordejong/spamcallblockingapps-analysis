package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ByteBufferBackedInputStream.class */
public class ByteBufferBackedInputStream extends InputStream {

    /* renamed from: _b */
    protected final ByteBuffer f34295_b;

    public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
        this.f34295_b = byteBuffer;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f34295_b.remaining();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f34295_b.hasRemaining()) {
            return this.f34295_b.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f34295_b.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, this.f34295_b.remaining());
        this.f34295_b.get(bArr, i, min);
        return min;
    }
}
