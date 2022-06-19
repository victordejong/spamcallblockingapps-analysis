package okhttp3.internal.p578ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import p092c.AbstractC3206g;
import p092c.C3202f;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020!H\u0002J\u0016\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020!J\u000e\u0010(\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020!J\u000e\u0010)\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006*"}, m4298d2 = {"Lokhttp3/internal/ws/WebSocketWriter;", "Ljava/io/Closeable;", "isClient", "", "sink", "Lokio/BufferedSink;", "random", "Ljava/util/Random;", "perMessageDeflate", "noContextTakeover", "minimumDeflateSize", "", "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V", "maskCursor", "Lokio/Buffer$UnsafeCursor;", "maskKey", "", "messageBuffer", "Lokio/Buffer;", "messageDeflater", "Lokhttp3/internal/ws/MessageDeflater;", "getRandom", "()Ljava/util/Random;", "getSink", "()Lokio/BufferedSink;", "sinkBuffer", "writerClosed", EventConstants.CLOSE, "", "writeClose", "code", "", "reason", "Lokio/ByteString;", "writeControlFrame", "opcode", "payload", "writeMessageFrame", "formatOpcode", "data", "writePing", "writePong", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: okhttp3.internal.ws.WebSocketWriter */
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketWriter.class */
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final C3202f.C3203a maskCursor;
    private final byte[] maskKey;
    private final C3202f messageBuffer = new C3202f();
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final AbstractC3206g sink;
    private final C3202f sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z, AbstractC3206g sink, Random random, boolean z2, boolean z3, long j) {
        C18524p.m3840d(sink, "sink");
        C18524p.m3840d(random, "random");
        this.isClient = z;
        this.sink = sink;
        this.random = random;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        this.minimumDeflateSize = j;
        this.sinkBuffer = sink.mo39124b();
        this.maskKey = z ? new byte[4] : null;
        this.maskCursor = z ? new C3202f.C3203a() : null;
    }

    private final void writeControlFrame(int i, C3208i c3208i) throws IOException {
        if (!this.writerClosed) {
            int mo39173f = c3208i.mo39173f();
            if (!(((long) mo39173f) <= 125)) {
                throw new IllegalArgumentException("Payload size must be less than or equal to 125".toString());
            }
            this.sinkBuffer.mo39141c(i | 128);
            if (this.isClient) {
                this.sinkBuffer.mo39141c(mo39173f | 128);
                Random random = this.random;
                byte[] bArr = this.maskKey;
                C18524p.m3851a(bArr);
                random.nextBytes(bArr);
                this.sinkBuffer.mo39140c(this.maskKey);
                if (mo39173f > 0) {
                    long j = this.sinkBuffer.f11572b;
                    this.sinkBuffer.mo39144b(c3208i);
                    C3202f c3202f = this.sinkBuffer;
                    C3202f.C3203a c3203a = this.maskCursor;
                    C18524p.m3851a(c3203a);
                    c3202f.m39218a(c3203a);
                    this.maskCursor.m39189a(j);
                    WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            } else {
                this.sinkBuffer.mo39141c(mo39173f);
                this.sinkBuffer.mo39144b(c3208i);
            }
            this.sink.flush();
            return;
        }
        throw new IOException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    public final Random getRandom() {
        return this.random;
    }

    public final AbstractC3206g getSink() {
        return this.sink;
    }

    public final void writeClose(int i, C3208i c3208i) throws IOException {
        C3208i c3208i2 = C3208i.f11582c;
        if (i != 0 || c3208i != null) {
            if (i != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(i);
            }
            C3202f c3202f = new C3202f();
            c3202f.mo39137e(i);
            if (c3208i != null) {
                c3202f.mo39144b(c3208i);
            }
            c3208i2 = c3202f.mo39107q();
        }
        try {
            writeControlFrame(8, c3208i2);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int i, C3208i data) throws IOException {
        C18524p.m3840d(data, "data");
        if (!this.writerClosed) {
            this.messageBuffer.mo39144b(data);
            int i2 = i | 128;
            int i3 = i2;
            if (this.perMessageDeflate) {
                i3 = i2;
                if (data.mo39173f() >= this.minimumDeflateSize) {
                    MessageDeflater messageDeflater = this.messageDeflater;
                    MessageDeflater messageDeflater2 = messageDeflater;
                    if (messageDeflater == null) {
                        messageDeflater2 = new MessageDeflater(this.noContextTakeover);
                        this.messageDeflater = messageDeflater2;
                    }
                    messageDeflater2.deflate(this.messageBuffer);
                    i3 = i2 | 64;
                }
            }
            long j = this.messageBuffer.f11572b;
            this.sinkBuffer.mo39141c(i3);
            int i4 = this.isClient ? 128 : 0;
            if (j <= 125) {
                this.sinkBuffer.mo39141c(((int) j) | i4);
            } else if (j <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                this.sinkBuffer.mo39141c(i4 | WebSocketProtocol.PAYLOAD_SHORT);
                this.sinkBuffer.mo39137e((int) j);
            } else {
                this.sinkBuffer.mo39141c(i4 | 127);
                this.sinkBuffer.m39198i(j);
            }
            if (this.isClient) {
                Random random = this.random;
                byte[] bArr = this.maskKey;
                C18524p.m3851a(bArr);
                random.nextBytes(bArr);
                this.sinkBuffer.mo39140c(this.maskKey);
                if (j > 0) {
                    C3202f c3202f = this.messageBuffer;
                    C3202f.C3203a c3203a = this.maskCursor;
                    C18524p.m3851a(c3203a);
                    c3202f.m39218a(c3203a);
                    this.maskCursor.m39189a(0L);
                    WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            }
            this.sinkBuffer.write(this.messageBuffer, j);
            this.sink.mo39138d();
            return;
        }
        throw new IOException("closed");
    }

    public final void writePing(C3208i payload) throws IOException {
        C18524p.m3840d(payload, "payload");
        writeControlFrame(9, payload);
    }

    public final void writePong(C3208i payload) throws IOException {
        C18524p.m3840d(payload, "payload");
        writeControlFrame(10, payload);
    }
}
