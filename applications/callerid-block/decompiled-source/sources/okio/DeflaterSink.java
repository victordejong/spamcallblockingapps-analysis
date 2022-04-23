package okio;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* loaded from: classes2-dex2jar.jar:okio/DeflaterSink.class */
public final class DeflaterSink implements Sink {
    private boolean closed;
    private final Deflater deflater;
    private final BufferedSink sink;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeflaterSink(BufferedSink bufferedSink, Deflater deflater) {
        if (bufferedSink == null) {
            throw new IllegalArgumentException("source == null");
        } else if (deflater != null) {
            this.sink = bufferedSink;
            this.deflater = deflater;
        } else {
            throw new IllegalArgumentException("inflater == null");
        }
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
        if (!this.closed) {
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
                th = th5;
                th = th3;
                if (th3 == null) {
                }
            }
            try {
                this.sink.close();
                th2 = th;
            } catch (Throwable th6) {
                th2 = th6;
                th2 = th;
                if (th == null) {
                }
            }
            this.closed = true;
            if (th2 != null) {
                Util.sneakyRethrow(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    public void write(Buffer buffer, long j) {
        Util.checkOffsetAndCount(buffer.size, 0L, j);
        while (j > 0) {
            Segment segment = buffer.head;
            int min = (int) Math.min(j, segment.limit - segment.pos);
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
            j -= j2;
        }
    }
}
