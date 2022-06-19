package org.bson.p028io;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import org.bson.ByteBuf;
import org.bson.ByteBufNIO;
/* renamed from: org.bson.io.BasicOutputBuffer */
/* loaded from: classes-dex2jar.jar:org/bson/io/BasicOutputBuffer.class */
public class BasicOutputBuffer extends OutputBuffer {
    private byte[] buffer;
    private int position;

    public BasicOutputBuffer() {
        this(1024);
    }

    public BasicOutputBuffer(int i) {
        this.buffer = new byte[1024];
        this.buffer = new byte[i];
    }

    private void ensure(int i) {
        int i2 = this.position;
        int i3 = i + i2;
        byte[] bArr = this.buffer;
        if (i3 <= bArr.length) {
            return;
        }
        int length = bArr.length * 2;
        int i4 = length;
        if (length < i3) {
            i4 = i3 + 128;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        this.buffer = bArr2;
    }

    private void ensureOpen() {
        if (this.buffer != null) {
            return;
        }
        throw new IllegalStateException("The output is closed");
    }

    @Override // org.bson.p028io.OutputBuffer, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable, org.bson.p028io.BsonOutput
    public void close() {
        this.buffer = null;
    }

    @Override // org.bson.p028io.OutputBuffer
    public List<ByteBuf> getByteBuffers() {
        ensureOpen();
        return Arrays.asList(new ByteBufNIO(ByteBuffer.wrap(this.buffer, 0, this.position).duplicate().order(ByteOrder.LITTLE_ENDIAN)));
    }

    public byte[] getInternalBuffer() {
        return this.buffer;
    }

    @Override // org.bson.p028io.BsonOutput
    public int getPosition() {
        ensureOpen();
        return this.position;
    }

    @Override // org.bson.p028io.BsonOutput
    public int getSize() {
        ensureOpen();
        return this.position;
    }

    @Override // org.bson.p028io.OutputBuffer
    public int pipe(OutputStream outputStream) throws IOException {
        ensureOpen();
        outputStream.write(this.buffer, 0, this.position);
        return this.position;
    }

    @Override // org.bson.p028io.OutputBuffer, org.bson.p028io.BsonOutput
    public void truncateToPosition(int i) {
        ensureOpen();
        if (i > this.position || i < 0) {
            throw new IllegalArgumentException();
        }
        this.position = i;
    }

    @Override // org.bson.p028io.OutputBuffer
    protected void write(int i, int i2) {
        ensureOpen();
        if (i >= 0) {
            if (i > this.position - 1) {
                throw new IllegalArgumentException(String.format("position must be <= %d but was %d", Integer.valueOf(this.position - 1), Integer.valueOf(i)));
            }
            this.buffer[i] = (byte) (i2 & 255);
            return;
        }
        throw new IllegalArgumentException(String.format("position must be >= 0 but was %d", Integer.valueOf(i)));
    }

    @Override // org.bson.p028io.OutputBuffer, java.io.OutputStream
    public void write(byte[] bArr) {
        ensureOpen();
        write(bArr, 0, bArr.length);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeByte(int i) {
        ensureOpen();
        ensure(1);
        byte[] bArr = this.buffer;
        int i2 = this.position;
        this.position = i2 + 1;
        bArr[i2] = (byte) (i & 255);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeBytes(byte[] bArr, int i, int i2) {
        ensureOpen();
        ensure(i2);
        System.arraycopy(bArr, i, this.buffer, this.position, i2);
        this.position += i2;
    }
}
