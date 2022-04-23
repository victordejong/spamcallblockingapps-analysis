package c;

import com.appsflyer.internal.referrer.Payload;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0002J\b\u0010\u0016\u001a\u00020\u000eH\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", Payload.SOURCE, "(Lokio/Source;)V", "crc", "Ljava/util/zip/CRC32;", "inflater", "Ljava/util/zip/Inflater;", "inflaterSource", "Lokio/InflaterSource;", "section", "", "Lokio/RealBufferedSource;", "checkEqual", "", "name", "", "expected", "", "actual", EventConstants.CLOSE, "consumeHeader", "consumeTrailer", "read", "", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/Timeout;", "updateCrc", "buffer", VastIconXmlManager.OFFSET, "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/n.class */
public final class n implements ad {

    /* renamed from: a  reason: collision with root package name */
    private byte f6304a;

    /* renamed from: b  reason: collision with root package name */
    private final x f6305b;

    /* renamed from: c  reason: collision with root package name */
    private final Inflater f6306c;

    /* renamed from: d  reason: collision with root package name */
    private final o f6307d;
    private final CRC32 e = new CRC32();

    public n(ad source) {
        p.d(source, "source");
        x xVar = new x(source);
        this.f6305b = xVar;
        Inflater inflater = new Inflater(true);
        this.f6306c = inflater;
        this.f6307d = new o((h) xVar, inflater);
    }

    private final void a(f fVar, long j, long j2) {
        y yVar = fVar.f6288a;
        p.a(yVar);
        while (j >= yVar.f6341c - yVar.f6340b) {
            j -= yVar.f6341c - yVar.f6340b;
            yVar = yVar.f;
            p.a(yVar);
        }
        while (j2 > 0) {
            int i = (int) (yVar.f6340b + j);
            int min = (int) Math.min(yVar.f6341c - i, j2);
            this.e.update(yVar.f6339a, i, min);
            j2 -= min;
            yVar = yVar.f;
            p.a(yVar);
            j = 0;
        }
    }

    private static void a(String str, int i, int i2) {
        if (i2 != i) {
            String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3));
            p.b(format, "java.lang.String.format(this, *args)");
            throw new IOException(format);
        }
    }

    @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f6307d.close();
    }

    @Override // c.ad
    public final long read(f sink, long j) throws IOException {
        p.d(sink, "sink");
        boolean z = false;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0)) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        } else if (i == 0) {
            return 0L;
        } else {
            if (this.f6304a == 0) {
                this.f6305b.a(10L);
                byte c2 = this.f6305b.f6335a.c(3L);
                boolean z2 = ((c2 >> 1) & 1) == 1;
                if (z2) {
                    a(this.f6305b.f6335a, 0L, 10L);
                }
                a("ID1ID2", 8075, this.f6305b.j());
                this.f6305b.h(8L);
                if (((c2 >> 2) & 1) == 1) {
                    this.f6305b.a(2L);
                    if (z2) {
                        a(this.f6305b.f6335a, 0L, 2L);
                    }
                    long m = this.f6305b.f6335a.m();
                    this.f6305b.a(m);
                    if (z2) {
                        a(this.f6305b.f6335a, 0L, m);
                    }
                    this.f6305b.h(m);
                }
                if (((c2 >> 3) & 1) == 1) {
                    long d2 = this.f6305b.d();
                    if (d2 != -1) {
                        if (z2) {
                            a(this.f6305b.f6335a, 0L, d2 + 1);
                        }
                        this.f6305b.h(d2 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((c2 >> 4) & 1) == 1) {
                    z = true;
                }
                if (z) {
                    long d3 = this.f6305b.d();
                    if (d3 != -1) {
                        if (z2) {
                            a(this.f6305b.f6335a, 0L, d3 + 1);
                        }
                        this.f6305b.h(d3 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (z2) {
                    x xVar = this.f6305b;
                    xVar.a(2L);
                    a("FHCRC", xVar.f6335a.m(), (short) this.e.getValue());
                    this.e.reset();
                }
                this.f6304a = (byte) 1;
            }
            if (this.f6304a == 1) {
                long j2 = sink.f6289b;
                long read = this.f6307d.read(sink, j);
                if (read != -1) {
                    a(sink, j2, read);
                    return read;
                }
                this.f6304a = (byte) 2;
            }
            if (this.f6304a != 2) {
                return -1L;
            }
            a("CRC", this.f6305b.c(), (int) this.e.getValue());
            a("ISIZE", this.f6305b.c(), (int) this.f6306c.getBytesWritten());
            this.f6304a = (byte) 3;
            if (this.f6305b.e()) {
                return -1L;
            }
            throw new IOException("gzip finished without exhausting source");
        }
    }

    @Override // c.ad
    public final ae timeout() {
        return this.f6305b.timeout();
    }
}
