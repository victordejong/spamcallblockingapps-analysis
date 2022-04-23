package okio;

import android.support.p001v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
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
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.cmc.BodyPartID;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
/* loaded from: classes2-dex2jar.jar:okio/Buffer.class */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    private static final byte[] DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    static final int REPLACEMENT_CHARACTER = 65533;
    @Nullable
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
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.buffer = null;
            this.segment = null;
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public long expandBuffer(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: " + i);
            } else if (i > 8192) {
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i);
            } else if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            } else if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            } else {
                long j = this.buffer.size;
                Segment writableSegment = this.buffer.writableSegment(i);
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
            if (this.offset != this.buffer.size) {
                return this.offset == -1 ? seek(0L) : seek(this.offset + (this.end - this.start));
            }
            throw new IllegalStateException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v41, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r7v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 4 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long resizeBuffer(long r7) {
            /*
                Method dump skipped, instructions count: 350
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.UnsafeCursor.resizeBuffer(long):long");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v61, types: [long] */
        /* JADX WARN: Type inference failed for: r0v85 */
        /* JADX WARN: Type inference failed for: r19v3, types: [long] */
        /* JADX WARN: Type inference failed for: r19v5, types: [long] */
        /* JADX WARN: Type inference failed for: r19v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int seek(long r10) {
            /*
                Method dump skipped, instructions count: 463
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.UnsafeCursor.seek(long):int");
        }
    }

    private ByteString digest(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            if (this.head != null) {
                instance.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                Segment segment = this.head;
                while (true) {
                    segment = segment.next;
                    if (segment == this.head) {
                        break;
                    }
                    instance.update(segment.data, segment.pos, segment.limit - segment.pos);
                }
            }
            return ByteString.m231of(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac instance = Mac.getInstance(str);
            instance.init(new SecretKeySpec(byteString.toByteArray(), str));
            if (this.head != null) {
                instance.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                Segment segment = this.head;
                while (true) {
                    segment = segment.next;
                    if (segment == this.head) {
                        break;
                    }
                    instance.update(segment.data, segment.pos, segment.limit - segment.pos);
                }
            }
            return ByteString.m231of(instance.doFinal());
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
            i4 = i4;
            segment = segment;
            int i5 = i;
            if (i == i4) {
                segment = segment.next;
                bArr = segment.data;
                i5 = segment.pos;
                i4 = segment.limit;
            }
            if (bArr[i5] != byteString.getByte(i2)) {
                return false;
            }
            i = i5 + 1;
            i2++;
        }
        return true;
    }

    private void readFrom(InputStream inputStream, long j, boolean z) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j > 0 || z) {
                Segment writableSegment = writableSegment(1);
                int read = inputStream.read(writableSegment.data, writableSegment.limit, (int) Math.min(j, 8192 - writableSegment.limit));
                if (read != -1) {
                    writableSegment.limit += read;
                    long j2 = read;
                    this.size += j2;
                    j -= j2;
                } else if (!z) {
                    throw new EOFException();
                } else {
                    return;
                }
            } else {
                return;
            }
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
        buffer.head = this.head.sharedCopy();
        Segment segment = buffer.head;
        Segment segment2 = buffer.head;
        Segment segment3 = buffer.head;
        segment2.prev = segment3;
        segment.next = segment3;
        Segment segment4 = this.head;
        while (true) {
            segment4 = segment4.next;
            if (segment4 != this.head) {
                buffer.head.prev.push(segment4.sharedCopy());
            } else {
                buffer.size = this.size;
                return buffer;
            }
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long completeSegmentByteCount() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.size
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r5
            okio.Segment r0 = r0.head
            okio.Segment r0 = r0.prev
            r8 = r0
            r0 = r6
            r9 = r0
            r0 = r8
            int r0 = r0.limit
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 >= r1) goto L_0x003a
            r0 = r6
            r9 = r0
            r0 = r8
            boolean r0 = r0.owner
            if (r0 == 0) goto L_0x003a
            r0 = r6
            r1 = r8
            int r1 = r1.limit
            r2 = r8
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r9 = r0
        L_0x003a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.completeSegmentByteCount():long");
    }

    public Buffer copyTo(OutputStream outputStream) throws IOException {
        return copyTo(outputStream, 0L, this.size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.Buffer copyTo(java.io.OutputStream r8, long r9, long r11) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r8
            if (r0 != 0) goto L_0x000e
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "out == null"
            r1.<init>(r2)
            throw r0
        L_0x000e:
            r0 = r7
            long r0 = r0.size
            r1 = r9
            r2 = r11
            okio.Util.checkOffsetAndCount(r0, r1, r2)
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0021
            r0 = r7
            return r0
        L_0x0021:
            r0 = r7
            okio.Segment r0 = r0.head
            r13 = r0
        L_0x0027:
            r0 = r13
            r14 = r0
            r0 = r9
            r15 = r0
            r0 = r11
            r17 = r0
            r0 = r9
            r1 = r13
            int r1 = r1.limit
            r2 = r13
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x005c
            r0 = r9
            r1 = r13
            int r1 = r1.limit
            r2 = r13
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r9 = r0
            r0 = r13
            okio.Segment r0 = r0.next
            r13 = r0
            goto L_0x0027
        L_0x005c:
            r0 = r17
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00a2
            r0 = r14
            int r0 = r0.pos
            long r0 = (long) r0
            r1 = r15
            long r0 = r0 + r1
            int r0 = (int) r0
            r19 = r0
            r0 = r14
            int r0 = r0.limit
            r1 = r19
            int r0 = r0 - r1
            long r0 = (long) r0
            r1 = r17
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r20 = r0
            r0 = r8
            r1 = r14
            byte[] r1 = r1.data
            r2 = r19
            r3 = r20
            r0.write(r1, r2, r3)
            r0 = r17
            r1 = r20
            long r1 = (long) r1
            long r0 = r0 - r1
            r17 = r0
            r0 = r14
            okio.Segment r0 = r0.next
            r14 = r0
            r0 = 0
            r15 = r0
            goto L_0x005c
        L_0x00a2:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.copyTo(java.io.OutputStream, long, long):okio.Buffer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.Buffer copyTo(okio.Buffer r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.copyTo(okio.Buffer, long, long):okio.Buffer");
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() {
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        if (this.size != buffer.size) {
            return false;
        }
        long j = 0;
        if (this.size == 0) {
            return true;
        }
        Segment segment = this.head;
        Segment segment2 = buffer.head;
        int i = segment.pos;
        int i2 = segment2.pos;
        while (j < this.size) {
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
            if (i == segment.limit) {
                segment = segment.next;
                i = segment.pos;
            }
            if (i2 == segment2.limit) {
                segment2 = segment2.next;
                i2 = segment2.pos;
            }
            j += min;
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
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte getByte(long r8) {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.size
            r1 = r8
            r2 = 1
            okio.Util.checkOffsetAndCount(r0, r1, r2)
            r0 = r7
            long r0 = r0.size
            r1 = r8
            long r0 = r0 - r1
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0046
            r0 = r7
            okio.Segment r0 = r0.head
            r10 = r0
        L_0x0019:
            r0 = r10
            int r0 = r0.limit
            r1 = r10
            int r1 = r1.pos
            int r0 = r0 - r1
            long r0 = (long) r0
            r11 = r0
            r0 = r8
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0039
            r0 = r10
            byte[] r0 = r0.data
            r1 = r10
            int r1 = r1.pos
            r2 = r8
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        L_0x0039:
            r0 = r8
            r1 = r11
            long r0 = r0 - r1
            r8 = r0
            r0 = r10
            okio.Segment r0 = r0.next
            r10 = r0
            goto L_0x0019
        L_0x0046:
            r0 = r8
            r1 = r7
            long r1 = r1.size
            long r0 = r0 - r1
            r8 = r0
            r0 = r7
            okio.Segment r0 = r0.head
            r10 = r0
        L_0x0052:
            r0 = r10
            okio.Segment r0 = r0.prev
            r13 = r0
            r0 = r8
            r1 = r13
            int r1 = r1.limit
            r2 = r13
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            r0 = r13
            r10 = r0
            r0 = r11
            r8 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0052
            r0 = r13
            byte[] r0 = r0.data
            r1 = r13
            int r1 = r1.pos
            r2 = r11
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.getByte(long):byte");
    }

    public int hashCode() {
        Segment segment;
        Segment segment2 = this.head;
        if (segment2 == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment2.limit;
            for (int i3 = segment2.pos; i3 < i2; i3++) {
                i = (i * 31) + segment2.data[i3];
            }
            segment = segment2.next;
            segment2 = segment;
            i = i;
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
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r15v3, types: [long] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v2, types: [long] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long indexOf(byte r10, long r11, long r13) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.indexOf(byte, long, long):long");
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        return indexOf(byteString, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r16v3, types: [long] */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long indexOf(okio.ByteString r8, long r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.indexOf(okio.ByteString, long):long");
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long indexOfElement(okio.ByteString r6, long r7) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.indexOfElement(okio.ByteString, long):long");
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
                if (Buffer.this.size > 0) {
                    return Buffer.this.readByte() & 255;
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
    public int read(ByteBuffer byteBuffer) throws IOException {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.limit - segment.pos);
        byteBuffer.put(segment.data, segment.pos, min);
        segment.pos += min;
        this.size -= min;
        if (segment.pos == segment.limit) {
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
        segment.pos += min;
        this.size -= min;
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(okio.Buffer r6, long r7) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L_0x000f
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "sink == null"
            r1.<init>(r2)
            throw r0
        L_0x000f:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0037
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "byteCount < 0: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0037:
            r0 = r5
            long r0 = r0.size
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0044
            r0 = -1
            return r0
        L_0x0044:
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = r5
            long r1 = r1.size
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0056
            r0 = r5
            long r0 = r0.size
            r9 = r0
        L_0x0056:
            r0 = r6
            r1 = r5
            r2 = r9
            r0.write(r1, r2)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.read(okio.Buffer, long):long");
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
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
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = true;
        return unsafeCursor;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        byte[] bArr = segment.data;
        int i3 = i + 1;
        byte b = bArr[i];
        this.size--;
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
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
    public byte[] readByteArray(long j) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) throws EOFException {
        return new ByteString(readByteArray(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x016c A[EDGE_INSN: B:52:0x016c->B:45:0x016c ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [long] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    public Buffer readFrom(InputStream inputStream) throws IOException {
        readFrom(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    public Buffer readFrom(InputStream inputStream, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        readFrom(inputStream, j, false);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) throws EOFException {
        if (this.size < j) {
            buffer.write(this, this.size);
            throw new EOFException();
        } else {
            buffer.write(this, j);
        }
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0157 A[EDGE_INSN: B:45:0x0157->B:43:0x0157 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v36, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() {
        if (this.size < 4) {
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
        this.size -= 4;
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
        if (this.size < 8) {
            throw new IllegalStateException("size < 8: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((readInt() & BodyPartID.bodyIdMax) << 32) | (BodyPartID.bodyIdMax & readInt());
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        long j = bArr[i];
        int i4 = i3 + 1;
        long j2 = bArr[i3];
        int i5 = i4 + 1;
        long j3 = bArr[i4];
        int i6 = i5 + 1;
        long j4 = bArr[i5];
        int i7 = i6 + 1;
        long j5 = bArr[i6];
        int i8 = i7 + 1;
        long j6 = bArr[i7];
        int i9 = i8 + 1;
        long j7 = bArr[i8];
        int i10 = i9 + 1;
        long j8 = bArr[i9];
        this.size -= 8;
        if (i10 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i10;
        }
        return (j8 & 255) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8);
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() {
        if (this.size < 2) {
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
        this.size -= 2;
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
    public String readString(long j, Charset charset) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else if (j == 0) {
            return "";
        } else {
            Segment segment = this.head;
            if (segment.pos + j > segment.limit) {
                return new String(readByteArray(j), charset);
            }
            String str = new String(segment.data, segment.pos, (int) j, charset);
            segment.pos = (int) (segment.pos + j);
            this.size -= j;
            if (segment.pos == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            return str;
        }
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
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = false;
        return unsafeCursor;
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
    public String readUtf8(long j) throws EOFException {
        return readString(j, Util.UTF_8);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.size == 0) {
            throw new EOFException();
        }
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
        } else if ((b & 248) == 240) {
            i3 = b & 7;
            i2 = 4;
            i = 65536;
        } else {
            skip(1L);
            return REPLACEMENT_CHARACTER;
        }
        long j = i2;
        if (this.size < j) {
            throw new EOFException("size < " + i2 + ": " + this.size + " (to read code point prefixed 0x" + Integer.toHexString(b) + ")");
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte b2 = getByte(j2);
            if ((b2 & 192) == 128) {
                i3 = (i3 << 6) | (b2 & 63);
            } else {
                skip(j2);
                return REPLACEMENT_CHARACTER;
            }
        }
        skip(j);
        return i3 > 1114111 ? REPLACEMENT_CHARACTER : ((i3 < 55296 || i3 > 57343) && i3 >= i) ? i3 : REPLACEMENT_CHARACTER;
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws EOFException {
        long indexOf = indexOf((byte) 10);
        if (indexOf != -1) {
            return readUtf8Line(indexOf);
        }
        return this.size != 0 ? readUtf8(this.size) : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String readUtf8Line(long j) throws EOFException {
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
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        long j2 = Long.MAX_VALUE;
        if (j != Long.MAX_VALUE) {
            j2 = j + 1;
        }
        long indexOf = indexOf((byte) 10, 0L, j2);
        if (indexOf != -1) {
            return readUtf8Line(indexOf);
        }
        if (j2 < size() && getByte(j2 - 1) == 13 && getByte(j2) == 10) {
            return readUtf8Line(j2);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32L, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        return this.size >= j;
    }

    @Override // okio.BufferedSource
    public void require(long j) throws EOFException {
        if (this.size < j) {
            throw new EOFException();
        }
    }

    List<Integer> segmentSizes() {
        if (this.head == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.head.limit - this.head.pos));
        Segment segment = this.head;
        while (true) {
            segment = segment.next;
            if (segment == this.head) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(segment.limit - segment.pos));
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

    /* JADX INFO: Access modifiers changed from: package-private */
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
        return digest(McElieceCCA2KeyGenParameterSpec.SHA512);
    }

    public long size() {
        return this.size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skip(long r7) throws java.io.EOFException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0084
            r0 = r6
            okio.Segment r0 = r0.head
            if (r0 != 0) goto L_0x0015
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0015:
            r0 = r7
            r1 = r6
            okio.Segment r1 = r1.head
            int r1 = r1.limit
            r2 = r6
            okio.Segment r2 = r2.head
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r9 = r0
            r0 = r6
            long r0 = r0.size
            r10 = r0
            r0 = r9
            long r0 = (long) r0
            r12 = r0
            r0 = r6
            r1 = r10
            r2 = r12
            long r1 = r1 - r2
            r0.size = r1
            r0 = r7
            r1 = r12
            long r0 = r0 - r1
            r12 = r0
            r0 = r6
            okio.Segment r0 = r0.head
            r14 = r0
            r0 = r14
            r1 = r14
            int r1 = r1.pos
            r2 = r9
            int r1 = r1 + r2
            r0.pos = r1
            r0 = r12
            r7 = r0
            r0 = r6
            okio.Segment r0 = r0.head
            int r0 = r0.pos
            r1 = r6
            okio.Segment r1 = r1.head
            int r1 = r1.limit
            if (r0 != r1) goto L_0x0000
            r0 = r6
            okio.Segment r0 = r0.head
            r14 = r0
            r0 = r6
            r1 = r14
            okio.Segment r1 = r1.pop()
            r0.head = r1
            r0 = r14
            okio.SegmentPool.recycle(r0)
            r0 = r12
            r7 = r0
            goto L_0x0000
        L_0x0084:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.skip(long):void");
    }

    public ByteString snapshot() {
        if (this.size <= 2147483647L) {
            return snapshot((int) this.size);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
        if (r0.owner == false) goto L_0x005a;
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
            if (r0 < r1) goto L_0x0066
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 <= r1) goto L_0x000f
            goto L_0x0066
        L_0x000f:
            r0 = r3
            okio.Segment r0 = r0.head
            if (r0 != 0) goto L_0x003c
            r0 = r3
            okio.Segment r1 = okio.SegmentPool.take()
            r0.head = r1
            r0 = r3
            okio.Segment r0 = r0.head
            r5 = r0
            r0 = r3
            okio.Segment r0 = r0.head
            r6 = r0
            r0 = r3
            okio.Segment r0 = r0.head
            r7 = r0
            r0 = r6
            r1 = r7
            r0.prev = r1
            r0 = r5
            r1 = r7
            r0.next = r1
            r0 = r7
            return r0
        L_0x003c:
            r0 = r3
            okio.Segment r0 = r0.head
            okio.Segment r0 = r0.prev
            r5 = r0
            r0 = r5
            int r0 = r0.limit
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L_0x005a
            r0 = r5
            r7 = r0
            r0 = r5
            boolean r0 = r0.owner
            if (r0 != 0) goto L_0x0063
        L_0x005a:
            r0 = r5
            okio.Segment r1 = okio.SegmentPool.take()
            okio.Segment r0 = r0.push(r1)
            r7 = r0
        L_0x0063:
            r0 = r7
            return r0
        L_0x0066:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.writableSegment(int):okio.Segment");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
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

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.write(this);
        return this;
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
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
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

    @Override // okio.BufferedSink
    public BufferedSink write(Source source, long j) throws IOException {
        while (j > 0) {
            long read = source.read(this, j);
            if (read == -1) {
                throw new EOFException();
            }
            j -= read;
        }
        return this;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException("source == null");
        } else if (buffer == this) {
            throw new IllegalArgumentException("source == this");
        } else {
            Util.checkOffsetAndCount(buffer.size, 0L, j);
            while (j > 0) {
                if (j < buffer.head.limit - buffer.head.pos) {
                    Segment segment = this.head != null ? this.head.prev : null;
                    if (segment != null && segment.owner) {
                        if ((segment.limit + j) - (segment.shared ? 0 : segment.pos) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            buffer.head.writeTo(segment, (int) j);
                            buffer.size -= j;
                            this.size += j;
                            return;
                        }
                    }
                    buffer.head = buffer.head.split((int) j);
                }
                Segment segment2 = buffer.head;
                long j2 = segment2.limit - segment2.pos;
                buffer.head = segment2.pop();
                if (this.head == null) {
                    this.head = segment2;
                    Segment segment3 = this.head;
                    Segment segment4 = this.head;
                    Segment segment5 = this.head;
                    segment4.prev = segment5;
                    segment3.next = segment5;
                } else {
                    this.head.prev.push(segment2).compact();
                }
                buffer.size -= j2;
                this.size += j2;
                j -= j2;
            }
        }
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            j += read;
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
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // okio.BufferedSink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.Buffer writeDecimalLong(long r7) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.writeDecimalLong(long):okio.Buffer");
    }

    @Override // okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        Segment writableSegment = writableSegment(numberOfTrailingZeros);
        byte[] bArr = writableSegment.data;
        int i = writableSegment.limit;
        for (int i2 = (writableSegment.limit + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = DIGITS[(int) (15 & j)];
            j >>>= 4;
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
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(Util.UTF_8)) {
            return writeUtf8(str, i, i2);
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    public Buffer writeTo(OutputStream outputStream) throws IOException {
        return writeTo(outputStream, this.size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.Buffer writeTo(java.io.OutputStream r8, long r9) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r8
            if (r0 != 0) goto L_0x000e
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "out == null"
            r1.<init>(r2)
            throw r0
        L_0x000e:
            r0 = r7
            long r0 = r0.size
            r1 = 0
            r2 = r9
            okio.Util.checkOffsetAndCount(r0, r1, r2)
            r0 = r7
            okio.Segment r0 = r0.head
            r11 = r0
        L_0x001d:
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0099
            r0 = r9
            r1 = r11
            int r1 = r1.limit
            r2 = r11
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r12 = r0
            r0 = r8
            r1 = r11
            byte[] r1 = r1.data
            r2 = r11
            int r2 = r2.pos
            r3 = r12
            r0.write(r1, r2, r3)
            r0 = r11
            r1 = r11
            int r1 = r1.pos
            r2 = r12
            int r1 = r1 + r2
            r0.pos = r1
            r0 = r7
            long r0 = r0.size
            r13 = r0
            r0 = r12
            long r0 = (long) r0
            r15 = r0
            r0 = r7
            r1 = r13
            r2 = r15
            long r1 = r1 - r2
            r0.size = r1
            r0 = r9
            r1 = r15
            long r0 = r0 - r1
            r15 = r0
            r0 = r15
            r9 = r0
            r0 = r11
            int r0 = r0.pos
            r1 = r11
            int r1 = r1.limit
            if (r0 != r1) goto L_0x001d
            r0 = r11
            okio.Segment r0 = r0.pop()
            r17 = r0
            r0 = r7
            r1 = r17
            r0.head = r1
            r0 = r11
            okio.SegmentPool.recycle(r0)
            r0 = r17
            r11 = r0
            r0 = r15
            r9 = r0
            goto L_0x001d
        L_0x0099:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.writeTo(java.io.OutputStream, long):okio.Buffer");
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str, int i, int i2) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
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
                    i++;
                    bArr[i + i3] = (byte) charAt2;
                    while (i < min && (charAt = str.charAt(i)) < 128) {
                        bArr[i + i3] = (byte) charAt;
                        i++;
                    }
                    int i4 = (i3 + i) - writableSegment.limit;
                    writableSegment.limit += i4;
                    this.size += i4;
                } else if (charAt2 < 2048) {
                    writeByte((charAt2 >> 6) | 192);
                    writeByte((charAt2 & '?') | 128);
                    i++;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    writeByte((charAt2 >> '\f') | 224);
                    writeByte(((charAt2 >> 6) & 63) | 128);
                    writeByte((charAt2 & '?') | 128);
                    i++;
                } else {
                    int i5 = i + 1;
                    char charAt3 = i5 < i2 ? str.charAt(i5) : (char) 0;
                    if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                        writeByte(63);
                        i = i5;
                    } else {
                        int i6 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                        writeByte((i6 >> 18) | 240);
                        writeByte(((i6 >> 12) & 63) | 128);
                        writeByte(((i6 >> 6) & 63) | 128);
                        writeByte((i6 & 63) | 128);
                        i += 2;
                    }
                }
            }
            return this;
        }
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
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }
}
