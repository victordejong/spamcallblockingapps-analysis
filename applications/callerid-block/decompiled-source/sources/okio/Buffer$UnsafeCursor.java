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
        } else if (i <= 8192) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            } else if (this.readWrite) {
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
            } else {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
        } else {
            throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i);
        }
    }

    public final int next() {
        long j = this.offset;
        if (j != this.buffer.size) {
            return seek(j == -1 ? 0L : j + (this.end - this.start));
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long resizeBuffer(long r7) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer$UnsafeCursor.resizeBuffer(long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4, types: [long] */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int seek(long r10) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer$UnsafeCursor.seek(long):int");
    }
}
