package org.bson.p028io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import org.bson.BsonSerializationException;
import org.bson.ByteBuf;
import org.bson.types.ObjectId;
/* renamed from: org.bson.io.OutputBuffer */
/* loaded from: classes-dex2jar.jar:org/bson/io/OutputBuffer.class */
public abstract class OutputBuffer extends OutputStream implements BsonOutput {
    private int writeCharacters(String str, boolean z) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int codePointAt = Character.codePointAt(str, i);
            if (z && codePointAt == 0) {
                throw new BsonSerializationException(String.format("BSON cstring '%s' is not valid because it contains a null character at index %d", str, Integer.valueOf(i)));
            }
            if (codePointAt < 128) {
                write((byte) codePointAt);
                i2++;
            } else if (codePointAt < 2048) {
                write((byte) ((codePointAt >> 6) + 192));
                write((byte) ((codePointAt & 63) + 128));
                i2 += 2;
            } else if (codePointAt < 65536) {
                write((byte) ((codePointAt >> 12) + 224));
                write((byte) (((codePointAt >> 6) & 63) + 128));
                write((byte) ((codePointAt & 63) + 128));
                i2 += 3;
            } else {
                write((byte) ((codePointAt >> 18) + 240));
                write((byte) (((codePointAt >> 12) & 63) + 128));
                write((byte) (((codePointAt >> 6) & 63) + 128));
                write((byte) ((codePointAt & 63) + 128));
                i2 += 4;
            }
            i += Character.charCount(codePointAt);
        }
        write(0);
        return i2 + 1;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable, org.bson.p028io.BsonOutput
    public void close() {
    }

    public abstract List<ByteBuf> getByteBuffers();

    public abstract int pipe(OutputStream outputStream) throws IOException;

    public int size() {
        return getSize();
    }

    public byte[] toByteArray() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(size());
            pipe(byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("should be impossible", e);
        }
    }

    public String toString() {
        return getClass().getName() + " size: " + size() + " pos: " + getPosition();
    }

    public abstract void truncateToPosition(int i);

    @Override // java.io.OutputStream
    public void write(int i) {
        writeByte(i);
    }

    protected abstract void write(int i, int i2);

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        writeBytes(bArr, i, i2);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeBytes(byte[] bArr) {
        writeBytes(bArr, 0, bArr.length);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeCString(String str) {
        writeCharacters(str, true);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeDouble(double d) {
        writeLong(Double.doubleToRawLongBits(d));
    }

    public void writeInt(int i) {
        writeInt32(i);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeInt32(int i) {
        write(i >> 0);
        write(i >> 8);
        write(i >> 16);
        write(i >> 24);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeInt32(int i, int i2) {
        write(i, i2 >> 0);
        write(i + 1, i2 >> 8);
        write(i + 2, i2 >> 16);
        write(i + 3, i2 >> 24);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeInt64(long j) {
        write((byte) ((j >> 0) & 255));
        write((byte) ((j >> 8) & 255));
        write((byte) ((j >> 16) & 255));
        write((byte) ((j >> 24) & 255));
        write((byte) ((j >> 32) & 255));
        write((byte) ((j >> 40) & 255));
        write((byte) ((j >> 48) & 255));
        write((byte) ((j >> 56) & 255));
    }

    public void writeLong(long j) {
        writeInt64(j);
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeObjectId(ObjectId objectId) {
        write(objectId.toByteArray());
    }

    @Override // org.bson.p028io.BsonOutput
    public void writeString(String str) {
        writeInt(0);
        int writeCharacters = writeCharacters(str, false);
        writeInt32((getPosition() - writeCharacters) - 4, writeCharacters);
    }
}
