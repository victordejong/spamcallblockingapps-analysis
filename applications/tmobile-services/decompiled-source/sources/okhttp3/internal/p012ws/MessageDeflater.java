package okhttp3.internal.p012ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u000b¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\f\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/ws/MessageDeflater;", "Ljava/io/Closeable;", "", "close", "()V", "Lokio/Buffer;", "buffer", "deflate", "(Lokio/Buffer;)V", "Lokio/ByteString;", "suffix", "", "endsWith", "(Lokio/Buffer;Lokio/ByteString;)Z", "deflatedBytes", "Lokio/Buffer;", "Ljava/util/zip/Deflater;", "deflater", "Ljava/util/zip/Deflater;", "Lokio/DeflaterSink;", "deflaterSink", "Lokio/DeflaterSink;", "noContextTakeover", "Z", "<init>", "(Z)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: okhttp3.internal.ws.MessageDeflater */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/MessageDeflater.class */
public final class MessageDeflater implements Closeable {
    private final Buffer deflatedBytes = new Buffer();
    private final Deflater deflater;
    private final DeflaterSink deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z) {
        this.noContextTakeover = z;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new DeflaterSink((Sink) this.deflatedBytes, deflater);
    }

    private final boolean endsWith(Buffer buffer, ByteString byteString) {
        return buffer.mo82O(buffer.m188v0() - byteString.m178C(), byteString);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.deflaterSink.close();
    }

    public final void deflate(@NotNull Buffer buffer) throws IOException {
        ByteString byteString;
        Buffer.UnsafeCursor V;
        Intrinsics.m1830e(buffer, "buffer");
        if (this.deflatedBytes.m188v0() == 0) {
            if (this.noContextTakeover) {
                this.deflater.reset();
            }
            this.deflaterSink.write(buffer, buffer.m188v0());
            this.deflaterSink.flush();
            Buffer buffer2 = this.deflatedBytes;
            byteString = MessageDeflaterKt.EMPTY_DEFLATE_BLOCK;
            if (endsWith(buffer2, byteString)) {
                try {
                    Buffer.m206V(this.deflatedBytes, null, 1, null).m182b(this.deflatedBytes.m188v0() - 4);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                this.deflatedBytes.m222D0(0);
            }
            Buffer buffer3 = this.deflatedBytes;
            buffer.write(buffer3, buffer3.m188v0());
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
