package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* loaded from: classes2-dex2jar.jar:okio/InflaterSource.class */
public final class InflaterSource implements Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    private final Inflater inflater;
    private final BufferedSource source;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        if (bufferedSource == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        } else {
            this.source = bufferedSource;
            this.inflater = inflater;
        }
    }

    public InflaterSource(Source source, Inflater inflater) {
        this(Okio.buffer(source), inflater);
    }

    private void releaseInflatedBytes() throws IOException {
        if (this.bufferBytesHeldByInflater != 0) {
            int remaining = this.bufferBytesHeldByInflater - this.inflater.getRemaining();
            this.bufferBytesHeldByInflater -= remaining;
            this.source.skip(remaining);
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            this.inflater.end();
            this.closed = true;
            this.source.close();
        }
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        boolean refill;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.closed) {
            throw new IllegalStateException("closed");
        } else if (i == 0) {
            return 0L;
        } else {
            do {
                refill = refill();
                try {
                    Segment writableSegment = buffer.writableSegment(1);
                    int inflate = this.inflater.inflate(writableSegment.data, writableSegment.limit, (int) Math.min(j, 8192 - writableSegment.limit));
                    if (inflate > 0) {
                        writableSegment.limit += inflate;
                        long j2 = inflate;
                        buffer.size += j2;
                        return j2;
                    }
                    if (!this.inflater.finished() && !this.inflater.needsDictionary()) {
                    }
                    releaseInflatedBytes();
                    if (writableSegment.pos != writableSegment.limit) {
                        return -1L;
                    }
                    buffer.head = writableSegment.pop();
                    SegmentPool.recycle(writableSegment);
                    return -1L;
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            } while (!refill);
            throw new EOFException("source exhausted prematurely");
        }
    }

    public boolean refill() throws IOException {
        if (!this.inflater.needsInput()) {
            return false;
        }
        releaseInflatedBytes();
        if (this.inflater.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.source.exhausted()) {
            return true;
        } else {
            Segment segment = this.source.buffer().head;
            this.bufferBytesHeldByInflater = segment.limit - segment.pos;
            this.inflater.setInput(segment.data, segment.pos, this.bufferBytesHeldByInflater);
            return false;
        }
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }
}
