package okhttp3.internal.p578ws;

import com.appsflyer.internal.referrer.Payload;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Settings;
import p092c.AbstractC3207h;
import p092c.C3202f;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\u0018��2\u00020\u0001:\u0001&B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\u001fJ\b\u0010!\u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u001fH\u0002J\b\u0010#\u001a\u00020\u001fH\u0002J\b\u0010$\u001a\u00020\u001fH\u0002J\b\u0010%\u001a\u00020\u001fH\u0002R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001d¨\u0006'"}, m4298d2 = {"Lokhttp3/internal/ws/WebSocketReader;", "Ljava/io/Closeable;", "isClient", "", Payload.SOURCE, "Lokio/BufferedSource;", "frameCallback", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "perMessageDeflate", "noContextTakeover", "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V", "closed", "controlFrameBuffer", "Lokio/Buffer;", "frameLength", "", "isControlFrame", "isFinalFrame", "maskCursor", "Lokio/Buffer$UnsafeCursor;", "maskKey", "", "messageFrameBuffer", "messageInflater", "Lokhttp3/internal/ws/MessageInflater;", "opcode", "", "readingCompressedMessage", "getSource", "()Lokio/BufferedSource;", EventConstants.CLOSE, "", "processNextFrame", "readControlFrame", "readHeader", "readMessage", "readMessageFrame", "readUntilNonControlFrame", "FrameCallback", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: okhttp3.internal.ws.WebSocketReader */
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketReader.class */
public final class WebSocketReader implements Closeable {
    private boolean closed;
    private final FrameCallback frameCallback;
    private long frameLength;
    private final boolean isClient;
    private boolean isControlFrame;
    private boolean isFinalFrame;
    private final C3202f.C3203a maskCursor;
    private final byte[] maskKey;
    private MessageInflater messageInflater;
    private final boolean noContextTakeover;
    private int opcode;
    private final boolean perMessageDeflate;
    private boolean readingCompressedMessage;
    private final AbstractC3207h source;
    private final C3202f controlFrameBuffer = new C3202f();
    private final C3202f messageFrameBuffer = new C3202f();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000bH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000bH&¨\u0006\u000f"}, m4298d2 = {"Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "", "onReadClose", "", "code", "", "reason", "", "onReadMessage", "text", "bytes", "Lokio/ByteString;", "onReadPing", "payload", "onReadPong", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: okhttp3.internal.ws.WebSocketReader$FrameCallback */
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketReader$FrameCallback.class */
    public interface FrameCallback {
        void onReadClose(int i, String str);

        void onReadMessage(C3208i c3208i) throws IOException;

        void onReadMessage(String str) throws IOException;

        void onReadPing(C3208i c3208i);

        void onReadPong(C3208i c3208i);
    }

    public WebSocketReader(boolean z, AbstractC3207h source, FrameCallback frameCallback, boolean z2, boolean z3) {
        C18524p.m3840d(source, "source");
        C18524p.m3840d(frameCallback, "frameCallback");
        this.isClient = z;
        this.source = source;
        this.frameCallback = frameCallback;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        this.maskKey = z ? null : new byte[4];
        this.maskCursor = z ? null : new C3202f.C3203a();
    }

    private final void readControlFrame() throws IOException {
        String str;
        long j = this.frameLength;
        if (j > 0) {
            this.source.mo39128a(this.controlFrameBuffer, j);
            if (!this.isClient) {
                C3202f c3202f = this.controlFrameBuffer;
                C3202f.C3203a c3203a = this.maskCursor;
                C18524p.m3851a(c3203a);
                c3202f.m39218a(c3203a);
                this.maskCursor.m39189a(0L);
                WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                C3202f.C3203a c3203a2 = this.maskCursor;
                byte[] bArr = this.maskKey;
                C18524p.m3851a(bArr);
                webSocketProtocol.toggleMask(c3203a2, bArr);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                short s = 1005;
                long j2 = this.controlFrameBuffer.f11572b;
                if (j2 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (j2 != 0) {
                    s = this.controlFrameBuffer.mo39112j();
                    str = this.controlFrameBuffer.m39193r();
                    String closeCodeExceptionMessage = WebSocketProtocol.INSTANCE.closeCodeExceptionMessage(s);
                    if (closeCodeExceptionMessage != null) {
                        throw new ProtocolException(closeCodeExceptionMessage);
                    }
                } else {
                    str = "";
                }
                this.frameCallback.onReadClose(s, str);
                this.closed = true;
                return;
            case 9:
                this.frameCallback.onReadPing(this.controlFrameBuffer.mo39107q());
                return;
            case 10:
                this.frameCallback.onReadPong(this.controlFrameBuffer.mo39107q());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Util.toHexString(this.opcode));
        }
    }

    /* JADX WARN: Finally extract failed */
    private final void readHeader() throws IOException, ProtocolException {
        boolean z;
        if (!this.closed) {
            long timeoutNanos = this.source.timeout().timeoutNanos();
            this.source.timeout().clearTimeout();
            try {
                int and = Util.and(this.source.mo39113i(), 255);
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                int i = and & 15;
                this.opcode = i;
                boolean z2 = (and & 128) != 0;
                this.isFinalFrame = z2;
                boolean z3 = (and & 8) != 0;
                this.isControlFrame = z3;
                if (z3 && !z2) {
                    throw new ProtocolException("Control frames must be final.");
                }
                boolean z4 = (and & 64) != 0;
                if (i == 1 || i == 2) {
                    if (!z4) {
                        z = false;
                    } else if (!this.perMessageDeflate) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    } else {
                        z = true;
                    }
                    this.readingCompressedMessage = z;
                } else if (z4) {
                    throw new ProtocolException("Unexpected rsv1 flag");
                }
                if ((and & 32) != 0) {
                    throw new ProtocolException("Unexpected rsv2 flag");
                }
                if ((and & 16) != 0) {
                    throw new ProtocolException("Unexpected rsv3 flag");
                }
                int and2 = Util.and(this.source.mo39113i(), 255);
                boolean z5 = false;
                if ((and2 & 128) != 0) {
                    z5 = true;
                }
                if (z5 == this.isClient) {
                    throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
                }
                long j = and2 & 127;
                this.frameLength = j;
                if (j == 126) {
                    this.frameLength = Util.and(this.source.mo39112j(), (int) Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                } else if (j == 127) {
                    long mo39110l = this.source.mo39110l();
                    this.frameLength = mo39110l;
                    if (mo39110l < 0) {
                        throw new ProtocolException("Frame length 0x" + Util.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                    }
                }
                if (this.isControlFrame && this.frameLength > 125) {
                    throw new ProtocolException("Control frame must be less than 125B.");
                }
                if (!z5) {
                    return;
                }
                AbstractC3207h abstractC3207h = this.source;
                byte[] bArr = this.maskKey;
                C18524p.m3851a(bArr);
                abstractC3207h.mo39125a(bArr);
                return;
            } catch (Throwable th) {
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                throw th;
            }
        }
        throw new IOException("closed");
    }

    private final void readMessage() throws IOException {
        while (!this.closed) {
            long j = this.frameLength;
            if (j > 0) {
                this.source.mo39128a(this.messageFrameBuffer, j);
                if (!this.isClient) {
                    C3202f c3202f = this.messageFrameBuffer;
                    C3202f.C3203a c3203a = this.maskCursor;
                    C18524p.m3851a(c3203a);
                    c3202f.m39218a(c3203a);
                    this.maskCursor.m39189a(this.messageFrameBuffer.f11572b - this.frameLength);
                    WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                    C3202f.C3203a c3203a2 = this.maskCursor;
                    byte[] bArr = this.maskKey;
                    C18524p.m3851a(bArr);
                    webSocketProtocol.toggleMask(c3203a2, bArr);
                    this.maskCursor.close();
                }
            }
            if (this.isFinalFrame) {
                return;
            }
            readUntilNonControlFrame();
            if (this.opcode != 0) {
                throw new ProtocolException("Expected continuation opcode. Got: " + Util.toHexString(this.opcode));
            }
        }
        throw new IOException("closed");
    }

    private final void readMessageFrame() throws IOException {
        int i = this.opcode;
        if (i != 1 && i != 2) {
            throw new ProtocolException("Unknown opcode: " + Util.toHexString(i));
        }
        readMessage();
        if (this.readingCompressedMessage) {
            MessageInflater messageInflater = this.messageInflater;
            MessageInflater messageInflater2 = messageInflater;
            if (messageInflater == null) {
                messageInflater2 = new MessageInflater(this.noContextTakeover);
                this.messageInflater = messageInflater2;
            }
            messageInflater2.inflate(this.messageFrameBuffer);
        }
        if (i == 1) {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.m39193r());
        } else {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.mo39107q());
        }
    }

    private final void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (!this.isControlFrame) {
                return;
            }
            readControlFrame();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        MessageInflater messageInflater = this.messageInflater;
        if (messageInflater != null) {
            messageInflater.close();
        }
    }

    public final AbstractC3207h getSource() {
        return this.source;
    }

    public final void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }
}
