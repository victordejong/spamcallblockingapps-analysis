package okhttp3.internal.p342ws;

import java.io.IOException;
import java.util.Objects;
import java.util.Random;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.Sink;
import okio.Timeout;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: okhttp3.internal.ws.WebSocketWriter */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketWriter.class */
public final class WebSocketWriter {
    boolean activeWriter;
    final Buffer buffer = new Buffer();
    final FrameSink frameSink = new FrameSink();
    final boolean isClient;
    private final Buffer.UnsafeCursor maskCursor;
    private final byte[] maskKey;
    final Random random;
    final BufferedSink sink;
    final Buffer sinkBuffer;
    boolean writerClosed;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: okhttp3.internal.ws.WebSocketWriter$FrameSink */
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketWriter$FrameSink.class */
    public final class FrameSink implements Sink {
        boolean closed;
        long contentLength;
        int formatOpcode;
        boolean isFirstFrame;

        FrameSink() {
            WebSocketWriter.this = r4;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.closed) {
                WebSocketWriter webSocketWriter = WebSocketWriter.this;
                webSocketWriter.writeMessageFrame(this.formatOpcode, webSocketWriter.buffer.size(), this.isFirstFrame, true);
                this.closed = true;
                WebSocketWriter.this.activeWriter = false;
                return;
            }
            throw new IOException("closed");
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (!this.closed) {
                WebSocketWriter webSocketWriter = WebSocketWriter.this;
                webSocketWriter.writeMessageFrame(this.formatOpcode, webSocketWriter.buffer.size(), this.isFirstFrame, false);
                this.isFirstFrame = false;
                return;
            }
            throw new IOException("closed");
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return WebSocketWriter.this.sink.timeout();
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) {
            if (!this.closed) {
                WebSocketWriter.this.buffer.write(buffer, j);
                boolean z = this.isFirstFrame && this.contentLength != -1 && WebSocketWriter.this.buffer.size() > this.contentLength - 8192;
                long completeSegmentByteCount = WebSocketWriter.this.buffer.completeSegmentByteCount();
                if (completeSegmentByteCount <= 0 || z) {
                    return;
                }
                WebSocketWriter.this.writeMessageFrame(this.formatOpcode, completeSegmentByteCount, this.isFirstFrame, false);
                this.isFirstFrame = false;
                return;
            }
            throw new IOException("closed");
        }
    }

    public WebSocketWriter(boolean z, BufferedSink bufferedSink, Random random) {
        Objects.requireNonNull(bufferedSink, "sink == null");
        Objects.requireNonNull(random, "random == null");
        this.isClient = z;
        this.sink = bufferedSink;
        this.sinkBuffer = bufferedSink.buffer();
        this.random = random;
        this.maskKey = z ? new byte[4] : null;
        this.maskCursor = z ? new Buffer.UnsafeCursor() : null;
    }

    private void writeControlFrame(int i, ByteString byteString) {
        if (!this.writerClosed) {
            int size = byteString.size();
            if (size > 125) {
                throw new IllegalArgumentException("Payload size must be less than or equal to 125");
            }
            this.sinkBuffer.writeByte(i | 128);
            if (this.isClient) {
                this.sinkBuffer.writeByte(size | 128);
                this.random.nextBytes(this.maskKey);
                this.sinkBuffer.write(this.maskKey);
                if (size > 0) {
                    long size2 = this.sinkBuffer.size();
                    this.sinkBuffer.write(byteString);
                    this.sinkBuffer.readAndWriteUnsafe(this.maskCursor);
                    this.maskCursor.seek(size2);
                    WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            } else {
                this.sinkBuffer.writeByte(size);
                this.sinkBuffer.write(byteString);
            }
            this.sink.flush();
            return;
        }
        throw new IOException("closed");
    }

    public Sink newMessageSink(int i, long j) {
        if (!this.activeWriter) {
            this.activeWriter = true;
            FrameSink frameSink = this.frameSink;
            frameSink.formatOpcode = i;
            frameSink.contentLength = j;
            frameSink.isFirstFrame = true;
            frameSink.closed = false;
            return frameSink;
        }
        throw new IllegalStateException("Another message writer is active. Did you call close()?");
    }

    public void writeClose(int i, ByteString byteString) {
        ByteString byteString2 = ByteString.EMPTY;
        if (i != 0 || byteString != null) {
            if (i != 0) {
                WebSocketProtocol.validateCloseCode(i);
            }
            Buffer buffer = new Buffer();
            buffer.writeShort(i);
            if (byteString != null) {
                buffer.write(byteString);
            }
            byteString2 = buffer.readByteString();
        }
        try {
            writeControlFrame(8, byteString2);
        } finally {
            this.writerClosed = true;
        }
    }

    void writeMessageFrame(int i, long j, boolean z, boolean z2) {
        if (!this.writerClosed) {
            if (!z) {
                i = 0;
            }
            int i2 = i;
            if (z2) {
                i2 = i | 128;
            }
            this.sinkBuffer.writeByte(i2);
            int i3 = 0;
            if (this.isClient) {
                i3 = 128;
            }
            if (j <= 125) {
                this.sinkBuffer.writeByte(((int) j) | i3);
            } else if (j <= 65535) {
                this.sinkBuffer.writeByte(i3 | 126);
                this.sinkBuffer.writeShort((int) j);
            } else {
                this.sinkBuffer.writeByte(i3 | 127);
                this.sinkBuffer.writeLong(j);
            }
            if (this.isClient) {
                this.random.nextBytes(this.maskKey);
                this.sinkBuffer.write(this.maskKey);
                if (j > 0) {
                    long size = this.sinkBuffer.size();
                    this.sinkBuffer.write(this.buffer, j);
                    this.sinkBuffer.readAndWriteUnsafe(this.maskCursor);
                    this.maskCursor.seek(size);
                    WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            } else {
                this.sinkBuffer.write(this.buffer, j);
            }
            this.sink.emit();
            return;
        }
        throw new IOException("closed");
    }

    public void writePing(ByteString byteString) {
        writeControlFrame(9, byteString);
    }

    public void writePong(ByteString byteString) {
        writeControlFrame(10, byteString);
    }
}
