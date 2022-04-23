package c;

import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nH\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lokio/InputStreamSource;", "Lokio/Source;", "input", "Ljava/io/InputStream;", "timeout", "Lokio/Timeout;", "(Ljava/io/InputStream;Lokio/Timeout;)V", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "toString", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/p.class */
final class p implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f6312a;

    /* renamed from: b  reason: collision with root package name */
    private final ae f6313b;

    public p(InputStream input, ae timeout) {
        kotlin.jvm.internal.p.d(input, "input");
        kotlin.jvm.internal.p.d(timeout, "timeout");
        this.f6312a = input;
        this.f6313b = timeout;
    }

    @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6312a.close();
    }

    @Override // c.ad
    public final long read(f sink, long j) {
        kotlin.jvm.internal.p.d(sink, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return 0L;
        }
        if (i >= 0) {
            try {
                this.f6313b.throwIfReached();
                y h = sink.h(1);
                int read = this.f6312a.read(h.f6339a, h.f6341c, (int) Math.min(j, PropertyFlags.UNSIGNED - h.f6341c));
                if (read != -1) {
                    h.f6341c += read;
                    long j2 = read;
                    sink.f6289b += j2;
                    return j2;
                } else if (h.f6340b != h.f6341c) {
                    return -1L;
                } else {
                    sink.f6288a = h.c();
                    z.a(h);
                    return -1L;
                }
            } catch (AssertionError e) {
                if (q.a(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        } else {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        }
    }

    @Override // c.ad
    public final ae timeout() {
        return this.f6313b;
    }

    public final String toString() {
        return "source(" + this.f6312a + ')';
    }
}
