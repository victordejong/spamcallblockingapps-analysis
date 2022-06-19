package p092c;

import com.appsflyer.internal.referrer.Payload;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\u0018��2\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tH\u0003J\r\u0010\u000e\u001a\u00020\u000bH��¢\u0006\u0002\b\u000fJ\b\u0010\u0010\u001a\u00020\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, m4298d2 = {"Lokio/DeflaterSink;", "Lokio/Sink;", "sink", "deflater", "Ljava/util/zip/Deflater;", "(Lokio/Sink;Ljava/util/zip/Deflater;)V", "Lokio/BufferedSink;", "(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V", "closed", "", EventConstants.CLOSE, "", "deflate", "syncFlush", "finishDeflate", "finishDeflate$okio", "flush", "timeout", "Lokio/Timeout;", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.j */
/* loaded from: classes-dex2jar.jar:c/j.class */
public final class C3210j implements AbstractC3188ab {

    /* renamed from: a */
    private boolean f11587a;

    /* renamed from: b */
    private final AbstractC3206g f11588b;

    /* renamed from: c */
    private final Deflater f11589c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3210j(AbstractC3188ab sink, Deflater deflater) {
        this(C3218r.m39151a(sink), deflater);
        C18524p.m3840d(sink, "sink");
        C18524p.m3840d(deflater, "deflater");
    }

    public C3210j(AbstractC3206g sink, Deflater deflater) {
        C18524p.m3840d(sink, "sink");
        C18524p.m3840d(deflater, "deflater");
        this.f11588b = sink;
        this.f11589c = deflater;
    }

    /* renamed from: a */
    private final void m39165a(boolean z) {
        C3229y m39200h;
        C3202f mo39124b = this.f11588b.mo39124b();
        while (true) {
            m39200h = mo39124b.m39200h(1);
            int deflate = z ? this.f11589c.deflate(m39200h.f11634a, m39200h.f11636c, PropertyFlags.UNSIGNED - m39200h.f11636c, 2) : this.f11589c.deflate(m39200h.f11634a, m39200h.f11636c, PropertyFlags.UNSIGNED - m39200h.f11636c);
            if (deflate > 0) {
                m39200h.f11636c += deflate;
                mo39124b.f11572b += deflate;
                this.f11588b.mo39142c();
            } else if (this.f11589c.needsInput()) {
                break;
            }
        }
        if (m39200h.f11635b == m39200h.f11636c) {
            mo39124b.f11571a = m39200h.m39100c();
            C3231z.m39098a(m39200h);
        }
    }

    @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Throwable th;
        Throwable th2;
        if (this.f11587a) {
            return;
        }
        Throwable th3 = null;
        try {
            this.f11589c.finish();
            m39165a(false);
        } catch (Throwable th4) {
            th3 = th4;
        }
        try {
            this.f11589c.end();
            th = th3;
        } catch (Throwable th5) {
            th = th3;
            if (th3 == null) {
                th = th5;
            }
        }
        try {
            this.f11588b.close();
            th2 = th;
        } catch (Throwable th6) {
            th2 = th;
            if (th == null) {
                th2 = th6;
            }
        }
        this.f11587a = true;
        if (th2 != null) {
            throw th2;
        }
    }

    @Override // p092c.AbstractC3188ab, java.io.Flushable
    public final void flush() throws IOException {
        m39165a(true);
        this.f11588b.flush();
    }

    @Override // p092c.AbstractC3188ab
    public final C3191ae timeout() {
        return this.f11588b.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f11588b + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // p092c.AbstractC3188ab
    public final void write(C3202f source, long j) throws IOException {
        C18524p.m3840d(source, "source");
        C3195c.m39226a(source.f11572b, 0L, j);
        ?? r9 = j;
        while (r9 > 0) {
            C3229y c3229y = source.f11571a;
            C18524p.m3851a(c3229y);
            int min = (int) Math.min((long) r9, c3229y.f11636c - c3229y.f11635b);
            this.f11589c.setInput(c3229y.f11634a, c3229y.f11635b, min);
            m39165a(false);
            long j2 = min;
            source.f11572b -= j2;
            c3229y.f11635b += min;
            if (c3229y.f11635b == c3229y.f11636c) {
                source.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
            }
            r9 -= j2;
        }
    }
}
