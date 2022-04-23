package okio;

import java.util.zip.CRC32;
import java.util.zip.Deflater;
/* loaded from: classes2-dex2jar.jar:okio/GzipSink.class */
public final class GzipSink implements Sink {
    private boolean closed;
    private final CRC32 crc = new CRC32();
    private final Deflater deflater;
    private final DeflaterSink deflaterSink;
    private final BufferedSink sink;

    public GzipSink(Sink sink) {
        if (sink != null) {
            Deflater deflater = new Deflater(-1, true);
            this.deflater = deflater;
            BufferedSink buffer = Okio.buffer(sink);
            this.sink = buffer;
            this.deflaterSink = new DeflaterSink(buffer, deflater);
            writeHeader();
            return;
        }
        throw new IllegalArgumentException("sink == null");
    }

    private void updateCrc(Buffer buffer, long j) {
        Segment segment = buffer.head;
        while (j > 0) {
            int min = (int) Math.min(j, segment.limit - segment.pos);
            this.crc.update(segment.data, segment.pos, min);
            j -= min;
            segment = segment.next;
        }
    }

    private void writeFooter() {
        this.sink.writeIntLe((int) this.crc.getValue());
        this.sink.writeIntLe((int) this.deflater.getBytesRead());
    }

    private void writeHeader() {
        Buffer buffer = this.sink.buffer();
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    public void close() {
        Throwable th;
        Throwable th2;
        if (!this.closed) {
            Throwable th3 = null;
            try {
                this.deflaterSink.finishDeflate();
                writeFooter();
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

    public final Deflater deflater() {
        return this.deflater;
    }

    public void flush() {
        this.deflaterSink.flush();
    }

    public Timeout timeout() {
        return this.sink.timeout();
    }

    public void write(Buffer buffer, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (j != 0) {
            updateCrc(buffer, j);
            this.deflaterSink.write(buffer, j);
        }
    }
}
