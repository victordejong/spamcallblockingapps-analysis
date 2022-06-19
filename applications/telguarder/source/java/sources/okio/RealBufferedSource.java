package okio;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.text.CharsKt;
import okio.internal.BufferKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\rH\u0016J\b\u0010\u001e\u001a\u00020\u0001H\u0016J\u0018\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J(\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'H\u0016J \u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'2\u0006\u0010 \u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0018\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010%\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u0014H\u0016J\b\u0010+\u001a\u00020'H\u0016J\u0010\u0010+\u001a\u00020'2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0018H\u0016J\u0010\u0010,\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010-\u001a\u00020\u0012H\u0016J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020'H\u0016J\u0018\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010/\u001a\u00020\u0012H\u0016J\b\u00100\u001a\u00020\"H\u0016J\b\u00101\u001a\u00020\"H\u0016J\b\u00102\u001a\u00020\u0012H\u0016J\b\u00103\u001a\u00020\u0012H\u0016J\b\u00104\u001a\u000205H\u0016J\b\u00106\u001a\u000205H\u0016J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u0018\u00107\u001a\u0002082\u0006\u0010#\u001a\u00020\u00122\u0006\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u000208H\u0016J\u0010\u0010;\u001a\u0002082\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010<\u001a\u00020\"H\u0016J\n\u0010=\u001a\u0004\u0018\u000108H\u0016J\b\u0010>\u001a\u000208H\u0016J\u0010\u0010>\u001a\u0002082\u0006\u0010?\u001a\u00020\u0012H\u0016J\u0010\u0010@\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010A\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010F\u001a\u00020GH\u0016J\b\u0010H\u001a\u000208H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006I"}, m400d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "source", "Lokio/Source;", "(Lokio/Source;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", "close", "", "exhausted", "indexOf", "", "b", "", "fromIndex", "toIndex", "bytes", "Lokio/ByteString;", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "peek", "rangeEquals", "offset", "bytesOffset", "", "byteCount", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "", "charset", "Ljava/nio/charset/Charset;", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, "require", "select", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lokio/Options;", "skip", "timeout", "Lokio/Timeout;", "toString", "okio"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/RealBufferedSource.class */
public final class RealBufferedSource implements BufferedSource {
    public final Buffer bufferField = new Buffer();
    public boolean closed;
    public final Source source;

    public RealBufferedSource(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
    }

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        boolean z = true;
        if (!this.closed) {
            if (!this.bufferField.exhausted() || this.source.read(this.bufferField, 8192) != -1) {
                z = false;
            }
            return z;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, LongCompanionObject.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, LongCompanionObject.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) {
        char c;
        boolean z = true;
        if (!this.closed) {
            if (0 > j || j2 < j) {
                z = false;
            }
            ?? r9 = j;
            if (!z) {
                throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
            }
            while (true) {
                c = 65535;
                if (r9 >= j2) {
                    break;
                }
                c = this.bufferField.indexOf(b, r9, j2);
                if (c != -1) {
                    break;
                }
                long size = this.bufferField.size();
                c = 65535;
                if (size >= j2) {
                    break;
                } else if (this.source.read(this.bufferField, 8192) == -1) {
                    c = 65535;
                    break;
                } else {
                    r9 = Math.max((long) r9, size);
                }
            }
            return c;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes, long j) {
        char c;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        ?? r9 = j;
        if (!this.closed) {
            while (true) {
                ?? indexOf = this.bufferField.indexOf(bytes, r9);
                if (indexOf != -1) {
                    c = indexOf;
                    break;
                }
                long size = this.bufferField.size();
                if (this.source.read(this.bufferField, 8192) == -1) {
                    c = 65535;
                    break;
                }
                r9 = Math.max((long) r9, (size - bytes.size()) + 1);
            }
            return c;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes, long j) {
        char c;
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        ?? r7 = j;
        if (!this.closed) {
            while (true) {
                ?? indexOfElement = this.bufferField.indexOfElement(targetBytes, r7);
                if (indexOfElement != -1) {
                    c = indexOfElement;
                    break;
                }
                long size = this.bufferField.size();
                if (this.source.read(this.bufferField, 8192) == -1) {
                    c = 65535;
                    break;
                }
                r7 = Math.max((long) r7, size);
            }
            return c;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                if (!RealBufferedSource.this.closed) {
                    return (int) Math.min(RealBufferedSource.this.bufferField.size(), Integer.MAX_VALUE);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                if (!RealBufferedSource.this.closed) {
                    if (RealBufferedSource.this.bufferField.size() != 0 || RealBufferedSource.this.source.read(RealBufferedSource.this.bufferField, 8192) != -1) {
                        return RealBufferedSource.this.bufferField.readByte() & 255;
                    }
                    return -1;
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream
            public int read(byte[] data, int i, int i2) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (!RealBufferedSource.this.closed) {
                    _Util.checkOffsetAndCount(data.length, i, i2);
                    if (RealBufferedSource.this.bufferField.size() != 0 || RealBufferedSource.this.source.read(RealBufferedSource.this.bufferField, 8192) != -1) {
                        return RealBufferedSource.this.bufferField.read(data, i, i2);
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
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return rangeEquals(j, bytes, 0, bytes.size());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString bytes, int i, int i2) {
        boolean z;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!this.closed) {
            if (j >= 0 && i >= 0 && i2 >= 0 && bytes.size() - i >= i2) {
                int i3 = 0;
                while (true) {
                    z = true;
                    if (i3 >= i2) {
                        break;
                    }
                    long j2 = i3 + j;
                    if (!request(1 + j2) || this.bufferField.getByte(j2) != bytes.getByte(i + i3)) {
                        break;
                    }
                    i3++;
                }
            }
            z = false;
            return z;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(sink);
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = i2;
        _Util.checkOffsetAndCount(sink.length, i, j);
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            i3 = -1;
        } else {
            i3 = this.bufferField.read(sink, i, (int) Math.min(j, this.bufferField.size()));
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // okio.Source
    public long read(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            if (!(true ^ this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            return (this.bufferField.size() == 0 && this.source.read(this.bufferField, (long) 8192) == -1) ? (char) 65535 : this.bufferField.read(sink, Math.min(j, this.bufferField.size()));
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        char c = 0;
        while (this.source.read(this.bufferField, 8192) != -1) {
            long completeSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                c += completeSegmentByteCount;
                sink.write(this.bufferField, completeSegmentByteCount);
            }
        }
        char c2 = c;
        if (this.bufferField.size() > 0) {
            c2 = c + this.bufferField.size();
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
        }
        return c2;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) {
        require(j);
        return this.bufferField.readByteArray(j);
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) {
        require(j);
        return this.bufferField.readByteString(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [okio.RealBufferedSource] */
    @Override // okio.BufferedSource
    public long readDecimalLong() {
        byte b;
        int i;
        require(1L);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            ?? r02 = c + 1;
            if (!request(r02)) {
                break;
            }
            b = this.bufferField.getByte(c);
            if ((b < ((byte) 48) || b > ((byte) 57)) && !(c == 0 && b == ((byte) 45))) {
                break;
            }
            r0 = r02;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9] or '-' character but was 0x");
            String num = Integer.toString(b, CharsKt.checkRadix(CharsKt.checkRadix(16)));
            Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.bufferField.readDecimalLong();
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(j);
            this.bufferField.readFully(sink, j);
        } catch (EOFException e) {
            sink.writeAll(this.bufferField);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(sink.length);
            this.bufferField.readFully(sink);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (this.bufferField.size() <= 0) {
                    throw e;
                }
                Buffer buffer = this.bufferField;
                int read = buffer.read(sink, i2, (int) buffer.size());
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
            b = this.bufferField.getByte(i);
            if ((b < ((byte) 48) || b > ((byte) 57)) && ((b < ((byte) 97) || b > ((byte) 102)) && (b < ((byte) 65) || b > ((byte) 70)))) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            String num = Integer.toString(b, CharsKt.checkRadix(CharsKt.checkRadix(16)));
            Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.bufferField.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public int readInt() {
        require(4L);
        return this.bufferField.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        require(4L);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        require(8L);
        return this.bufferField.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        require(8L);
        return this.bufferField.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        require(2L);
        return this.bufferField.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        require(j);
        return this.bufferField.readString(j, charset);
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readUtf8();
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) {
        require(j);
        return this.bufferField.readUtf8(j);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        require(1L);
        byte b = this.bufferField.getByte(0L);
        if ((b & 224) == 192) {
            require(2L);
        } else if ((b & 240) == 224) {
            require(3L);
        } else if ((b & 248) == 240) {
            require(4L);
        }
        return this.bufferField.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        return indexOf == -1 ? this.bufferField.size() != 0 ? readUtf8(this.bufferField.size()) : null : BufferKt.readUtf8Line(this.bufferField, indexOf);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(LongCompanionObject.MAX_VALUE);
    }

    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) {
        String str;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("limit < 0: " + j).toString());
        }
        char c = j == LongCompanionObject.MAX_VALUE ? (char) 65535 : j + 1;
        byte b = (byte) 10;
        long indexOf = indexOf(b, 0L, c);
        if (indexOf != -1) {
            str = BufferKt.readUtf8Line(this.bufferField, indexOf);
        } else if (c >= LongCompanionObject.MAX_VALUE || !request(c) || this.bufferField.getByte(c - 1) != ((byte) 13) || !request(1 + c) || this.bufferField.getByte(c) != b) {
            Buffer buffer = new Buffer();
            Buffer buffer2 = this.bufferField;
            buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.size(), j) + " content=" + buffer.readByteString().hex() + "…");
        } else {
            str = BufferKt.readUtf8Line(this.bufferField, c);
        }
        return str;
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        boolean z = false;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        } else {
            while (true) {
                if (this.bufferField.size() >= j) {
                    z = true;
                    break;
                } else if (this.source.read(this.bufferField, 8192) == -1) {
                    break;
                }
            }
            return z;
        }
    }

    @Override // okio.BufferedSource
    public void require(long j) {
        if (request(j)) {
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
        r7 = -1;
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int select(okio.Options r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "options"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r0 = r5
            boolean r0 = r0.closed
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L5d
        L10:
            r0 = r5
            okio.Buffer r0 = r0.bufferField
            r1 = r6
            r2 = 1
            int r0 = okio.internal.BufferKt.selectPrefix(r0, r1, r2)
            r7 = r0
            r0 = r7
            r1 = -2
            if (r0 == r1) goto L40
            r0 = r7
            r1 = -1
            if (r0 == r1) goto L3b
            r0 = r6
            okio.ByteString[] r0 = r0.getByteStrings$okio()
            r1 = r7
            r0 = r0[r1]
            int r0 = r0.size()
            r8 = r0
            r0 = r5
            okio.Buffer r0 = r0.bufferField
            r1 = r8
            long r1 = (long) r1
            r0.skip(r1)
            goto L5b
        L3b:
            r0 = -1
            r7 = r0
            goto L5b
        L40:
            r0 = r5
            okio.Source r0 = r0.source
            r1 = r5
            okio.Buffer r1 = r1.bufferField
            r2 = 8192(0x2000, float:1.14794E-41)
            long r2 = (long) r2
            long r0 = r0.read(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L10
            goto L3b
        L5b:
            r0 = r7
            return r0
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "closed"
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.select(okio.Options):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // okio.BufferedSource
    public void skip(long j) {
        ?? r6 = j;
        if (!this.closed) {
            while (r6 > 0) {
                if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
                    throw new EOFException();
                }
                long min = Math.min((long) r6, this.bufferField.size());
                this.bufferField.skip(min);
                r6 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public String toString() {
        return "buffer(" + this.source + ')';
    }
}
