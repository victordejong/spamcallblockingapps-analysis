package okhttp3.internal.http2;

import c.f;
import c.g;
import com.appsflyer.internal.referrer.Payload;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\u0018�� :2\u00020\u0001:\u0001:B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\u0011H\u0016J\u0006\u0010\u0015\u001a\u00020\u0011J(\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ(\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ\u0006\u0010\u001e\u001a\u00020\u0011J&\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000fJ\u001e\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J$\u0010(\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*J\u0006\u0010,\u001a\u00020\u000fJ\u001e\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000fJ$\u00101\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u000f2\f\u00103\u001a\b\u0012\u0004\u0012\u00020+0*J\u0016\u00104\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%J\u000e\u00105\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u0013J\u0016\u00106\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00107\u001a\u000208J\u0018\u00109\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u000208H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006;"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "sink", "Lokio/BufferedSink;", "client", "", "(Lokio/BufferedSink;Z)V", "closed", "hpackBuffer", "Lokio/Buffer;", "hpackWriter", "Lokhttp3/internal/http2/Hpack$Writer;", "getHpackWriter", "()Lokhttp3/internal/http2/Hpack$Writer;", "maxFrameSize", "", "applyAndAckSettings", "", "peerSettings", "Lokhttp3/internal/http2/Settings;", EventConstants.CLOSE, "connectionPreface", "data", "outFinished", "streamId", Payload.SOURCE, "byteCount", "dataFrame", "flags", "buffer", "flush", "frameHeader", "length", "type", "goAway", "lastGoodStreamId", "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "debugData", "", "headers", "headerBlock", "", "Lokhttp3/internal/http2/Header;", "maxDataLength", "ping", "ack", "payload1", "payload2", "pushPromise", "promisedStreamId", "requestHeaders", "rstStream", "settings", "windowUpdate", "windowSizeIncrement", "", "writeContinuationFrames", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Http2Writer.class */
public final class Http2Writer implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final f hpackBuffer;
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize = 16384;
    private final g sink;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Writer$Companion;", "", "()V", "logger", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Http2Writer$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Http2Writer(g sink, boolean z) {
        p.d(sink, "sink");
        this.sink = sink;
        this.client = z;
        f fVar = new f();
        this.hpackBuffer = fVar;
        this.hpackWriter = new Hpack.Writer(0, false, fVar, 3, null);
    }

    private final void writeContinuationFrames(int i, long j) throws IOException {
        while (j > 0) {
            long min = Math.min(this.maxFrameSize, j);
            j -= min;
            frameHeader(i, (int) min, 9, j == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, min);
        }
    }

    public final void applyAndAckSettings(Settings peerSettings) throws IOException {
        synchronized (this) {
            p.d(peerSettings, "peerSettings");
            if (!this.closed) {
                this.maxFrameSize = peerSettings.getMaxFrameSize(this.maxFrameSize);
                if (peerSettings.getHeaderTableSize() != -1) {
                    this.hpackWriter.resizeHeaderTable(peerSettings.getHeaderTableSize());
                }
                frameHeader(0, 0, 4, 1);
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            this.closed = true;
            this.sink.close();
        }
    }

    public final void connectionPreface() throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            } else if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.d(), new Object[0]));
                }
                this.sink.b(Http2.CONNECTION_PREFACE);
                this.sink.flush();
            }
        }
    }

    public final void data(boolean z, int i, f fVar, int i2) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                dataFrame(i, z ? 1 : 0, fVar, i2);
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void dataFrame(int i, int i2, f fVar, int i3) throws IOException {
        frameHeader(i, i3, 0, i2);
        if (i3 > 0) {
            g gVar = this.sink;
            p.a(fVar);
            gVar.write(fVar, i3);
        }
    }

    public final void flush() throws IOException {
        synchronized (this) {
            if (!this.closed) {
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void frameHeader(int i, int i2, int i3, int i4) throws IOException {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.INSTANCE.frameLog(false, i, i2, i3, i4));
        }
        boolean z = true;
        if (i2 <= this.maxFrameSize) {
            if ((Integer.MIN_VALUE & i) != 0) {
                z = false;
            }
            if (z) {
                Util.writeMedium(this.sink, i2);
                this.sink.c(i3 & 255);
                this.sink.c(i4 & 255);
                this.sink.g(i & Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException("reserved bit set: ".concat(String.valueOf(i)).toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i2).toString());
    }

    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final void goAway(int i, ErrorCode errorCode, byte[] debugData) throws IOException {
        synchronized (this) {
            p.d(errorCode, "errorCode");
            p.d(debugData, "debugData");
            if (!this.closed) {
                boolean z = false;
                if (errorCode.getHttpCode() != -1) {
                    frameHeader(0, debugData.length + 8, 7, 0);
                    this.sink.g(i);
                    this.sink.g(errorCode.getHttpCode());
                    if (debugData.length == 0) {
                        z = true;
                    }
                    if (!z) {
                        this.sink.c(debugData);
                    }
                    this.sink.flush();
                } else {
                    throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void headers(boolean z, int i, List<Header> headerBlock) throws IOException {
        synchronized (this) {
            p.d(headerBlock, "headerBlock");
            if (!this.closed) {
                this.hpackWriter.writeHeaders(headerBlock);
                long j = this.hpackBuffer.f6289b;
                long min = Math.min(this.maxFrameSize, j);
                int i2 = (j > min ? 1 : (j == min ? 0 : -1));
                int i3 = i2 == 0 ? 4 : 0;
                int i4 = i3;
                if (z) {
                    i4 = i3 | 1;
                }
                frameHeader(i, (int) min, 1, i4);
                this.sink.write(this.hpackBuffer, min);
                if (i2 > 0) {
                    writeContinuationFrames(i, j - min);
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final void ping(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                frameHeader(0, 8, 6, z ? 1 : 0);
                this.sink.g(i);
                this.sink.g(i2);
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void pushPromise(int i, int i2, List<Header> requestHeaders) throws IOException {
        synchronized (this) {
            p.d(requestHeaders, "requestHeaders");
            if (!this.closed) {
                this.hpackWriter.writeHeaders(requestHeaders);
                long j = this.hpackBuffer.f6289b;
                int min = (int) Math.min(this.maxFrameSize - 4, j);
                long j2 = min;
                int i3 = (j > j2 ? 1 : (j == j2 ? 0 : -1));
                frameHeader(i, min + 4, 5, i3 == 0 ? 4 : 0);
                this.sink.g(i2 & Integer.MAX_VALUE);
                this.sink.write(this.hpackBuffer, j2);
                if (i3 > 0) {
                    writeContinuationFrames(i, j - j2);
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void rstStream(int i, ErrorCode errorCode) throws IOException {
        synchronized (this) {
            p.d(errorCode, "errorCode");
            if (!this.closed) {
                if (errorCode.getHttpCode() != -1) {
                    frameHeader(i, 4, 3, 0);
                    this.sink.g(errorCode.getHttpCode());
                    this.sink.flush();
                } else {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void settings(Settings settings) throws IOException {
        synchronized (this) {
            p.d(settings, "settings");
            if (!this.closed) {
                int i = 0;
                frameHeader(0, settings.size() * 6, 4, 0);
                while (i < 10) {
                    if (settings.isSet(i)) {
                        this.sink.e(i != 4 ? i != 7 ? i : 4 : 3);
                        this.sink.g(settings.get(i));
                    }
                    i++;
                }
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void windowUpdate(int i, long j) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                if (j != 0 && j <= 2147483647L) {
                    frameHeader(i, 4, 8, 0);
                    this.sink.g((int) j);
                    this.sink.flush();
                } else {
                    throw new IllegalArgumentException("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: ".concat(String.valueOf(j)).toString());
                }
            } else {
                throw new IOException("closed");
            }
        }
    }
}
