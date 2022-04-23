package okhttp3.internal.ws;

import c.f;
import c.h;
import c.i;
import com.appsflyer.internal.referrer.Payload;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Settings;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\u0018��2\u00020\u0001:\u0001&B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\u001fJ\b\u0010!\u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u001fH\u0002J\b\u0010#\u001a\u00020\u001fH\u0002J\b\u0010$\u001a\u00020\u001fH\u0002J\b\u0010%\u001a\u00020\u001fH\u0002R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001d¨\u0006'"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader;", "Ljava/io/Closeable;", "isClient", "", Payload.SOURCE, "Lokio/BufferedSource;", "frameCallback", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "perMessageDeflate", "noContextTakeover", "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V", "closed", "controlFrameBuffer", "Lokio/Buffer;", "frameLength", "", "isControlFrame", "isFinalFrame", "maskCursor", "Lokio/Buffer$UnsafeCursor;", "maskKey", "", "messageFrameBuffer", "messageInflater", "Lokhttp3/internal/ws/MessageInflater;", "opcode", "", "readingCompressedMessage", "getSource", "()Lokio/BufferedSource;", EventConstants.CLOSE, "", "processNextFrame", "readControlFrame", "readHeader", "readMessage", "readMessageFrame", "readUntilNonControlFrame", "FrameCallback", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketReader.class */
public final class WebSocketReader implements Closeable {
    private boolean closed;
    private final FrameCallback frameCallback;
    private long frameLength;
    private final boolean isClient;
    private boolean isControlFrame;
    private boolean isFinalFrame;
    private final f.a maskCursor;
    private final byte[] maskKey;
    private MessageInflater messageInflater;
    private final boolean noContextTakeover;
    private int opcode;
    private final boolean perMessageDeflate;
    private boolean readingCompressedMessage;
    private final h source;
    private final f controlFrameBuffer = new f();
    private final f messageFrameBuffer = new f();

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000bH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000bH&¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "", "onReadClose", "", "code", "", "reason", "", "onReadMessage", "text", "bytes", "Lokio/ByteString;", "onReadPing", "payload", "onReadPong", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketReader$FrameCallback.class */
    public interface FrameCallback {
        void onReadClose(int i, String str);

        void onReadMessage(i iVar) throws IOException;

        void onReadMessage(String str) throws IOException;

        void onReadPing(i iVar);

        void onReadPong(i iVar);
    }

    public WebSocketReader(boolean z, h source, FrameCallback frameCallback, boolean z2, boolean z3) {
        p.d(source, "source");
        p.d(frameCallback, "frameCallback");
        this.isClient = z;
        this.source = source;
        this.frameCallback = frameCallback;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        f.a aVar = null;
        this.maskKey = z ? null : new byte[4];
        if (!z) {
            aVar = new f.a();
        }
        this.maskCursor = aVar;
    }

    private final void readControlFrame() throws IOException {
        String str;
        long j = this.frameLength;
        if (j > 0) {
            this.source.a(this.controlFrameBuffer, j);
            if (!this.isClient) {
                f fVar = this.controlFrameBuffer;
                f.a aVar = this.maskCursor;
                p.a(aVar);
                fVar.a(aVar);
                this.maskCursor.a(0L);
                WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                f.a aVar2 = this.maskCursor;
                byte[] bArr = this.maskKey;
                p.a(bArr);
                webSocketProtocol.toggleMask(aVar2, bArr);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                short s = 1005;
                long j2 = this.controlFrameBuffer.f6289b;
                if (j2 != 1) {
                    if (j2 != 0) {
                        s = this.controlFrameBuffer.j();
                        str = this.controlFrameBuffer.r();
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
                }
                throw new ProtocolException("Malformed close payload length of 1.");
            case 9:
                this.frameCallback.onReadPing(this.controlFrameBuffer.q());
                return;
            case 10:
                this.frameCallback.onReadPong(this.controlFrameBuffer.q());
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
                int and = Util.and(this.source.i(), 255);
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                int i = and & 15;
                this.opcode = i;
                boolean z2 = false;
                boolean z3 = (and & 128) != 0;
                this.isFinalFrame = z3;
                boolean z4 = (and & 8) != 0;
                this.isControlFrame = z4;
                if (!z4 || z3) {
                    boolean z5 = (and & 64) != 0;
                    if (i == 1 || i == 2) {
                        if (!z5) {
                            z = false;
                        } else if (this.perMessageDeflate) {
                            z = true;
                        } else {
                            throw new ProtocolException("Unexpected rsv1 flag");
                        }
                        this.readingCompressedMessage = z;
                    } else if (z5) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                    if (!((and & 32) != 0)) {
                        if (!((and & 16) != 0)) {
                            int and2 = Util.and(this.source.i(), 255);
                            if ((and2 & 128) != 0) {
                                z2 = true;
                            }
                            if (z2 == this.isClient) {
                                throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
                            }
                            long j = and2 & 127;
                            this.frameLength = j;
                            if (j == 126) {
                                this.frameLength = Util.and(this.source.j(), (int) Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                            } else if (j == 127) {
                                long l = this.source.l();
                                this.frameLength = l;
                                if (l < 0) {
                                    throw new ProtocolException("Frame length 0x" + Util.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                                }
                            }
                            if (this.isControlFrame && this.frameLength > 125) {
                                throw new ProtocolException("Control frame must be less than 125B.");
                            } else if (z2) {
                                h hVar = this.source;
                                byte[] bArr = this.maskKey;
                                p.a(bArr);
                                hVar.a(bArr);
                            }
                        } else {
                            throw new ProtocolException("Unexpected rsv3 flag");
                        }
                    } else {
                        throw new ProtocolException("Unexpected rsv2 flag");
                    }
                } else {
                    throw new ProtocolException("Control frames must be final.");
                }
            } catch (Throwable th) {
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                throw th;
            }
        } else {
            throw new IOException("closed");
        }
    }

    private final void readMessage() throws IOException {
        while (!this.closed) {
            long j = this.frameLength;
            if (j > 0) {
                this.source.a(this.messageFrameBuffer, j);
                if (!this.isClient) {
                    f fVar = this.messageFrameBuffer;
                    f.a aVar = this.maskCursor;
                    p.a(aVar);
                    fVar.a(aVar);
                    this.maskCursor.a(this.messageFrameBuffer.f6289b - this.frameLength);
                    WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                    f.a aVar2 = this.maskCursor;
                    byte[] bArr = this.maskKey;
                    p.a(bArr);
                    webSocketProtocol.toggleMask(aVar2, bArr);
                    this.maskCursor.close();
                }
            }
            if (!this.isFinalFrame) {
                readUntilNonControlFrame();
                if (this.opcode != 0) {
                    throw new ProtocolException("Expected continuation opcode. Got: " + Util.toHexString(this.opcode));
                }
            } else {
                return;
            }
        }
        throw new IOException("closed");
    }

    private final void readMessageFrame() throws IOException {
        int i = this.opcode;
        if (i == 1 || i == 2) {
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
                this.frameCallback.onReadMessage(this.messageFrameBuffer.r());
            } else {
                this.frameCallback.onReadMessage(this.messageFrameBuffer.q());
            }
        } else {
            throw new ProtocolException("Unknown opcode: " + Util.toHexString(i));
        }
    }

    private final void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (this.isControlFrame) {
                readControlFrame();
            } else {
                return;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        MessageInflater messageInflater = this.messageInflater;
        if (messageInflater != null) {
            messageInflater.close();
        }
    }

    public final h getSource() {
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
