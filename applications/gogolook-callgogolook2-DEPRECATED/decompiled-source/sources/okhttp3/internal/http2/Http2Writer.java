package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import p645m.AbstractC15173d;
import p645m.C15170c;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Writer.class */
public final class Http2Writer implements Closeable {
    public static final Logger logger = Logger.getLogger(Http2.class.getName());
    public final boolean client;
    public boolean closed;
    public final C15170c hpackBuffer = new C15170c();
    public final Hpack.Writer hpackWriter = new Hpack.Writer(this.hpackBuffer);
    public int maxFrameSize = 16384;
    public final AbstractC15173d sink;

    public Http2Writer(AbstractC15173d dVar, boolean z) {
        this.sink = dVar;
        this.client = z;
    }

    public static void writeMedium(AbstractC15173d dVar, int i) throws IOException {
        dVar.writeByte((i >>> 16) & 255);
        dVar.writeByte((i >>> 8) & 255);
        dVar.writeByte(i & 255);
    }

    public void applyAndAckSettings(Settings settings) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
                if (settings.getHeaderTableSize() != -1) {
                    this.hpackWriter.setHeaderTableSizeSetting(settings.getHeaderTableSize());
                }
                frameHeader(0, 0, (byte) 4, (byte) 1);
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.closed = true;
            this.sink.close();
        }
    }

    public void connectionPreface() throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            } else if (this.client) {
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Util.format(">> CONNECTION %s", Http2.CONNECTION_PREFACE.mo273b()));
                }
                this.sink.write(Http2.CONNECTION_PREFACE.mo266h());
                this.sink.flush();
            }
        }
    }

    public void data(boolean z, int i, C15170c cVar, int i2) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                byte b = 0;
                if (z) {
                    b = (byte) 1;
                }
                dataFrame(i, b, cVar, i2);
            } else {
                throw new IOException("closed");
            }
        }
    }

    public void dataFrame(int i, byte b, C15170c cVar, int i2) throws IOException {
        frameHeader(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.sink.write(cVar, i2);
        }
    }

    public void flush() throws IOException {
        synchronized (this) {
            if (!this.closed) {
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public void frameHeader(int i, int i2, byte b, byte b2) throws IOException {
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Http2.frameLog(false, i, i2, b, b2));
        }
        int i3 = this.maxFrameSize;
        if (i2 > i3) {
            Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            throw null;
        } else if ((Integer.MIN_VALUE & i) == 0) {
            writeMedium(this.sink, i2);
            this.sink.writeByte(b & 255);
            this.sink.writeByte(b2 & 255);
            this.sink.writeInt(i & Integer.MAX_VALUE);
        } else {
            Http2.illegalArgument("reserved bit set: %s", Integer.valueOf(i));
            throw null;
        }
    }

    public void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.httpCode != -1) {
                frameHeader(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.sink.writeInt(i);
                this.sink.writeInt(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.sink.write(bArr);
                }
                this.sink.flush();
            } else {
                Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
                throw null;
            }
        }
    }

    public void headers(boolean z, int i, List<Header> list) throws IOException {
        if (!this.closed) {
            this.hpackWriter.writeHeaders(list);
            long i2 = this.hpackBuffer.m348i();
            int min = (int) Math.min(this.maxFrameSize, i2);
            long j = min;
            int i3 = (i2 > j ? 1 : (i2 == j ? 0 : -1));
            byte b = i3 == 0 ? (byte) 4 : (byte) 0;
            byte b2 = b;
            if (z) {
                b2 = (byte) (b | 1);
            }
            frameHeader(i, min, (byte) 1, b2);
            this.sink.write(this.hpackBuffer, j);
            if (i3 > 0) {
                writeContinuationFrames(i, i2 - j);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    public int maxDataLength() {
        return this.maxFrameSize;
    }

    public void ping(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                frameHeader(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
                this.sink.writeInt(i);
                this.sink.writeInt(i2);
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public void pushPromise(int i, int i2, List<Header> list) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                this.hpackWriter.writeHeaders(list);
                long i3 = this.hpackBuffer.m348i();
                int min = (int) Math.min(this.maxFrameSize - 4, i3);
                long j = min;
                int i4 = (i3 > j ? 1 : (i3 == j ? 0 : -1));
                frameHeader(i, min + 4, (byte) 5, i4 == 0 ? (byte) 4 : (byte) 0);
                this.sink.writeInt(i2 & Integer.MAX_VALUE);
                this.sink.write(this.hpackBuffer, j);
                if (i4 > 0) {
                    writeContinuationFrames(i, i3 - j);
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public void rstStream(int i, ErrorCode errorCode) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.httpCode != -1) {
                frameHeader(i, 4, (byte) 3, (byte) 0);
                this.sink.writeInt(errorCode.httpCode);
                this.sink.flush();
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    public void settings(Settings settings) throws IOException {
        synchronized (this) {
            if (!this.closed) {
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
            } else {
                throw new IOException("closed");
            }
        }
    }

    public void synStream(boolean z, int i, int i2, List<Header> list) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                headers(z, i, list);
            } else {
                throw new IOException("closed");
            }
        }
    }

    public void windowUpdate(int i, long j) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
                throw null;
            } else {
                frameHeader(i, 4, (byte) 8, (byte) 0);
                this.sink.writeInt((int) j);
                this.sink.flush();
            }
        }
    }

    public final void writeContinuationFrames(int i, long j) throws IOException {
        while (j > 0) {
            int min = (int) Math.min(this.maxFrameSize, j);
            long j2 = min;
            j -= j2;
            frameHeader(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.sink.write(this.hpackBuffer, j2);
        }
    }
}
