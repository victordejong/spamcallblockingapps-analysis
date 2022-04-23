package okhttp3.internal.p012ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B7\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010'\u001a\u00020\u0014\u0012\u0006\u0010&\u001a\u00020\u0014\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b4\u00105J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\nJ\u001d\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\nJ\u0015\u0010\u0011\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010\u0016R\u0016\u0010'\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u0016R\u0019\u0010)\u001a\u00020(8\u0006@\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0019\u0010.\u001a\u00020-8\u0006@\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010\u001fR\u0016\u00103\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010\u0016¨\u00066"}, d2 = {"Lokhttp3/internal/ws/WebSocketWriter;", "Ljava/io/Closeable;", "", "close", "()V", "", "code", "Lokio/ByteString;", "reason", "writeClose", "(ILokio/ByteString;)V", "opcode", "payload", "writeControlFrame", "formatOpcode", "data", "writeMessageFrame", "writePing", "(Lokio/ByteString;)V", "writePong", "", "isClient", "Z", "Lokio/Buffer$UnsafeCursor;", "maskCursor", "Lokio/Buffer$UnsafeCursor;", "", "maskKey", "[B", "Lokio/Buffer;", "messageBuffer", "Lokio/Buffer;", "Lokhttp3/internal/ws/MessageDeflater;", "messageDeflater", "Lokhttp3/internal/ws/MessageDeflater;", "", "minimumDeflateSize", "J", "noContextTakeover", "perMessageDeflate", "Ljava/util/Random;", "random", "Ljava/util/Random;", "getRandom", "()Ljava/util/Random;", "Lokio/BufferedSink;", "sink", "Lokio/BufferedSink;", "getSink", "()Lokio/BufferedSink;", "sinkBuffer", "writerClosed", "<init>", "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: okhttp3.internal.ws.WebSocketWriter */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketWriter.class */
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final Buffer.UnsafeCursor maskCursor;
    private final byte[] maskKey;
    private final Buffer messageBuffer = new Buffer();
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    @NotNull
    private final Random random;
    @NotNull
    private final BufferedSink sink;
    private final Buffer sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z, @NotNull BufferedSink sink, @NotNull Random random, boolean z2, boolean z3, long j) {
        Intrinsics.m1830e(sink, "sink");
        Intrinsics.m1830e(random, "random");
        this.isClient = z;
        this.sink = sink;
        this.random = random;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        this.minimumDeflateSize = j;
        this.sinkBuffer = this.sink.mo76c();
        Buffer.UnsafeCursor unsafeCursor = null;
        this.maskKey = this.isClient ? new byte[4] : null;
        this.maskCursor = this.isClient ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    private final void writeControlFrame(int i, ByteString byteString) throws IOException {
        if (!this.writerClosed) {
            int C = byteString.m178C();
            if (((long) C) <= 125) {
                this.sinkBuffer.m222D0(i | 128);
                if (this.isClient) {
                    this.sinkBuffer.m222D0(C | 128);
                    Random random = this.random;
                    byte[] bArr = this.maskKey;
                    Intrinsics.m1832c(bArr);
                    random.nextBytes(bArr);
                    this.sinkBuffer.m224B0(this.maskKey);
                    if (C > 0) {
                        long v0 = this.sinkBuffer.m188v0();
                        this.sinkBuffer.m184z0(byteString);
                        Buffer buffer = this.sinkBuffer;
                        Buffer.UnsafeCursor unsafeCursor = this.maskCursor;
                        Intrinsics.m1832c(unsafeCursor);
                        buffer.m209N(unsafeCursor);
                        this.maskCursor.m181d(v0);
                        WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                        this.maskCursor.close();
                    }
                } else {
                    this.sinkBuffer.m222D0(C);
                    this.sinkBuffer.m184z0(byteString);
                }
                this.sink.flush();
                return;
            }
            throw new IllegalArgumentException("Payload size must be less than or equal to 125".toString());
        }
        throw new IOException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    @NotNull
    public final Random getRandom() {
        return this.random;
    }

    @NotNull
    public final BufferedSink getSink() {
        return this.sink;
    }

    public final void writeClose(int i, @Nullable ByteString byteString) throws IOException {
        ByteString byteString2 = ByteString.f24136i;
        if (!(i == 0 && byteString == null)) {
            if (i != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(i);
            }
            Buffer buffer = new Buffer();
            buffer.m215J0(i);
            if (byteString != null) {
                buffer.m184z0(byteString);
            }
            byteString2 = buffer.mo80U();
        }
        try {
            writeControlFrame(8, byteString2);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int i, @NotNull ByteString data) throws IOException {
        Intrinsics.m1830e(data, "data");
        if (!this.writerClosed) {
            this.messageBuffer.m184z0(data);
            int i2 = 128;
            int i3 = i | 128;
            int i4 = i3;
            if (this.perMessageDeflate) {
                i4 = i3;
                if (data.m178C() >= this.minimumDeflateSize) {
                    MessageDeflater messageDeflater = this.messageDeflater;
                    if (messageDeflater == null) {
                        messageDeflater = new MessageDeflater(this.noContextTakeover);
                        this.messageDeflater = messageDeflater;
                    }
                    messageDeflater.deflate(this.messageBuffer);
                    i4 = i3 | 64;
                }
            }
            long v0 = this.messageBuffer.m188v0();
            this.sinkBuffer.m222D0(i4);
            if (!this.isClient) {
                i2 = 0;
            }
            if (v0 <= 125) {
                this.sinkBuffer.m222D0(((int) v0) | i2);
            } else if (v0 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                this.sinkBuffer.m222D0(i2 | WebSocketProtocol.PAYLOAD_SHORT);
                this.sinkBuffer.m215J0((int) v0);
            } else {
                this.sinkBuffer.m222D0(i2 | 127);
                this.sinkBuffer.m217I0(v0);
            }
            if (this.isClient) {
                Random random = this.random;
                byte[] bArr = this.maskKey;
                Intrinsics.m1832c(bArr);
                random.nextBytes(bArr);
                this.sinkBuffer.m224B0(this.maskKey);
                if (v0 > 0) {
                    Buffer buffer = this.messageBuffer;
                    Buffer.UnsafeCursor unsafeCursor = this.maskCursor;
                    Intrinsics.m1832c(unsafeCursor);
                    buffer.m209N(unsafeCursor);
                    this.maskCursor.m181d(0L);
                    WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            }
            this.sinkBuffer.write(this.messageBuffer, v0);
            this.sink.mo89r();
            return;
        }
        throw new IOException("closed");
    }

    public final void writePing(@NotNull ByteString payload) throws IOException {
        Intrinsics.m1830e(payload, "payload");
        writeControlFrame(9, payload);
    }

    public final void writePong(@NotNull ByteString payload) throws IOException {
        Intrinsics.m1830e(payload, "payload");
        writeControlFrame(10, payload);
    }
}
