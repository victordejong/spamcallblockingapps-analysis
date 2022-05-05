package okhttp3.internal.http2;

import com.google.android.gms.common.api.Api;
import com.google.firebase.iid.MessengerIpcClient;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� L2\u00020\u0001:\u0001LB\u0017\u0012\u0006\u0010H\u001a\u00020G\u0012\u0006\u0010;\u001a\u00020\n¢\u0006\u0004\bJ\u0010KJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\bJ/\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0015\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\bJ-\u0010\u001a\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u001bJ%\u0010!\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J+\u0010&\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\f¢\u0006\u0004\b(\u0010)J%\u0010-\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\f2\u0006\u0010,\u001a\u00020\f¢\u0006\u0004\b-\u0010.J+\u00101\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f2\f\u00100\u001a\b\u0012\u0004\u0012\u00020$0#¢\u0006\u0004\b1\u00102J\u001d\u00103\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b3\u00104J\u0015\u00105\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u0002¢\u0006\u0004\b5\u0010\u0006J\u001d\u00108\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u00107\u001a\u000206¢\u0006\u0004\b8\u00109J\u001f\u0010:\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0010\u001a\u000206H\u0002¢\u0006\u0004\b:\u00109R\u0016\u0010;\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010=\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010<R\u0016\u0010>\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0019\u0010A\u001a\u00020@8\u0006@\u0006¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010H\u001a\u00020G8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010I¨\u0006M"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "Lokhttp3/internal/http2/Settings;", "peerSettings", "", "applyAndAckSettings", "(Lokhttp3/internal/http2/Settings;)V", "close", "()V", "connectionPreface", "", "outFinished", "", "streamId", "Lokio/Buffer;", "source", "byteCount", "data", "(ZILokio/Buffer;I)V", "flags", "buffer", "dataFrame", "(IILokio/Buffer;I)V", "flush", Name.LENGTH, "type", "frameHeader", "(IIII)V", "lastGoodStreamId", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "", "debugData", "goAway", "(ILokhttp3/internal/http2/ErrorCode;[B)V", "", "Lokhttp3/internal/http2/Header;", "headerBlock", "headers", "(ZILjava/util/List;)V", "maxDataLength", "()I", MessengerIpcClient.KEY_ACK, "payload1", "payload2", "ping", "(ZII)V", "promisedStreamId", "requestHeaders", "pushPromise", "(IILjava/util/List;)V", "rstStream", "(ILokhttp3/internal/http2/ErrorCode;)V", "settings", "", "windowSizeIncrement", "windowUpdate", "(IJ)V", "writeContinuationFrames", "client", "Z", "closed", "hpackBuffer", "Lokio/Buffer;", "Lokhttp3/internal/http2/Hpack$Writer;", "hpackWriter", "Lokhttp3/internal/http2/Hpack$Writer;", "getHpackWriter", "()Lokhttp3/internal/http2/Hpack$Writer;", "maxFrameSize", "I", "Lokio/BufferedSink;", "sink", "Lokio/BufferedSink;", "<init>", "(Lokio/BufferedSink;Z)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Writer.class */
public final class Http2Writer implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final Buffer hpackBuffer;
    @NotNull
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize = Http2.INITIAL_MAX_FRAME_SIZE;
    private final BufferedSink sink;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/http2/Http2Writer$Companion;", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Writer$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Http2Writer(@NotNull BufferedSink sink, boolean z) {
        Intrinsics.m1830e(sink, "sink");
        this.sink = sink;
        this.client = z;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.hpackWriter = new Hpack.Writer(0, false, buffer, 3, null);
    }

    private final void writeContinuationFrames(int i, long j) throws IOException {
        while (j > 0) {
            long min = Math.min(this.maxFrameSize, j);
            j -= min;
            frameHeader(i, (int) min, 9, j == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, min);
        }
    }

    public final void applyAndAckSettings(@NotNull C2445Settings peerSettings) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(peerSettings, "peerSettings");
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
    public void close() throws IOException {
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
                if (logger.isLoggable(Level.FINE)) {
                    Logger logger2 = logger;
                    logger2.fine(Util.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.mo40o(), new Object[0]));
                }
                this.sink.mo91h0(Http2.CONNECTION_PREFACE);
                this.sink.flush();
            }
        }
    }

    public final void data(boolean z, int i, @Nullable Buffer buffer, int i2) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                int i3 = 0;
                if (z) {
                    i3 = 1;
                }
                dataFrame(i, i3, buffer, i2);
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void dataFrame(int i, int i2, @Nullable Buffer buffer, int i3) throws IOException {
        frameHeader(i, i3, 0, i2);
        if (i3 > 0) {
            BufferedSink bufferedSink = this.sink;
            Intrinsics.m1832c(buffer);
            bufferedSink.write(buffer, i3);
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
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Http2.INSTANCE.frameLog(false, i, i2, i3, i4));
        }
        boolean z = true;
        if (i2 <= this.maxFrameSize) {
            if ((((int) 2147483648L) & i) != 0) {
                z = false;
            }
            if (z) {
                Util.writeMedium(this.sink, i2);
                this.sink.mo100A(i3 & 255);
                this.sink.mo100A(i4 & 255);
                this.sink.mo87u(i & Api.BaseClientBuilder.API_PRIORITY_OTHER);
                return;
            }
            throw new IllegalArgumentException(("reserved bit set: " + i).toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i2).toString());
    }

    @NotNull
    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final void goAway(int i, @NotNull ErrorCode errorCode, @NotNull byte[] debugData) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(errorCode, "errorCode");
            Intrinsics.m1830e(debugData, "debugData");
            if (!this.closed) {
                boolean z = false;
                if (errorCode.getHttpCode() != -1) {
                    frameHeader(0, debugData.length + 8, 7, 0);
                    this.sink.mo87u(i);
                    this.sink.mo87u(errorCode.getHttpCode());
                    if (debugData.length == 0) {
                        z = true;
                    }
                    if (!z) {
                        this.sink.mo92g0(debugData);
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

    public final void headers(boolean z, int i, @NotNull List<Header> headerBlock) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(headerBlock, "headerBlock");
            if (!this.closed) {
                this.hpackWriter.writeHeaders(headerBlock);
                long v0 = this.hpackBuffer.m188v0();
                long min = Math.min(this.maxFrameSize, v0);
                int i2 = (v0 > min ? 1 : (v0 == min ? 0 : -1));
                int i3 = i2 == 0 ? 4 : 0;
                int i4 = i3;
                if (z) {
                    i4 = i3 | 1;
                }
                frameHeader(i, (int) min, 1, i4);
                this.sink.write(this.hpackBuffer, min);
                if (i2 > 0) {
                    writeContinuationFrames(i, v0 - min);
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
                this.sink.mo87u(i);
                this.sink.mo87u(i2);
                this.sink.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void pushPromise(int i, int i2, @NotNull List<Header> requestHeaders) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(requestHeaders, "requestHeaders");
            if (!this.closed) {
                this.hpackWriter.writeHeaders(requestHeaders);
                long v0 = this.hpackBuffer.m188v0();
                int min = (int) Math.min(this.maxFrameSize - 4, v0);
                long j = min;
                int i3 = (v0 > j ? 1 : (v0 == j ? 0 : -1));
                frameHeader(i, min + 4, 5, i3 == 0 ? 4 : 0);
                this.sink.mo87u(i2 & Api.BaseClientBuilder.API_PRIORITY_OTHER);
                this.sink.write(this.hpackBuffer, j);
                if (i3 > 0) {
                    writeContinuationFrames(i, v0 - j);
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void rstStream(int i, @NotNull ErrorCode errorCode) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(errorCode, "errorCode");
            if (!this.closed) {
                if (errorCode.getHttpCode() != -1) {
                    frameHeader(i, 4, 3, 0);
                    this.sink.mo87u(errorCode.getHttpCode());
                    this.sink.flush();
                } else {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void settings(@NotNull C2445Settings settings) throws IOException {
        synchronized (this) {
            Intrinsics.m1830e(settings, "settings");
            if (!this.closed) {
                int i = 0;
                frameHeader(0, settings.size() * 6, 4, 0);
                while (i < 10) {
                    if (settings.isSet(i)) {
                        this.sink.mo88s(i != 4 ? i != 7 ? i : 4 : 3);
                        this.sink.mo87u(settings.get(i));
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
                    this.sink.mo87u((int) j);
                    this.sink.flush();
                } else {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
                }
            } else {
                throw new IOException("closed");
            }
        }
    }
}
