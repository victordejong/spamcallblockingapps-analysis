package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Writer.class */
final class Http2Writer implements Closeable {
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final Buffer hpackBuffer;
    final Hpack.Writer hpackWriter;
    private int maxFrameSize = 16384;
    private final BufferedSink sink;

    public Http2Writer(BufferedSink bufferedSink, boolean z) {
        this.sink = bufferedSink;
        this.client = z;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.hpackWriter = new Hpack.Writer(buffer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeContinuationFrames(int r7, long r8) {
        /*
            r6 = this;
        L0:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L50
            r0 = r6
            int r0 = r0.maxFrameSize
            long r0 = (long) r0
            r1 = r8
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r10
            long r0 = (long) r0
            r11 = r0
            r0 = r8
            r1 = r11
            long r0 = r0 - r1
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L2c
            r0 = 4
            r13 = r0
            r0 = r13
            r14 = r0
            goto L33
        L2c:
            r0 = 0
            r13 = r0
            r0 = r13
            r14 = r0
        L33:
            r0 = r6
            r1 = r7
            r2 = r10
            r3 = 9
            r4 = r14
            r0.frameHeader(r1, r2, r3, r4)
            r0 = r6
            okio.BufferedSink r0 = r0.sink
            r1 = r6
            okio.Buffer r1 = r1.hpackBuffer
            r2 = r11
            r0.write(r1, r2)
            goto L0
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Writer.writeContinuationFrames(int, long):void");
    }

    private static void writeMedium(BufferedSink bufferedSink, int i) {
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    public void applyAndAckSettings(Settings settings) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
            if (settings.getHeaderTableSize() != -1) {
                this.hpackWriter.setHeaderTableSizeSetting(settings.getHeaderTableSize());
            }
            frameHeader(0, 0, (byte) 4, (byte) 1);
            this.sink.flush();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.closed = true;
            this.sink.close();
        }
    }

    public void connectionPreface() {
        synchronized (this) {
            if (!this.closed) {
                if (!this.client) {
                    return;
                }
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION %s", Http2.CONNECTION_PREFACE.hex()));
                }
                this.sink.write(Http2.CONNECTION_PREFACE.toByteArray());
                this.sink.flush();
                return;
            }
            throw new IOException("closed");
        }
    }

    public void data(boolean z, int i, Buffer buffer, int i2) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            byte b = 0;
            if (z) {
                b = (byte) 1;
            }
            dataFrame(i, b, buffer, i2);
        }
    }

    void dataFrame(int i, byte b, Buffer buffer, int i2) {
        frameHeader(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.sink.write(buffer, i2);
        }
    }

    public void flush() {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.sink.flush();
        }
    }

    public void frameHeader(int i, int i2, byte b, byte b2) {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.frameLog(false, i, i2, b, b2));
        }
        int i3 = this.maxFrameSize;
        if (i2 <= i3) {
            if ((Integer.MIN_VALUE & i) != 0) {
                throw Http2.illegalArgument("reserved bit set: %s", Integer.valueOf(i));
            }
            writeMedium(this.sink, i2);
            this.sink.writeByte(b & 255);
            this.sink.writeByte(b2 & 255);
            this.sink.writeInt(i & Integer.MAX_VALUE);
            return;
        }
        throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
    }

    public void goAway(int i, ErrorCode errorCode, byte[] bArr) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.httpCode == -1) {
                throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
            }
            frameHeader(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.sink.writeInt(i);
            this.sink.writeInt(errorCode.httpCode);
            if (bArr.length > 0) {
                this.sink.write(bArr);
            }
            this.sink.flush();
        }
    }

    public void headers(int i, List<Header> list) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            headers(false, i, list);
        }
    }

    void headers(boolean z, int i, List<Header> list) {
        if (!this.closed) {
            this.hpackWriter.writeHeaders(list);
            long size = this.hpackBuffer.size();
            int min = (int) Math.min(this.maxFrameSize, size);
            long j = min;
            int i2 = (size > j ? 1 : (size == j ? 0 : -1));
            byte b = i2 == 0 ? (byte) 4 : (byte) 0;
            byte b2 = b;
            if (z) {
                b2 = (byte) (b | 1);
            }
            frameHeader(i, min, (byte) 1, b2);
            this.sink.write(this.hpackBuffer, j);
            if (i2 <= 0) {
                return;
            }
            writeContinuationFrames(i, size - j);
            return;
        }
        throw new IOException("closed");
    }

    public int maxDataLength() {
        return this.maxFrameSize;
    }

    public void ping(boolean z, int i, int i2) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            frameHeader(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.sink.writeInt(i);
            this.sink.writeInt(i2);
            this.sink.flush();
        }
    }

    public void pushPromise(int i, int i2, List<Header> list) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.hpackWriter.writeHeaders(list);
            long size = this.hpackBuffer.size();
            int min = (int) Math.min(this.maxFrameSize - 4, size);
            long j = min;
            int i3 = (size > j ? 1 : (size == j ? 0 : -1));
            frameHeader(i, min + 4, (byte) 5, i3 == 0 ? (byte) 4 : (byte) 0);
            this.sink.writeInt(i2 & Integer.MAX_VALUE);
            this.sink.write(this.hpackBuffer, j);
            if (i3 > 0) {
                writeContinuationFrames(i, size - j);
            }
        }
    }

    public void rstStream(int i, ErrorCode errorCode) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.httpCode == -1) {
                throw new IllegalArgumentException();
            }
            frameHeader(i, 4, (byte) 3, (byte) 0);
            this.sink.writeInt(errorCode.httpCode);
            this.sink.flush();
        }
    }

    public void settings(Settings settings) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            int i = 0;
            frameHeader(0, settings.size() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (settings.isSet(i)) {
                    this.sink.writeShort(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.sink.writeInt(settings.get(i));
                }
                i++;
            }
            this.sink.flush();
        }
    }

    public void synReply(boolean z, int i, List<Header> list) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            headers(z, i, list);
        }
    }

    public void synStream(boolean z, int i, int i2, List<Header> list) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            headers(z, i, list);
        }
    }

    public void windowUpdate(int i, long j) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            }
            frameHeader(i, 4, (byte) 8, (byte) 0);
            this.sink.writeInt((int) j);
            this.sink.flush();
        }
    }
}
