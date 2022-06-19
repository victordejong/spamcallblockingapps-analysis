package p092c;

import com.appsflyer.internal.referrer.Payload;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0002J\b\u0010\u0016\u001a\u00020\u000eH\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, m4298d2 = {"Lokio/GzipSource;", "Lokio/Source;", Payload.SOURCE, "(Lokio/Source;)V", "crc", "Ljava/util/zip/CRC32;", "inflater", "Ljava/util/zip/Inflater;", "inflaterSource", "Lokio/InflaterSource;", "section", "", "Lokio/RealBufferedSource;", "checkEqual", "", "name", "", "expected", "", "actual", EventConstants.CLOSE, "consumeHeader", "consumeTrailer", "read", "", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/Timeout;", "updateCrc", "buffer", VastIconXmlManager.OFFSET, "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.n */
/* loaded from: classes-dex2jar.jar:c/n.class */
public final class C3214n implements AbstractC3190ad {

    /* renamed from: a */
    private byte f11591a;

    /* renamed from: b */
    private final C3227x f11592b;

    /* renamed from: c */
    private final Inflater f11593c;

    /* renamed from: d */
    private final C3215o f11594d;

    /* renamed from: e */
    private final CRC32 f11595e = new CRC32();

    public C3214n(AbstractC3190ad source) {
        C18524p.m3840d(source, "source");
        C3227x c3227x = new C3227x(source);
        this.f11592b = c3227x;
        Inflater inflater = new Inflater(true);
        this.f11593c = inflater;
        this.f11594d = new C3215o((AbstractC3207h) c3227x, inflater);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* renamed from: a */
    private final void m39164a(C3202f c3202f, long j, long j2) {
        C3229y c3229y = c3202f.f11571a;
        C18524p.m3851a(c3229y);
        ?? r7 = j;
        while ((r7 == true ? 1 : 0) >= c3229y.f11636c - c3229y.f11635b) {
            r7 -= c3229y.f11636c - c3229y.f11635b;
            c3229y = c3229y.f11639f;
            C18524p.m3851a(c3229y);
        }
        while (j2 > 0) {
            int i = (int) (c3229y.f11635b + (r7 == true ? 1 : 0));
            int min = (int) Math.min(c3229y.f11636c - i, (long) j2);
            this.f11595e.update(c3229y.f11634a, i, min);
            j2 -= min;
            c3229y = c3229y.f11639f;
            C18524p.m3851a(c3229y);
            r7 = 0;
        }
    }

    /* renamed from: a */
    private static void m39163a(String str, int i, int i2) {
        if (i2 == i) {
            return;
        }
        String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3));
        C18524p.m3843b(format, "java.lang.String.format(this, *args)");
        throw new IOException(format);
    }

    @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f11594d.close();
    }

    @Override // p092c.AbstractC3190ad
    public final long read(C3202f sink, long j) throws IOException {
        C18524p.m3840d(sink, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (i == 0) {
                return 0L;
            }
            if (this.f11591a == 0) {
                this.f11592b.mo39131a(10L);
                byte m39207c = this.f11592b.f11629a.m39207c(3L);
                boolean z = ((m39207c >> 1) & 1) == 1;
                if (z) {
                    m39164a(this.f11592b.f11629a, 0L, 10L);
                }
                m39163a("ID1ID2", 8075, this.f11592b.mo39112j());
                this.f11592b.mo39114h(8L);
                if (((m39207c >> 2) & 1) == 1) {
                    this.f11592b.mo39131a(2L);
                    if (z) {
                        m39164a(this.f11592b.f11629a, 0L, 2L);
                    }
                    long m39195m = this.f11592b.f11629a.m39195m();
                    this.f11592b.mo39131a(m39195m);
                    if (z) {
                        m39164a(this.f11592b.f11629a, 0L, m39195m);
                    }
                    this.f11592b.mo39114h(m39195m);
                }
                if (((m39207c >> 3) & 1) == 1) {
                    long m39121d = this.f11592b.m39121d();
                    if (m39121d == -1) {
                        throw new EOFException();
                    }
                    if (z) {
                        m39164a(this.f11592b.f11629a, 0L, m39121d + 1);
                    }
                    this.f11592b.mo39114h(m39121d + 1);
                }
                boolean z2 = false;
                if (((m39207c >> 4) & 1) == 1) {
                    z2 = true;
                }
                if (z2) {
                    long m39121d2 = this.f11592b.m39121d();
                    if (m39121d2 == -1) {
                        throw new EOFException();
                    }
                    if (z) {
                        m39164a(this.f11592b.f11629a, 0L, m39121d2 + 1);
                    }
                    this.f11592b.mo39114h(m39121d2 + 1);
                }
                if (z) {
                    C3227x c3227x = this.f11592b;
                    c3227x.mo39131a(2L);
                    m39163a("FHCRC", c3227x.f11629a.m39195m(), (short) this.f11595e.getValue());
                    this.f11595e.reset();
                }
                this.f11591a = (byte) 1;
            }
            if (this.f11591a == 1) {
                long j2 = sink.f11572b;
                long read = this.f11594d.read(sink, j);
                if (read != -1) {
                    m39164a(sink, j2, read);
                    return read;
                }
                this.f11591a = (byte) 2;
            }
            if (this.f11591a != 2) {
                return -1L;
            }
            m39163a("CRC", this.f11592b.m39122c(), (int) this.f11595e.getValue());
            m39163a("ISIZE", this.f11592b.m39122c(), (int) this.f11593c.getBytesWritten());
            this.f11591a = (byte) 3;
            if (!this.f11592b.mo39119e()) {
                throw new IOException("gzip finished without exhausting source");
            }
            return -1L;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // p092c.AbstractC3190ad
    public final C3191ae timeout() {
        return this.f11592b.timeout();
    }
}
