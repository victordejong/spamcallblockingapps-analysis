package c;

import com.appsflyer.internal.referrer.Payload;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\u0018��2\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tH\u0003J\r\u0010\u000e\u001a\u00020\u000bH��¢\u0006\u0002\b\u000fJ\b\u0010\u0010\u001a\u00020\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lokio/DeflaterSink;", "Lokio/Sink;", "sink", "deflater", "Ljava/util/zip/Deflater;", "(Lokio/Sink;Ljava/util/zip/Deflater;)V", "Lokio/BufferedSink;", "(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V", "closed", "", EventConstants.CLOSE, "", "deflate", "syncFlush", "finishDeflate", "finishDeflate$okio", "flush", "timeout", "Lokio/Timeout;", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/j.class */
public final class j implements ab {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6300a;

    /* renamed from: b  reason: collision with root package name */
    private final g f6301b;

    /* renamed from: c  reason: collision with root package name */
    private final Deflater f6302c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(ab sink, Deflater deflater) {
        this(r.a(sink), deflater);
        p.d(sink, "sink");
        p.d(deflater, "deflater");
    }

    public j(g sink, Deflater deflater) {
        p.d(sink, "sink");
        p.d(deflater, "deflater");
        this.f6301b = sink;
        this.f6302c = deflater;
    }

    private final void a(boolean z) {
        y h;
        f b2 = this.f6301b.b();
        while (true) {
            h = b2.h(1);
            int deflate = z ? this.f6302c.deflate(h.f6339a, h.f6341c, PropertyFlags.UNSIGNED - h.f6341c, 2) : this.f6302c.deflate(h.f6339a, h.f6341c, PropertyFlags.UNSIGNED - h.f6341c);
            if (deflate > 0) {
                h.f6341c += deflate;
                b2.f6289b += deflate;
                this.f6301b.c();
            } else if (this.f6302c.needsInput()) {
                break;
            }
        }
        if (h.f6340b == h.f6341c) {
            b2.f6288a = h.c();
            z.a(h);
        }
    }

    @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Throwable th;
        Throwable th2;
        if (!this.f6300a) {
            Throwable th3 = null;
            try {
                this.f6302c.finish();
                a(false);
            } catch (Throwable th4) {
                th3 = th4;
            }
            try {
                this.f6302c.end();
                th = th3;
            } catch (Throwable th5) {
                th = th5;
                th = th3;
                if (th3 == null) {
                }
            }
            try {
                this.f6301b.close();
                th2 = th;
            } catch (Throwable th6) {
                th2 = th6;
                th2 = th;
                if (th == null) {
                }
            }
            this.f6300a = true;
            if (th2 != null) {
                throw th2;
            }
        }
    }

    @Override // c.ab, java.io.Flushable
    public final void flush() throws IOException {
        a(true);
        this.f6301b.flush();
    }

    @Override // c.ab
    public final ae timeout() {
        return this.f6301b.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f6301b + ')';
    }

    @Override // c.ab
    public final void write(f source, long j) throws IOException {
        p.d(source, "source");
        c.a(source.f6289b, 0L, j);
        while (j > 0) {
            y yVar = source.f6288a;
            p.a(yVar);
            int min = (int) Math.min(j, yVar.f6341c - yVar.f6340b);
            this.f6302c.setInput(yVar.f6339a, yVar.f6340b, min);
            a(false);
            long j2 = min;
            source.f6289b -= j2;
            yVar.f6340b += min;
            if (yVar.f6340b == yVar.f6341c) {
                source.f6288a = yVar.c();
                z.a(yVar);
            }
            j -= j2;
        }
    }
}
