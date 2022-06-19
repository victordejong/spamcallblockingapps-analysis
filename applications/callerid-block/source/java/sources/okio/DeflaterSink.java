package okio;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* loaded from: classes2-dex2jar.jar:okio/DeflaterSink.class */
public final class DeflaterSink implements Sink {
    private boolean closed;
    private final Deflater deflater;
    private final BufferedSink sink;

    public DeflaterSink(BufferedSink bufferedSink, Deflater deflater) {
        if (bufferedSink != null) {
            if (deflater == null) {
                throw new IllegalArgumentException("inflater == null");
            }
            this.sink = bufferedSink;
            this.deflater = deflater;
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    public DeflaterSink(Sink sink, Deflater deflater) {
        this(Okio.buffer(sink), deflater);
    }

    @IgnoreJRERequirement
    private void deflate(boolean z) {
        Segment writableSegment;
        Buffer buffer = this.sink.buffer();
        while (true) {
            writableSegment = buffer.writableSegment(1);
            Deflater deflater = this.deflater;
            byte[] bArr = writableSegment.data;
            int i = writableSegment.limit;
            int i2 = 8192 - i;
            int deflate = z ? deflater.deflate(bArr, i, i2, 2) : deflater.deflate(bArr, i, i2);
            if (deflate > 0) {
                writableSegment.limit += deflate;
                buffer.size += deflate;
                this.sink.emitCompleteSegments();
            } else if (this.deflater.needsInput()) {
                break;
            }
        }
        if (writableSegment.pos == writableSegment.limit) {
            buffer.head = writableSegment.pop();
            SegmentPool.recycle(writableSegment);
        }
    }

    public void close() {
        Throwable th;
        Throwable th2;
        if (this.closed) {
            return;
        }
        Throwable th3 = null;
        try {
            finishDeflate();
        } catch (Throwable th4) {
            th3 = th4;
        }
        try {
            this.deflater.end();
            th = th3;
        } catch (Throwable th5) {
            th = th3;
            if (th3 == null) {
                th = th5;
            }
        }
        try {
            this.sink.close();
            th2 = th;
        } catch (Throwable th6) {
            th2 = th;
            if (th == null) {
                th2 = th6;
            }
        }
        this.closed = true;
        if (th2 == null) {
            return;
        }
        Util.sneakyRethrow(th2);
    }

    public void finishDeflate() {
        this.deflater.finish();
        deflate(false);
    }

    public void flush() {
        deflate(true);
        this.sink.flush();
    }

    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.sink + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public void write(Buffer buffer, long j) {
        Util.checkOffsetAndCount(buffer.size, 0L, j);
        ?? r9 = j;
        while (r9 > 0) {
            Segment segment = buffer.head;
            int min = (int) Math.min((long) r9, segment.limit - segment.pos);
            this.deflater.setInput(segment.data, segment.pos, min);
            deflate(false);
            long j2 = min;
            buffer.size -= j2;
            int i = segment.pos + min;
            segment.pos = i;
            if (i == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            r9 -= j2;
        }
    }
}
