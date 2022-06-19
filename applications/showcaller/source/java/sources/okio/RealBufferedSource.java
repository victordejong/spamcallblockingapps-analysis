package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:okio/RealBufferedSource.class */
public final class RealBufferedSource implements BufferedSource {
    public final Buffer buffer = new Buffer();
    boolean closed;
    public final Source source;

    public RealBufferedSource(Source source) {
        Objects.requireNonNull(source, "source == null");
        this.source = source;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.buffer.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.closed) {
            return this.buffer.exhausted() && this.source.read(this.buffer, 8192L) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) {
        if (!this.closed) {
            if (j >= 0) {
                int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                ?? r11 = j;
                if (i >= 0) {
                    while (r11 < j2) {
                        long indexOf = this.buffer.indexOf(b, r11, j2);
                        if (indexOf != -1) {
                            return indexOf;
                        }
                        Buffer buffer = this.buffer;
                        long j3 = buffer.size;
                        if (j3 >= j2 || this.source.read(buffer, 8192L) == -1) {
                            return -1L;
                        }
                        r11 = Math.max((long) r11, j3);
                    }
                    return -1L;
                }
            }
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) {
        return indexOf(byteString, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j) {
        ?? r9 = j;
        if (!this.closed) {
            while (true) {
                long indexOf = this.buffer.indexOf(byteString, r9);
                if (indexOf != -1) {
                    return indexOf;
                }
                Buffer buffer = this.buffer;
                long j2 = buffer.size;
                if (this.source.read(buffer, 8192L) == -1) {
                    return -1L;
                }
                r9 = Math.max((long) r9, (j2 - byteString.size()) + 1);
            }
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j) {
        ?? r7 = j;
        if (!this.closed) {
            while (true) {
                long indexOfElement = this.buffer.indexOfElement(byteString, r7);
                if (indexOfElement != -1) {
                    return indexOfElement;
                }
                Buffer buffer = this.buffer;
                long j2 = buffer.size;
                if (this.source.read(buffer, 8192L) == -1) {
                    return -1L;
                }
                r7 = Math.max((long) r7, j2);
            }
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource.1
            @Override // java.io.InputStream
            public int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    return (int) Math.min(realBufferedSource.buffer.size, 2147483647L);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    Buffer buffer = realBufferedSource.buffer;
                    if (buffer.size != 0 || realBufferedSource.source.read(buffer, 8192L) != -1) {
                        return RealBufferedSource.this.buffer.readByte() & 255;
                    }
                    return -1;
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                if (!RealBufferedSource.this.closed) {
                    Util.checkOffsetAndCount(bArr.length, i, i2);
                    RealBufferedSource realBufferedSource = RealBufferedSource.this;
                    Buffer buffer = realBufferedSource.buffer;
                    if (buffer.size != 0 || realBufferedSource.source.read(buffer, 8192L) != -1) {
                        return RealBufferedSource.this.buffer.read(bArr, i, i2);
                    }
                    return -1;
                }
                throw new IOException("closed");
            }

            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString) {
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) {
        if (!this.closed) {
            if (j < 0 || i < 0 || i2 < 0 || byteString.size() - i < i2) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!request(1 + j2) || this.buffer.getByte(j2) != byteString.getByte(i + i3)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        Buffer buffer = this.buffer;
        if (buffer.size == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(byteBuffer);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i, int i2) {
        long j = i2;
        Util.checkOffsetAndCount(bArr.length, i, j);
        Buffer buffer = this.buffer;
        if (buffer.size == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(bArr, i, (int) Math.min(j, this.buffer.size));
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) {
        if (buffer != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else {
                Buffer buffer2 = this.buffer;
                if (buffer2.size == 0 && this.source.read(buffer2, 8192L) == -1) {
                    return -1L;
                }
                return this.buffer.read(buffer, Math.min(j, this.buffer.size));
            }
        }
        throw new IllegalArgumentException("sink == null");
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        if (sink != null) {
            char c = 0;
            while (this.source.read(this.buffer, 8192L) != -1) {
                long completeSegmentByteCount = this.buffer.completeSegmentByteCount();
                if (completeSegmentByteCount > 0) {
                    c += completeSegmentByteCount;
                    sink.write(this.buffer, completeSegmentByteCount);
                }
            }
            char c2 = c;
            if (this.buffer.size() > 0) {
                c2 = c + this.buffer.size();
                Buffer buffer = this.buffer;
                sink.write(buffer, buffer.size());
            }
            return c2;
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        require(1L);
        return this.buffer.readByte();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteArray();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) {
        require(j);
        return this.buffer.readByteArray(j);
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteString();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) {
        require(j);
        return this.buffer.readByteString(j);
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() {
        int i;
        byte b;
        require(1L);
        int i2 = 0;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!request(i3)) {
                break;
            }
            b = this.buffer.getByte(i);
            if ((b < 48 || b > 57) && !(i == 0 && b == 45)) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(b)));
        }
        return this.buffer.readDecimalLong();
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) {
        try {
            require(j);
            this.buffer.readFully(buffer, j);
        } catch (EOFException e) {
            buffer.writeAll(this.buffer);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) {
        try {
            require(bArr.length);
            this.buffer.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                Buffer buffer = this.buffer;
                long j = buffer.size;
                if (j <= 0) {
                    throw e;
                }
                int read = buffer.read(bArr, i2, (int) j);
                if (read == -1) {
                    throw new AssertionError();
                }
                i = i2 + read;
            }
        }
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() {
        int i;
        byte b;
        require(1L);
        int i2 = 0;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!request(i3)) {
                break;
            }
            b = this.buffer.getByte(i);
            if ((b < 48 || b > 57) && ((b < 97 || b > 102) && (b < 65 || b > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(b)));
        }
        return this.buffer.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public int readInt() {
        require(4L);
        return this.buffer.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        require(4L);
        return this.buffer.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        require(8L);
        return this.buffer.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        require(8L);
        return this.buffer.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        require(2L);
        return this.buffer.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        require(2L);
        return this.buffer.readShortLe();
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) {
        require(j);
        if (charset != null) {
            return this.buffer.readString(j, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        if (charset != null) {
            this.buffer.writeAll(this.source);
            return this.buffer.readString(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        this.buffer.writeAll(this.source);
        return this.buffer.readUtf8();
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) {
        require(j);
        return this.buffer.readUtf8(j);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        require(1L);
        byte b = this.buffer.getByte(0L);
        if ((b & 224) == 192) {
            require(2L);
        } else if ((b & 240) == 224) {
            require(3L);
        } else if ((b & 248) == 240) {
            require(4L);
        }
        return this.buffer.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            long j = this.buffer.size;
            return j != 0 ? readUtf8(j) : null;
        }
        return this.buffer.readUtf8Line(indexOf);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        char c = j == Long.MAX_VALUE ? (char) 65535 : j + 1;
        long indexOf = indexOf((byte) 10, 0L, c);
        if (indexOf != -1) {
            return this.buffer.readUtf8Line(indexOf);
        }
        if (c < Long.MAX_VALUE && request(c) && this.buffer.getByte(c - 1) == 13 && request(1 + c) && this.buffer.getByte(c) == 10) {
            return this.buffer.readUtf8Line(c);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.buffer;
        buffer2.copyTo(buffer, 0L, Math.min(32L, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.buffer.size(), j) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        Buffer buffer;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.closed) {
            throw new IllegalStateException("closed");
        } else {
            do {
                buffer = this.buffer;
                if (buffer.size >= j) {
                    return true;
                }
            } while (this.source.read(buffer, 8192L) != -1);
            return false;
        }
    }

    @Override // okio.BufferedSource
    public void require(long j) {
        if (request(j)) {
            return;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        Buffer buffer;
        if (!this.closed) {
            do {
                int selectPrefix = this.buffer.selectPrefix(options);
                if (selectPrefix == -1) {
                    return -1;
                }
                long size = options.byteStrings[selectPrefix].size();
                buffer = this.buffer;
                if (size <= buffer.size) {
                    buffer.skip(size);
                    return selectPrefix;
                }
            } while (this.source.read(buffer, 8192L) != -1);
            return -1;
        }
        throw new IllegalStateException("closed");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // okio.BufferedSource
    public void skip(long j) {
        ?? r6 = j;
        if (!this.closed) {
            while (r6 > 0) {
                Buffer buffer = this.buffer;
                if (buffer.size == 0 && this.source.read(buffer, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min((long) r6, this.buffer.size());
                this.buffer.skip(min);
                r6 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public String toString() {
        return "buffer(" + this.source + ")";
    }
}
