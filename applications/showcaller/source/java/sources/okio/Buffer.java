package okio;

import com.zhy.http.okhttp.OkHttpUtils;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:okio/Buffer.class */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    private static final byte[] DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    static final int REPLACEMENT_CHARACTER = 65533;
    Segment head;
    long size;

    /* loaded from: classes2-dex2jar.jar:okio/Buffer$UnsafeCursor.class */
    public static final class UnsafeCursor implements Closeable {
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer != null) {
                this.buffer = null;
                this.segment = null;
                this.offset = -1L;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public long expandBuffer(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: " + i);
            } else if (i > 8192) {
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i);
            } else {
                Buffer buffer = this.buffer;
                if (buffer == null) {
                    throw new IllegalStateException("not attached to a buffer");
                }
                if (!this.readWrite) {
                    throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
                }
                long j = buffer.size;
                Segment writableSegment = buffer.writableSegment(i);
                int i2 = 8192 - writableSegment.limit;
                writableSegment.limit = 8192;
                long j2 = i2;
                this.buffer.size = j + j2;
                this.segment = writableSegment;
                this.offset = j;
                this.data = writableSegment.data;
                this.start = 8192 - i2;
                this.end = 8192;
                return j2;
            }
        }

        public int next() {
            long j = this.offset;
            if (j != this.buffer.size) {
                return j == -1 ? seek(0L) : seek(j + (this.end - this.start));
            }
            throw new IllegalStateException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v32, types: [long] */
        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        /* JADX WARN: Type inference failed for: r0v69, types: [long] */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        public long resizeBuffer(long j) {
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (!this.readWrite) {
                    throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
                }
                ?? r0 = buffer.size;
                int i = (j > r0 ? 1 : (j == r0 ? 0 : -1));
                if (i <= 0) {
                    if (j < 0) {
                        throw new IllegalArgumentException("newSize < 0: " + j);
                    }
                    char c = r0;
                    char c2 = j;
                    while (true) {
                        ?? r02 = c - c2;
                        if (r02 <= 0) {
                            break;
                        }
                        Buffer buffer2 = this.buffer;
                        Segment segment = buffer2.head.prev;
                        int i2 = segment.limit;
                        ?? r03 = i2 - segment.pos;
                        if (r03 > r02) {
                            segment.limit = (int) (i2 - r02);
                            break;
                        }
                        buffer2.head = segment.pop();
                        SegmentPool.recycle(segment);
                        c = r02;
                        c2 = r03;
                    }
                    this.segment = null;
                    this.offset = j;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                } else if (i > 0) {
                    char c3 = j - r0;
                    boolean z = true;
                    while (c3 > 0) {
                        Segment writableSegment = this.buffer.writableSegment(1);
                        int min = (int) Math.min((long) c3, 8192 - writableSegment.limit);
                        int i3 = writableSegment.limit + min;
                        writableSegment.limit = i3;
                        ?? r04 = c3 - min;
                        c3 = r04;
                        if (z) {
                            this.segment = writableSegment;
                            this.offset = r0;
                            this.data = writableSegment.data;
                            this.start = i3 - min;
                            this.end = i3;
                            z = false;
                            c3 = r04;
                        }
                    }
                }
                this.buffer.size = j;
                return r0;
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        /* JADX WARN: Type inference failed for: r0v66, types: [long] */
        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        /* JADX WARN: Type inference failed for: r0v85, types: [long] */
        public int seek(long j) {
            char c;
            Segment segment;
            char c2;
            Segment segment2;
            int i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if (i >= 0) {
                Buffer buffer = this.buffer;
                char c3 = buffer.size;
                if (j <= c3) {
                    if (i == 0 || j == c3) {
                        this.segment = null;
                        this.offset = j;
                        this.data = null;
                        this.start = -1;
                        this.end = -1;
                        return -1;
                    }
                    Segment segment3 = buffer.head;
                    Segment segment4 = this.segment;
                    if (segment4 != null) {
                        c = this.offset - (this.start - segment4.pos);
                        if (c > j) {
                            c3 = c;
                            segment = segment3;
                            segment3 = segment4;
                            c = 0;
                        } else {
                            segment = segment4;
                        }
                    } else {
                        segment = segment3;
                        c = 0;
                    }
                    char c4 = c3;
                    if (c3 - j > j - c) {
                        Segment segment5 = segment;
                        while (true) {
                            Segment segment6 = segment5;
                            int i2 = segment6.limit;
                            int i3 = segment6.pos;
                            c2 = c;
                            segment2 = segment6;
                            if (j < (i2 - i3) + c) {
                                break;
                            }
                            c += i2 - i3;
                            segment5 = segment6.next;
                        }
                    } else {
                        while (c4 > j) {
                            segment3 = segment3.prev;
                            c4 -= segment3.limit - segment3.pos;
                        }
                        segment2 = segment3;
                        c2 = c4;
                    }
                    Segment segment7 = segment2;
                    if (this.readWrite) {
                        segment7 = segment2;
                        if (segment2.shared) {
                            Segment unsharedCopy = segment2.unsharedCopy();
                            Buffer buffer2 = this.buffer;
                            if (buffer2.head == segment2) {
                                buffer2.head = unsharedCopy;
                            }
                            segment7 = segment2.push(unsharedCopy);
                            segment7.prev.pop();
                        }
                    }
                    this.segment = segment7;
                    this.offset = j;
                    this.data = segment7.data;
                    int i4 = segment7.pos + ((int) (j - c2));
                    this.start = i4;
                    int i5 = segment7.limit;
                    this.end = i5;
                    return i5 - i4;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j), Long.valueOf(this.buffer.size)));
        }
    }

    private ByteString digest(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i = segment.pos;
                messageDigest.update(bArr, i, segment.limit - i);
                Segment segment2 = this.head;
                while (true) {
                    segment2 = segment2.next;
                    if (segment2 == this.head) {
                        break;
                    }
                    byte[] bArr2 = segment2.data;
                    int i2 = segment2.pos;
                    messageDigest.update(bArr2, i2, segment2.limit - i2);
                }
            }
            return ByteString.m363of(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i = segment.pos;
                mac.update(bArr, i, segment.limit - i);
                Segment segment2 = this.head;
                while (true) {
                    segment2 = segment2.next;
                    if (segment2 == this.head) {
                        break;
                    }
                    byte[] bArr2 = segment2.data;
                    int i2 = segment2.pos;
                    mac.update(bArr2, i2, segment2.limit - i2);
                }
            }
            return ByteString.m363of(mac.doFinal());
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError();
        }
    }

    private boolean rangeEquals(Segment segment, int i, ByteString byteString, int i2, int i3) {
        int i4 = segment.limit;
        byte[] bArr = segment.data;
        while (i2 < i3) {
            int i5 = i4;
            Segment segment2 = segment;
            int i6 = i;
            if (i == i4) {
                segment2 = segment.next;
                byte[] bArr2 = segment2.data;
                i6 = segment2.pos;
                i5 = segment2.limit;
                bArr = bArr2;
            }
            if (bArr[i6] != byteString.getByte(i2)) {
                return false;
            }
            i = i6 + 1;
            i2++;
            i4 = i5;
            segment = segment2;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    private void readFrom(InputStream inputStream, long j, boolean z) {
        ?? r8 = j;
        if (inputStream != null) {
            while (true) {
                if (r8 <= 0 && !z) {
                    return;
                }
                Segment writableSegment = writableSegment(1);
                int read = inputStream.read(writableSegment.data, writableSegment.limit, (int) Math.min((long) r8, 8192 - writableSegment.limit));
                if (read == -1) {
                    if (!z) {
                        throw new EOFException();
                    }
                    return;
                }
                writableSegment.limit += read;
                long j2 = read;
                this.size += j2;
                r8 -= j2;
            }
        } else {
            throw new IllegalArgumentException("in == null");
        }
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this;
    }

    public void clear() {
        try {
            skip(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public Buffer clone() {
        Buffer buffer = new Buffer();
        if (this.size == 0) {
            return buffer;
        }
        Segment sharedCopy = this.head.sharedCopy();
        buffer.head = sharedCopy;
        sharedCopy.prev = sharedCopy;
        sharedCopy.next = sharedCopy;
        Segment segment = this.head;
        while (true) {
            segment = segment.next;
            if (segment == this.head) {
                buffer.size = this.size;
                return buffer;
            }
            buffer.head.prev.push(segment.sharedCopy());
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    public long completeSegmentByteCount() {
        ?? r0 = this.size;
        if (r0 == 0) {
            return 0L;
        }
        Segment segment = this.head.prev;
        int i = segment.limit;
        char c = r0;
        if (i < 8192) {
            c = r0;
            if (segment.owner) {
                c = r0 - (i - segment.pos);
            }
        }
        return c;
    }

    public Buffer copyTo(OutputStream outputStream) {
        return copyTo(outputStream, 0L, this.size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public Buffer copyTo(OutputStream outputStream, long j, long j2) {
        Segment segment;
        boolean z;
        char c;
        if (outputStream != null) {
            Util.checkOffsetAndCount(this.size, j, j2);
            if (j2 == 0) {
                return this;
            }
            Segment segment2 = this.head;
            ?? r9 = j;
            while (true) {
                Segment segment3 = segment2;
                int i = segment3.limit;
                int i2 = segment3.pos;
                segment = segment3;
                z = r9;
                c = j2;
                if (r9 >= i - i2) {
                    r9 -= i - i2;
                    segment2 = segment3.next;
                }
            }
            while (c > 0) {
                int i3 = (int) (segment.pos + (z ? 1L : 0L));
                int min = (int) Math.min(segment.limit - i3, (long) c);
                outputStream.write(segment.data, i3, min);
                c -= min;
                segment = segment.next;
                z = false;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public Buffer copyTo(Buffer buffer, long j, long j2) {
        Segment segment;
        boolean z;
        char c;
        if (buffer != null) {
            Util.checkOffsetAndCount(this.size, j, j2);
            if (j2 == 0) {
                return this;
            }
            buffer.size += j2;
            Segment segment2 = this.head;
            ?? r9 = j;
            while (true) {
                Segment segment3 = segment2;
                int i = segment3.limit;
                int i2 = segment3.pos;
                segment = segment3;
                z = r9;
                c = j2;
                if (r9 >= i - i2) {
                    r9 -= i - i2;
                    segment2 = segment3.next;
                }
            }
            while (c > 0) {
                Segment sharedCopy = segment.sharedCopy();
                int i3 = (int) (sharedCopy.pos + (z ? 1L : 0L));
                sharedCopy.pos = i3;
                sharedCopy.limit = Math.min(i3 + c, sharedCopy.limit);
                Segment segment4 = buffer.head;
                if (segment4 == null) {
                    sharedCopy.prev = sharedCopy;
                    sharedCopy.next = sharedCopy;
                    buffer.head = sharedCopy;
                } else {
                    segment4.prev.push(sharedCopy);
                }
                c -= sharedCopy.limit - sharedCopy.pos;
                segment = segment.next;
                z = false;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() {
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        long j = this.size;
        if (j != buffer.size) {
            return false;
        }
        char c = 0;
        if (j == 0) {
            return true;
        }
        Segment segment = this.head;
        Segment segment2 = buffer.head;
        int i = segment.pos;
        int i2 = segment2.pos;
        while (c < this.size) {
            long min = Math.min(segment.limit - i, segment2.limit - i2);
            int i3 = 0;
            while (i3 < min) {
                if (segment.data[i] != segment2.data[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            Segment segment3 = segment;
            int i4 = i;
            if (i == segment.limit) {
                segment3 = segment.next;
                i4 = segment3.pos;
            }
            int i5 = i2;
            Segment segment4 = segment2;
            if (i2 == segment2.limit) {
                segment4 = segment2.next;
                i5 = segment4.pos;
            }
            c += min;
            segment = segment3;
            i = i4;
            i2 = i5;
            segment2 = segment4;
        }
        return true;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    public byte getByte(long j) {
        Segment segment;
        int i;
        ?? r0;
        Util.checkOffsetAndCount(this.size, j, 1L);
        long j2 = this.size;
        if (j2 - j <= j) {
            char c = j - j2;
            Segment segment2 = this.head;
            do {
                segment = segment2.prev;
                int i2 = segment.limit;
                i = segment.pos;
                r0 = c + (i2 - i);
                segment2 = segment;
                c = r0;
            } while (r0 < 0);
            return segment.data[i + ((int) r0)];
        }
        Segment segment3 = this.head;
        ?? r8 = j;
        while (true) {
            Segment segment4 = segment3;
            int i3 = segment4.limit;
            int i4 = segment4.pos;
            long j3 = i3 - i4;
            if (r8 < j3) {
                return segment4.data[i4 + ((int) r8)];
            }
            r8 -= j3;
            segment3 = segment4.next;
        }
    }

    public int hashCode() {
        int i;
        Segment segment;
        Segment segment2 = this.head;
        if (segment2 == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = segment2.limit;
            i = i2;
            for (int i4 = segment2.pos; i4 < i3; i4++) {
                i = (i * 31) + segment2.data[i4];
            }
            segment = segment2.next;
            segment2 = segment;
            i2 = i;
        } while (segment != this.head);
        return i;
    }

    public ByteString hmacSha1(ByteString byteString) {
        return hmac("HmacSHA1", byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return hmac("HmacSHA256", byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        return hmac("HmacSHA512", byteString);
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
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) {
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.size), Long.valueOf((long) j), Long.valueOf((long) j2)));
        }
        char c = this.size;
        char c2 = j2 > c ? c : j2;
        if (j == c2) {
            return -1L;
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        char c3 = 0;
        Segment segment2 = segment;
        if (c - j >= j) {
            while (true) {
                ?? r0 = (segment2.limit - segment2.pos) + c3;
                if (r0 >= j) {
                    break;
                }
                segment2 = segment2.next;
                c3 = r0;
            }
        } else {
            while (true) {
                c3 = c;
                segment2 = segment;
                if (c <= j) {
                    break;
                }
                segment = segment.prev;
                c -= segment.limit - segment.pos;
            }
        }
        while (c3 < c2) {
            byte[] bArr = segment2.data;
            int min = (int) Math.min(segment2.limit, (segment2.pos + c2) - c3);
            for (int i = (int) ((segment2.pos + j) - c3); i < min; i++) {
                if (bArr[i] == b) {
                    return (i - segment2.pos) + c3;
                }
            }
            c3 += segment2.limit - segment2.pos;
            segment2 = segment2.next;
            j = c3;
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) {
        return indexOf(byteString, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j) {
        if (byteString.size() != 0) {
            char c = 0;
            if (j < 0) {
                throw new IllegalArgumentException("fromIndex < 0");
            }
            Segment segment = this.head;
            if (segment == null) {
                return -1L;
            }
            char c2 = this.size;
            Segment segment2 = segment;
            if (c2 - j >= j) {
                while (true) {
                    ?? r0 = (segment2.limit - segment2.pos) + c;
                    if (r0 >= j) {
                        break;
                    }
                    segment2 = segment2.next;
                    c = r0;
                }
            } else {
                while (true) {
                    segment2 = segment;
                    c = c2;
                    if (c2 <= j) {
                        break;
                    }
                    segment = segment.prev;
                    c2 -= segment.limit - segment.pos;
                }
            }
            byte b = byteString.getByte(0);
            int size = byteString.size();
            long j2 = 1 + (this.size - size);
            char c3 = j;
            while (c < j2) {
                byte[] bArr = segment2.data;
                int min = (int) Math.min(segment2.limit, (segment2.pos + j2) - c);
                for (int i = (int) ((segment2.pos + c3) - c); i < min; i++) {
                    if (bArr[i] == b && rangeEquals(segment2, i + 1, byteString, 1, size)) {
                        return (i - segment2.pos) + c;
                    }
                }
                ?? r02 = c + (segment2.limit - segment2.pos);
                segment2 = segment2.next;
                c3 = r02;
                c = r02;
            }
            return -1L;
        }
        throw new IllegalArgumentException("bytes is empty");
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r1v36, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j) {
        int i;
        int i2;
        char c = false;
        if (j >= 0) {
            Segment segment = this.head;
            if (segment == null) {
                return -1L;
            }
            char c2 = this.size;
            Segment segment2 = segment;
            if (c2 - j >= j) {
                while (true) {
                    ?? r0 = (segment2.limit - segment2.pos) + c;
                    if (r0 >= j) {
                        break;
                    }
                    segment2 = segment2.next;
                    c = r0;
                }
            } else {
                while (true) {
                    segment2 = segment;
                    c = c2;
                    if (c2 <= j) {
                        break;
                    }
                    segment = segment.prev;
                    c2 -= segment.limit - segment.pos;
                }
            }
            if (byteString.size() == 2) {
                byte b = byteString.getByte(0);
                byte b2 = byteString.getByte(1);
                char c3 = j;
                while (c < this.size) {
                    byte[] bArr = segment2.data;
                    i = (int) ((segment2.pos + c3) - c);
                    int i3 = segment2.limit;
                    while (i < i3) {
                        byte b3 = bArr[i];
                        if (b3 == b || b3 == b2) {
                            i2 = segment2.pos;
                        } else {
                            i++;
                        }
                    }
                    c += segment2.limit - segment2.pos;
                    segment2 = segment2.next;
                    c3 = c;
                }
                return -1L;
            }
            byte[] internalArray = byteString.internalArray();
            boolean z = j;
            while (c < this.size) {
                byte[] bArr2 = segment2.data;
                i = (int) ((segment2.pos + z) - c);
                int i4 = segment2.limit;
                while (i < i4) {
                    byte b4 = bArr2[i];
                    for (byte b5 : internalArray) {
                        if (b4 == b5) {
                            i2 = segment2.pos;
                        }
                    }
                    i++;
                }
                c += segment2.limit - segment2.pos;
                segment2 = segment2.next;
                z = c;
            }
            return -1L;
            return (i - i2) + c;
        }
        throw new IllegalArgumentException("fromIndex < 0");
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer.2
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                Buffer buffer = Buffer.this;
                if (buffer.size > 0) {
                    return buffer.readByte() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return Buffer.this.read(bArr, i, i2);
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                Buffer.this.writeByte((int) ((byte) i));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                Buffer.this.write(bArr, i, i2);
            }
        };
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString) {
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.size - j < i2 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (getByte(i3 + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.limit - segment.pos);
        byteBuffer.put(segment.data, segment.pos, min);
        int i = segment.pos + min;
        segment.pos = i;
        this.size -= min;
        if (i == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i, int i2) {
        Util.checkOffsetAndCount(bArr.length, i, i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.limit - segment.pos);
        System.arraycopy(segment.data, segment.pos, bArr, i, min);
        int i3 = segment.pos + min;
        segment.pos = i3;
        this.size -= min;
        if (i3 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // okio.Source
    public long read(Buffer buffer, long j) {
        if (buffer != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            ?? r0 = this.size;
            if (r0 == 0) {
                return -1L;
            }
            char c = j;
            if (j > r0) {
                c = r0;
            }
            buffer.write(this, (long) c);
            return c;
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        long j = this.size;
        if (j > 0) {
            sink.write(this, j);
        }
        return j;
    }

    public UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe(new UnsafeCursor());
    }

    public UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer == null) {
            unsafeCursor.buffer = this;
            unsafeCursor.readWrite = true;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        long j = this.size;
        if (j != 0) {
            Segment segment = this.head;
            int i = segment.pos;
            int i2 = segment.limit;
            byte[] bArr = segment.data;
            int i3 = i + 1;
            byte b = bArr[i];
            this.size = j - 1;
            if (i3 == i2) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        try {
            return readByteArray(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) {
        Util.checkOffsetAndCount(this.size, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) {
        return new ByteString(readByteArray(j));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0085, code lost:
        r0 = new okio.Buffer().writeDecimalLong((long) r9).writeByte((int) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0099, code lost:
        if (r12 != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009c, code lost:
        r0.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cb, code lost:
        throw new java.lang.NumberFormatException("Number too large: " + r0.readUtf8());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ea, code lost:
        if (r11 == 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ed, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x011c, code lost:
        throw new java.lang.NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + java.lang.Integer.toHexString(r0));
     */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    public Buffer readFrom(InputStream inputStream) {
        readFrom(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    public Buffer readFrom(InputStream inputStream, long j) {
        if (j >= 0) {
            readFrom(inputStream, j, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) {
        long j2 = this.size;
        if (j2 >= j) {
            buffer.write(this, j);
        } else {
            buffer.write(this, j2);
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < bArr.length) {
                int read = read(bArr, i2, bArr.length - i2);
                if (read == -1) {
                    throw new EOFException();
                }
                i = i2 + read;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() {
        char c;
        int i;
        boolean z;
        byte b;
        int i2;
        int i3;
        if (this.size != 0) {
            int i4 = 0;
            char c2 = 0;
            boolean z2 = false;
            do {
                Segment segment = this.head;
                byte[] bArr = segment.data;
                int i5 = segment.pos;
                int i6 = segment.limit;
                c = c2;
                i = i4;
                while (true) {
                    z = z2;
                    if (i5 >= i6) {
                        break;
                    }
                    b = bArr[i5];
                    if (b < 48 || b > 57) {
                        if (b >= 97 && b <= 102) {
                            i3 = b - 97;
                        } else if (b < 65 || b > 70) {
                            break;
                        } else {
                            i3 = b - 65;
                        }
                        i2 = i3 + 10;
                    } else {
                        i2 = b - 48;
                    }
                    if ((0 & c) != 0) {
                        Buffer writeByte = new Buffer().writeHexadecimalUnsignedLong((long) c).writeByte((int) b);
                        throw new NumberFormatException("Number too large: " + writeByte.readUtf8());
                    }
                    c = (c << 4) | i2;
                    i5++;
                    i++;
                }
                if (i == 0) {
                    throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b));
                }
                z = true;
                if (i5 == i6) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                } else {
                    segment.pos = i5;
                }
                if (z) {
                    break;
                }
                i4 = i;
                z2 = z;
                c2 = c;
            } while (this.head != null);
            this.size -= i;
            return c;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // okio.BufferedSource
    public int readInt() {
        long j = this.size;
        if (j < 4) {
            throw new IllegalStateException("size < 4: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        int i5 = i4 + 1;
        byte b3 = bArr[i4];
        int i6 = i5 + 1;
        byte b4 = bArr[i5];
        this.size = j - 4;
        if (i6 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i6;
        }
        return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() {
        long j = this.size;
        if (j < 8) {
            throw new IllegalStateException("size < 8: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        long j2 = bArr[i];
        int i4 = i3 + 1;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        long j7 = bArr[i7];
        int i9 = i8 + 1;
        long j8 = bArr[i8];
        int i10 = i9 + 1;
        long j9 = bArr[i9];
        this.size = j - 8;
        if (i10 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i10;
        }
        return ((j3 & 255) << 48) | ((j2 & 255) << 56) | ((j4 & 255) << 40) | ((j5 & 255) << 32) | ((j6 & 255) << 24) | ((j7 & 255) << 16) | ((j8 & 255) << 8) | (j9 & 255);
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() {
        long j = this.size;
        if (j < 2) {
            throw new IllegalStateException("size < 2: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        this.size = j - 2;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return (short) (((b & 255) << 8) | (b2 & 255));
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) {
        Util.checkOffsetAndCount(this.size, 0L, j);
        if (charset != null) {
            if (j > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
            } else if (j == 0) {
                return "";
            } else {
                Segment segment = this.head;
                if (segment.pos + j > segment.limit) {
                    return new String(readByteArray(j), charset);
                }
                String str = new String(segment.data, segment.pos, (int) j, charset);
                int i = (int) (segment.pos + j);
                segment.pos = i;
                this.size -= j;
                if (i == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        try {
            return readString(this.size, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public UnsafeCursor readUnsafe() {
        return readUnsafe(new UnsafeCursor());
    }

    public UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer == null) {
            unsafeCursor.buffer = this;
            unsafeCursor.readWrite = false;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        try {
            return readString(this.size, Util.UTF_8);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) {
        return readString(j, Util.UTF_8);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        int i;
        int i2;
        int i3;
        if (this.size != 0) {
            byte b = getByte(0L);
            if ((b & 128) == 0) {
                i3 = b & Byte.MAX_VALUE;
                i2 = 1;
                i = 0;
            } else if ((b & 224) == 192) {
                i3 = b & 31;
                i2 = 2;
                i = 128;
            } else if ((b & 240) == 224) {
                i3 = b & 15;
                i2 = 3;
                i = 2048;
            } else if ((b & 248) != 240) {
                skip(1L);
                return REPLACEMENT_CHARACTER;
            } else {
                i3 = b & 7;
                i2 = 4;
                i = 65536;
            }
            long j = i2;
            if (this.size < j) {
                throw new EOFException("size < " + i2 + ": " + this.size + " (to read code point prefixed 0x" + Integer.toHexString(b) + ")");
            }
            for (int i4 = 1; i4 < i2; i4++) {
                long j2 = i4;
                byte b2 = getByte(j2);
                if ((b2 & 192) != 128) {
                    skip(j2);
                    return REPLACEMENT_CHARACTER;
                }
                i3 = (i3 << 6) | (b2 & 63);
            }
            skip(j);
            return i3 > 1114111 ? REPLACEMENT_CHARACTER : ((i3 < 55296 || i3 > 57343) && i3 >= i) ? i3 : REPLACEMENT_CHARACTER;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            long j = this.size;
            return j != 0 ? readUtf8(j) : null;
        }
        return readUtf8Line(indexOf);
    }

    public String readUtf8Line(long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (getByte(j2) == 13) {
                String readUtf8 = readUtf8(j2);
                skip(2L);
                return readUtf8;
            }
        }
        String readUtf82 = readUtf8(j);
        skip(1L);
        return readUtf82;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) {
        Buffer buffer;
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        char c = 65535;
        if (j != Long.MAX_VALUE) {
            c = j + 1;
        }
        long indexOf = indexOf((byte) 10, 0L, c);
        if (indexOf != -1) {
            return readUtf8Line(indexOf);
        }
        if (c < size() && getByte(c - 1) == 13 && getByte(c) == 10) {
            return readUtf8Line(c);
        }
        copyTo(new Buffer(), 0L, Math.min(32L, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        return this.size >= j;
    }

    @Override // okio.BufferedSource
    public void require(long j) {
        if (this.size >= j) {
            return;
        }
        throw new EOFException();
    }

    List<Integer> segmentSizes() {
        if (this.head == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Segment segment = this.head;
        arrayList.add(Integer.valueOf(segment.limit - segment.pos));
        Segment segment2 = this.head;
        while (true) {
            segment2 = segment2.next;
            if (segment2 == this.head) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(segment2.limit - segment2.pos));
        }
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        Segment segment = this.head;
        if (segment == null) {
            return options.indexOf(ByteString.EMPTY);
        }
        ByteString[] byteStringArr = options.byteStrings;
        int length = byteStringArr.length;
        for (int i = 0; i < length; i++) {
            ByteString byteString = byteStringArr[i];
            if (this.size >= byteString.size() && rangeEquals(segment, segment.pos, byteString, 0, byteString.size())) {
                try {
                    skip(byteString.size());
                    return i;
                } catch (EOFException e) {
                    throw new AssertionError(e);
                }
            }
        }
        return -1;
    }

    public int selectPrefix(Options options) {
        Segment segment = this.head;
        ByteString[] byteStringArr = options.byteStrings;
        int length = byteStringArr.length;
        for (int i = 0; i < length; i++) {
            ByteString byteString = byteStringArr[i];
            int min = (int) Math.min(this.size, byteString.size());
            if (min == 0 || rangeEquals(segment, segment.pos, byteString, 0, min)) {
                return i;
            }
        }
        return -1;
    }

    public ByteString sha1() {
        return digest("SHA-1");
    }

    public ByteString sha256() {
        return digest("SHA-256");
    }

    public ByteString sha512() {
        return digest("SHA-512");
    }

    public long size() {
        return this.size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // okio.BufferedSource
    public void skip(long j) {
        Segment segment;
        while (j > 0) {
            if (this.head == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, segment.limit - segment.pos);
            long j2 = min;
            this.size -= j2;
            ?? r0 = j - j2;
            Segment segment2 = this.head;
            int i = segment2.pos + min;
            segment2.pos = i;
            j = r0;
            if (i == segment2.limit) {
                this.head = segment2.pop();
                SegmentPool.recycle(segment2);
                j = r0;
            }
        }
    }

    public ByteString snapshot() {
        long j = this.size;
        if (j <= 2147483647L) {
            return snapshot((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.size);
    }

    public ByteString snapshot(int i) {
        return i == 0 ? ByteString.EMPTY : new SegmentedByteString(this, i);
    }

    @Override // okio.Source
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r0.owner == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.Segment writableSegment(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = 1
            if (r0 < r1) goto L4e
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L4e
            r0 = r3
            okio.Segment r0 = r0.head
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L2a
            okio.Segment r0 = okio.SegmentPool.take()
            r5 = r0
            r0 = r3
            r1 = r5
            r0.head = r1
            r0 = r5
            r1 = r5
            r0.prev = r1
            r0 = r5
            r1 = r5
            r0.next = r1
            r0 = r5
            return r0
        L2a:
            r0 = r5
            okio.Segment r0 = r0.prev
            r6 = r0
            r0 = r6
            int r0 = r0.limit
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L44
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.owner
            if (r0 != 0) goto L4c
        L44:
            r0 = r6
            okio.Segment r1 = okio.SegmentPool.take()
            okio.Segment r0 = r0.push(r1)
            r5 = r0
        L4c:
            r0 = r5
            return r0
        L4e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.writableSegment(int):okio.Segment");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                Segment writableSegment = writableSegment(1);
                int min = Math.min(i, 8192 - writableSegment.limit);
                byteBuffer.get(writableSegment.data, writableSegment.limit, min);
                i -= min;
                writableSegment.limit += min;
            }
            this.size += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString) {
        if (byteString != null) {
            byteString.write(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            Util.checkOffsetAndCount(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                Segment writableSegment = writableSegment(1);
                int min = Math.min(i3 - i, 8192 - writableSegment.limit);
                System.arraycopy(bArr, i, writableSegment.data, writableSegment.limit, min);
                i += min;
                writableSegment.limit += min;
            }
            this.size += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r7 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [okio.Source] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // okio.BufferedSink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.BufferedSink write(okio.Source r6, long r7) {
        /*
            r5 = this;
        L0:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L29
            r0 = r6
            r1 = r5
            r2 = r7
            long r0 = r0.read(r1, r2)
            r9 = r0
            r0 = r9
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L21
            r0 = r7
            r1 = r9
            long r0 = r0 - r1
            r7 = r0
            goto L0
        L21:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L29:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.write(okio.Source, long):okio.BufferedSink");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // okio.Sink
    public void write(Buffer buffer, long j) {
        if (buffer != null) {
            if (buffer == this) {
                throw new IllegalArgumentException("source == this");
            }
            Util.checkOffsetAndCount(buffer.size, 0L, j);
            ?? r9 = j;
            while (r9 > 0) {
                Segment segment = buffer.head;
                if (r9 < segment.limit - segment.pos) {
                    Segment segment2 = this.head;
                    Segment segment3 = segment2 != null ? segment2.prev : null;
                    if (segment3 != null && segment3.owner) {
                        if ((segment3.limit + r9) - (segment3.shared ? 0 : segment3.pos) <= 8192) {
                            segment.writeTo(segment3, (int) r9);
                            buffer.size -= r9;
                            this.size += r9;
                            return;
                        }
                    }
                    buffer.head = segment.split((int) r9);
                }
                Segment segment4 = buffer.head;
                long j2 = segment4.limit - segment4.pos;
                buffer.head = segment4.pop();
                Segment segment5 = this.head;
                if (segment5 == null) {
                    this.head = segment4;
                    segment4.prev = segment4;
                    segment4.next = segment4;
                } else {
                    segment5.prev.push(segment4).compact();
                }
                buffer.size -= j2;
                this.size += j2;
                r9 -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    @Override // okio.BufferedSink
    public long writeAll(Source source) {
        if (source != null) {
            ?? r0 = 0;
            while (true) {
                char c = r0;
                long read = source.read(this, 8192L);
                if (read == -1) {
                    return c;
                }
                r0 = c + read;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    @Override // okio.BufferedSink
    public Buffer writeByte(int i) {
        Segment writableSegment = writableSegment(1);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        writableSegment.limit = i2 + 1;
        bArr[i2] = (byte) i;
        this.size++;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    @Override // okio.BufferedSink
    public Buffer writeDecimalLong(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return writeByte(48);
        }
        boolean z = false;
        int i2 = 1;
        char c = j;
        if (i < 0) {
            c = -j;
            if (c < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z = true;
        }
        if (c >= 100000000) {
            i2 = c < 1000000000000L ? c < 10000000000L ? c < 1000000000 ? 9 : 10 : c < 100000000000L ? 11 : 12 : c < 1000000000000000L ? c < 10000000000000L ? 13 : c < 100000000000000L ? 14 : 15 : c < 100000000000000000L ? c < 10000000000000000L ? 16 : 17 : c < 1000000000000000000L ? 18 : 19;
        } else if (c >= OkHttpUtils.DEFAULT_MILLISECONDS) {
            i2 = c < 1000000 ? c < 100000 ? 5 : 6 : c < 10000000 ? 7 : 8;
        } else if (c >= 100) {
            i2 = c < 1000 ? 3 : 4;
        } else if (c >= 10) {
            i2 = 2;
        }
        int i3 = i2;
        if (z) {
            i3 = i2 + 1;
        }
        Segment writableSegment = writableSegment(i3);
        byte[] bArr = writableSegment.data;
        int i4 = writableSegment.limit + i3;
        while (c != 0) {
            i4--;
            bArr[i4] = DIGITS[(int) (c % '\n')];
            c /= '\n';
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        writableSegment.limit += i3;
        this.size += i3;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        Segment writableSegment = writableSegment(numberOfTrailingZeros);
        byte[] bArr = writableSegment.data;
        int i = writableSegment.limit;
        ?? r9 = j;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = DIGITS[(int) (15 & r9)];
            r9 >>>= 4;
        }
        writableSegment.limit += numberOfTrailingZeros;
        this.size += numberOfTrailingZeros;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeInt(int i) {
        Segment writableSegment = writableSegment(4);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        writableSegment.limit = i5 + 1;
        this.size += 4;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeIntLe(int i) {
        return writeInt(Util.reverseBytesInt(i));
    }

    @Override // okio.BufferedSink
    public Buffer writeLong(long j) {
        Segment writableSegment = writableSegment(8);
        byte[] bArr = writableSegment.data;
        int i = writableSegment.limit;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        writableSegment.limit = i8 + 1;
        this.size += 8;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeLongLe(long j) {
        return writeLong(Util.reverseBytesLong(j));
    }

    @Override // okio.BufferedSink
    public Buffer writeShort(int i) {
        Segment writableSegment = writableSegment(2);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        writableSegment.limit = i3 + 1;
        this.size += 2;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeShortLe(int i) {
        return writeShort((int) Util.reverseBytesShort((short) i));
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i < 0) {
                throw new IllegalAccessError("beginIndex < 0: " + i);
            } else if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 <= str.length()) {
                if (charset == null) {
                    throw new IllegalArgumentException("charset == null");
                }
                if (charset.equals(Util.UTF_8)) {
                    return writeUtf8(str, i, i2);
                }
                byte[] bytes = str.substring(i, i2).getBytes(charset);
                return write(bytes, 0, bytes.length);
            } else {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    public Buffer writeTo(OutputStream outputStream) {
        return writeTo(outputStream, this.size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    public Buffer writeTo(OutputStream outputStream, long j) {
        if (outputStream != null) {
            Util.checkOffsetAndCount(this.size, 0L, j);
            Segment segment = this.head;
            while (j > 0) {
                int min = (int) Math.min((long) j, segment.limit - segment.pos);
                outputStream.write(segment.data, segment.pos, min);
                int i = segment.pos + min;
                segment.pos = i;
                long j2 = min;
                this.size -= j2;
                ?? r0 = j - j2;
                j = r0;
                if (i == segment.limit) {
                    Segment pop = segment.pop();
                    this.head = pop;
                    SegmentPool.recycle(segment);
                    segment = pop;
                    j = r0;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str, int i, int i2) {
        char charAt;
        if (str != null) {
            if (i < 0) {
                throw new IllegalArgumentException("beginIndex < 0: " + i);
            } else if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else {
                while (i < i2) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 128) {
                        Segment writableSegment = writableSegment(1);
                        byte[] bArr = writableSegment.data;
                        int i3 = writableSegment.limit - i;
                        int min = Math.min(i2, 8192 - i3);
                        bArr[i + i3] = (byte) charAt2;
                        i++;
                        while (i < min && (charAt = str.charAt(i)) < 128) {
                            bArr[i + i3] = (byte) charAt;
                            i++;
                        }
                        int i4 = writableSegment.limit;
                        int i5 = (i3 + i) - i4;
                        writableSegment.limit = i4 + i5;
                        this.size += i5;
                    } else {
                        if (charAt2 < 2048) {
                            writeByte((charAt2 >> 6) | 192);
                            writeByte((charAt2 & '?') | 128);
                        } else if (charAt2 < 55296 || charAt2 > 57343) {
                            writeByte((charAt2 >> '\f') | 224);
                            writeByte(((charAt2 >> 6) & 63) | 128);
                            writeByte((charAt2 & '?') | 128);
                        } else {
                            int i6 = i + 1;
                            char charAt3 = i6 < i2 ? str.charAt(i6) : (char) 0;
                            if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                                writeByte(63);
                                i = i6;
                            } else {
                                int i7 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                writeByte((i7 >> 18) | 240);
                                writeByte(((i7 >> 12) & 63) | 128);
                                writeByte(((i7 >> 6) & 63) | 128);
                                writeByte((i7 & 63) | 128);
                                i += 2;
                            }
                        }
                        i++;
                    }
                }
                return this;
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            } else {
                writeByte(63);
            }
        } else if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        } else {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        }
        return this;
    }
}
