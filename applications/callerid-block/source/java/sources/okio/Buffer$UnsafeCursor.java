package okio;

import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:okio/Buffer$UnsafeCursor.class */
public final class Buffer$UnsafeCursor implements Closeable {
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

    public final long expandBuffer(int i) {
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

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final int next() {
        long j = this.offset;
        if (j != this.buffer.size) {
            return seek(j == -1 ? (char) 0 : j + (this.end - this.start));
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final long resizeBuffer(long j) {
        Buffer buffer = this.buffer;
        if (buffer != null) {
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            ?? r0 = buffer.size;
            if (j <= r0) {
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
                    int i = segment.limit;
                    ?? r03 = i - segment.pos;
                    if (r03 > r02) {
                        segment.limit = (int) (i - r02);
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
            } else if (j > r0) {
                char c3 = j - r0;
                boolean z = true;
                while (c3 > 0) {
                    Segment writableSegment = this.buffer.writableSegment(1);
                    int min = (int) Math.min((long) c3, 8192 - writableSegment.limit);
                    int i2 = writableSegment.limit + min;
                    writableSegment.limit = i2;
                    ?? r04 = c3 - min;
                    c3 = r04;
                    if (z) {
                        this.segment = writableSegment;
                        this.offset = r0;
                        this.data = writableSegment.data;
                        this.start = i2 - min;
                        this.end = i2;
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

    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    public final int seek(long j) {
        char c;
        char c2;
        Segment segment;
        if (j >= -1) {
            Buffer buffer = this.buffer;
            char c3 = buffer.size;
            if (j <= c3) {
                if (j == -1 || j == c3) {
                    this.segment = null;
                    this.offset = j;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                    return -1;
                }
                Segment segment2 = buffer.head;
                Segment segment3 = this.segment;
                if (segment3 != null) {
                    c = this.offset - (this.start - segment3.pos);
                    if (c > j) {
                        c3 = c;
                        c = 0;
                        segment2 = segment3;
                        segment3 = segment2;
                    }
                } else {
                    segment3 = segment2;
                    c = 0;
                }
                char c4 = c3;
                if (c3 - j > j - c) {
                    Segment segment4 = segment3;
                    while (true) {
                        Segment segment5 = segment4;
                        int i = segment5.limit;
                        int i2 = segment5.pos;
                        c2 = c;
                        segment = segment5;
                        if (j < (i - i2) + c) {
                            break;
                        }
                        c += i - i2;
                        segment4 = segment5.next;
                    }
                } else {
                    while (c4 > j) {
                        segment2 = segment2.prev;
                        c4 -= segment2.limit - segment2.pos;
                    }
                    segment = segment2;
                    c2 = c4;
                }
                Segment segment6 = segment;
                if (this.readWrite) {
                    segment6 = segment;
                    if (segment.shared) {
                        Segment unsharedCopy = segment.unsharedCopy();
                        Buffer buffer2 = this.buffer;
                        if (buffer2.head == segment) {
                            buffer2.head = unsharedCopy;
                        }
                        segment6 = segment.push(unsharedCopy);
                        segment6.prev.pop();
                    }
                }
                this.segment = segment6;
                this.offset = j;
                this.data = segment6.data;
                int i3 = segment6.pos + ((int) (j - c2));
                this.start = i3;
                int i4 = segment6.limit;
                this.end = i4;
                return i4 - i3;
            }
        }
        throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j), Long.valueOf(this.buffer.size)));
    }
}
