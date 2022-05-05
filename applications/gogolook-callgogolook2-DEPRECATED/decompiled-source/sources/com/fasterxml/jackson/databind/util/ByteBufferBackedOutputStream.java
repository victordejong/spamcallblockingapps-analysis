package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/ByteBufferBackedOutputStream.class */
public class ByteBufferBackedOutputStream extends OutputStream {

    /* renamed from: _b */
    public final ByteBuffer f3810_b;

    public ByteBufferBackedOutputStream(ByteBuffer byteBuffer) {
        this.f3810_b = byteBuffer;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f3810_b.put((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f3810_b.put(bArr, i, i2);
    }
}
