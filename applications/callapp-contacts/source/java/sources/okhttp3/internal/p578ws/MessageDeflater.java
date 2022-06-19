package okhttp3.internal.p578ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import p092c.AbstractC3188ab;
import p092c.C3202f;
import p092c.C3208i;
import p092c.C3210j;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0006J\u0014\u0010\u000f\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lokhttp3/internal/ws/MessageDeflater;", "Ljava/io/Closeable;", "noContextTakeover", "", "(Z)V", "deflatedBytes", "Lokio/Buffer;", "deflater", "Ljava/util/zip/Deflater;", "deflaterSink", "Lokio/DeflaterSink;", EventConstants.CLOSE, "", "deflate", "buffer", "endsWith", "suffix", "Lokio/ByteString;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: okhttp3.internal.ws.MessageDeflater */
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/MessageDeflater.class */
public final class MessageDeflater implements Closeable {
    private final C3202f deflatedBytes;
    private final Deflater deflater;
    private final C3210j deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z) {
        this.noContextTakeover = z;
        C3202f c3202f = new C3202f();
        this.deflatedBytes = c3202f;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new C3210j((AbstractC3188ab) c3202f, deflater);
    }

    private final boolean endsWith(C3202f c3202f, C3208i c3208i) {
        return c3202f.mo39130a(c3202f.f11572b - c3208i.mo39173f(), c3208i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.deflaterSink.close();
    }

    public final void deflate(C3202f buffer) throws IOException {
        C3208i c3208i;
        C3202f.C3203a m39218a;
        C3202f.C3203a c3203a;
        C18524p.m3840d(buffer, "buffer");
        if (this.deflatedBytes.f11572b == 0) {
            if (this.noContextTakeover) {
                this.deflater.reset();
            }
            this.deflaterSink.write(buffer, buffer.f11572b);
            this.deflaterSink.flush();
            C3202f c3202f = this.deflatedBytes;
            c3208i = MessageDeflaterKt.EMPTY_DEFLATE_BLOCK;
            if (endsWith(c3202f, c3208i)) {
                long j = this.deflatedBytes.f11572b;
                m39218a = this.deflatedBytes.m39218a(new C3202f.C3203a());
                try {
                    m39218a.m39188b(j - 4);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                this.deflatedBytes.mo39141c(0);
            }
            C3202f c3202f2 = this.deflatedBytes;
            buffer.write(c3202f2, c3202f2.f11572b);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
