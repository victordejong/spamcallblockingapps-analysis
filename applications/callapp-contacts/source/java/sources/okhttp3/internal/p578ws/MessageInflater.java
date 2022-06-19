package okhttp3.internal.p578ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.http2.Settings;
import p092c.AbstractC3190ad;
import p092c.C3202f;
import p092c.C3215o;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lokhttp3/internal/ws/MessageInflater;", "Ljava/io/Closeable;", "noContextTakeover", "", "(Z)V", "deflatedBytes", "Lokio/Buffer;", "inflater", "Ljava/util/zip/Inflater;", "inflaterSource", "Lokio/InflaterSource;", EventConstants.CLOSE, "", "inflate", "buffer", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: okhttp3.internal.ws.MessageInflater */
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/MessageInflater.class */
public final class MessageInflater implements Closeable {
    private final C3202f deflatedBytes;
    private final Inflater inflater;
    private final C3215o inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z) {
        this.noContextTakeover = z;
        C3202f c3202f = new C3202f();
        this.deflatedBytes = c3202f;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new C3215o((AbstractC3190ad) c3202f, inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(C3202f buffer) throws IOException {
        C18524p.m3840d(buffer, "buffer");
        if (this.deflatedBytes.f11572b == 0) {
            if (this.noContextTakeover) {
                this.inflater.reset();
            }
            this.deflatedBytes.mo39145a((AbstractC3190ad) buffer);
            this.deflatedBytes.mo39136g(Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            long bytesRead = this.inflater.getBytesRead();
            long j = this.deflatedBytes.f11572b;
            do {
                this.inflaterSource.m39162a(buffer, Long.MAX_VALUE);
            } while (this.inflater.getBytesRead() < bytesRead + j);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
