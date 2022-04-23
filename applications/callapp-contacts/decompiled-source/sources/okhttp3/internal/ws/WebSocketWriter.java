package okhttp3.internal.ws;

import c.f;
import c.g;
import c.i;
import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020!H\u0002J\u0016\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020!J\u000e\u0010(\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020!J\u000e\u0010)\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006*"}, d2 = {"Lokhttp3/internal/ws/WebSocketWriter;", "Ljava/io/Closeable;", "isClient", "", "sink", "Lokio/BufferedSink;", "random", "Ljava/util/Random;", "perMessageDeflate", "noContextTakeover", "minimumDeflateSize", "", "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V", "maskCursor", "Lokio/Buffer$UnsafeCursor;", "maskKey", "", "messageBuffer", "Lokio/Buffer;", "messageDeflater", "Lokhttp3/internal/ws/MessageDeflater;", "getRandom", "()Ljava/util/Random;", "getSink", "()Lokio/BufferedSink;", "sinkBuffer", "writerClosed", EventConstants.CLOSE, "", "writeClose", "code", "", "reason", "Lokio/ByteString;", "writeControlFrame", "opcode", "payload", "writeMessageFrame", "formatOpcode", "data", "writePing", "writePong", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketWriter.class */
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final f.a maskCursor;
    private final byte[] maskKey;
    private final f messageBuffer = new f();
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final g sink;
    private final f sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z, g sink, Random random, boolean z2, boolean z3, long j) {
        p.d(sink, "sink");
        p.d(random, "random");
        this.isClient = z;
        this.sink = sink;
        this.random = random;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        this.minimumDeflateSize = j;
        this.sinkBuffer = sink.b();
        f.a aVar = null;
        this.maskKey = z ? new byte[4] : null;
        this.maskCursor = z ? new f.a() : aVar;
    }

    private final void writeControlFrame(int i, i iVar) throws IOException {
        if (!this.writerClosed) {
            int f = iVar.f();
            if (((long) f) <= 125) {
                this.sinkBuffer.c(i | 128);
                if (this.isClient) {
                    this.sinkBuffer.c(f | 128);
                    Random random = this.random;
                    byte[] bArr = this.maskKey;
                    p.a(bArr);
                    random.nextBytes(bArr);
                    this.sinkBuffer.c(this.maskKey);
                    if (f > 0) {
                        long j = this.sinkBuffer.f6289b;
                        this.sinkBuffer.b(iVar);
                        f fVar = this.sinkBuffer;
                        f.a aVar = this.maskCursor;
                        p.a(aVar);
                        fVar.a(aVar);
                        this.maskCursor.a(j);
                        WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                        this.maskCursor.close();
                    }
                } else {
                    this.sinkBuffer.c(f);
                    this.sinkBuffer.b(iVar);
                }
                this.sink.flush();
                return;
            }
            throw new IllegalArgumentException("Payload size must be less than or equal to 125".toString());
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

    public final g getSink() {
        return this.sink;
    }

    public final void writeClose(int i, i iVar) throws IOException {
        i iVar2 = i.f6296c;
        if (!(i == 0 && iVar == null)) {
            if (i != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(i);
            }
            f fVar = new f();
            fVar.e(i);
            if (iVar != null) {
                fVar.b(iVar);
            }
            iVar2 = fVar.q();
        }
        try {
            writeControlFrame(8, iVar2);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int i, i data) throws IOException {
        p.d(data, "data");
        if (!this.writerClosed) {
            this.messageBuffer.b(data);
            int i2 = 128;
            int i3 = i | 128;
            int i4 = i3;
            if (this.perMessageDeflate) {
                i4 = i3;
                if (data.f() >= this.minimumDeflateSize) {
                    MessageDeflater messageDeflater = this.messageDeflater;
                    MessageDeflater messageDeflater2 = messageDeflater;
                    if (messageDeflater == null) {
                        messageDeflater2 = new MessageDeflater(this.noContextTakeover);
                        this.messageDeflater = messageDeflater2;
                    }
                    messageDeflater2.deflate(this.messageBuffer);
                    i4 = i3 | 64;
                }
            }
            long j = this.messageBuffer.f6289b;
            this.sinkBuffer.c(i4);
            if (!this.isClient) {
                i2 = 0;
            }
            if (j <= 125) {
                this.sinkBuffer.c(((int) j) | i2);
            } else if (j <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                this.sinkBuffer.c(i2 | WebSocketProtocol.PAYLOAD_SHORT);
                this.sinkBuffer.e((int) j);
            } else {
                this.sinkBuffer.c(i2 | 127);
                this.sinkBuffer.i(j);
            }
            if (this.isClient) {
                Random random = this.random;
                byte[] bArr = this.maskKey;
                p.a(bArr);
                random.nextBytes(bArr);
                this.sinkBuffer.c(this.maskKey);
                if (j > 0) {
                    f fVar = this.messageBuffer;
                    f.a aVar = this.maskCursor;
                    p.a(aVar);
                    fVar.a(aVar);
                    this.maskCursor.a(0L);
                    WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            }
            this.sinkBuffer.write(this.messageBuffer, j);
            this.sink.d();
            return;
        }
        throw new IOException("closed");
    }

    public final void writePing(i payload) throws IOException {
        p.d(payload, "payload");
        writeControlFrame(9, payload);
    }

    public final void writePong(i payload) throws IOException {
        p.d(payload, "payload");
        writeControlFrame(10, payload);
    }
}
