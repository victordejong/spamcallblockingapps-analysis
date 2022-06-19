package p092c;

import com.appsflyer.internal.referrer.Payload;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "out", "Ljava/io/OutputStream;", "timeout", "Lokio/Timeout;", "(Ljava/io/OutputStream;Lokio/Timeout;)V", EventConstants.CLOSE, "", "flush", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.t */
/* loaded from: classes-dex2jar.jar:c/t.class */
public final class C3221t implements AbstractC3188ab {

    /* renamed from: a */
    private final OutputStream f11606a;

    /* renamed from: b */
    private final C3191ae f11607b;

    public C3221t(OutputStream out, C3191ae timeout) {
        C18524p.m3840d(out, "out");
        C18524p.m3840d(timeout, "timeout");
        this.f11606a = out;
        this.f11607b = timeout;
    }

    @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11606a.close();
    }

    @Override // p092c.AbstractC3188ab, java.io.Flushable
    public final void flush() {
        this.f11606a.flush();
    }

    @Override // p092c.AbstractC3188ab
    public final C3191ae timeout() {
        return this.f11607b;
    }

    public final String toString() {
        return "sink(" + this.f11606a + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    @Override // p092c.AbstractC3188ab
    public final void write(C3202f source, long j) {
        C18524p.m3840d(source, "source");
        C3195c.m39226a(source.f11572b, 0L, j);
        while (j > 0) {
            this.f11607b.throwIfReached();
            C3229y c3229y = source.f11571a;
            C18524p.m3851a(c3229y);
            int min = (int) Math.min((long) j, c3229y.f11636c - c3229y.f11635b);
            this.f11606a.write(c3229y.f11634a, c3229y.f11635b, min);
            c3229y.f11635b += min;
            long j2 = min;
            ?? r0 = j - j2;
            source.f11572b -= j2;
            j = r0;
            if (c3229y.f11635b == c3229y.f11636c) {
                source.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
                j = r0;
            }
        }
    }
}
