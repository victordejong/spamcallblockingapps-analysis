package p092c;

import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nH\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lokio/InputStreamSource;", "Lokio/Source;", "input", "Ljava/io/InputStream;", "timeout", "Lokio/Timeout;", "(Ljava/io/InputStream;Lokio/Timeout;)V", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "toString", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.p */
/* loaded from: classes-dex2jar.jar:c/p.class */
public final class C3216p implements AbstractC3190ad {

    /* renamed from: a */
    private final InputStream f11600a;

    /* renamed from: b */
    private final C3191ae f11601b;

    public C3216p(InputStream input, C3191ae timeout) {
        C18524p.m3840d(input, "input");
        C18524p.m3840d(timeout, "timeout");
        this.f11600a = input;
        this.f11601b = timeout;
    }

    @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11600a.close();
    }

    @Override // p092c.AbstractC3190ad
    public final long read(C3202f sink, long j) {
        C18524p.m3840d(sink, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return 0L;
        }
        if (!(i >= 0)) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        }
        try {
            this.f11601b.throwIfReached();
            C3229y m39200h = sink.m39200h(1);
            int read = this.f11600a.read(m39200h.f11634a, m39200h.f11636c, (int) Math.min(j, PropertyFlags.UNSIGNED - m39200h.f11636c));
            if (read != -1) {
                m39200h.f11636c += read;
                long j2 = read;
                sink.f11572b += j2;
                return j2;
            } else if (m39200h.f11635b != m39200h.f11636c) {
                return -1L;
            } else {
                sink.f11571a = m39200h.m39100c();
                C3231z.m39098a(m39200h);
                return -1L;
            }
        } catch (AssertionError e) {
            if (!C3217q.m39156a(e)) {
                throw e;
            }
            throw new IOException(e);
        }
    }

    @Override // p092c.AbstractC3190ad
    public final C3191ae timeout() {
        return this.f11601b;
    }

    public final String toString() {
        return "source(" + this.f11600a + ')';
    }
}
