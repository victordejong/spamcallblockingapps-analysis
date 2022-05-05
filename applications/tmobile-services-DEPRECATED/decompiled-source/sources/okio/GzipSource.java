package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010(\u001a\u00020\u0001¢\u0006\u0004\b*\u0010+J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u001f\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010(\u001a\u00020'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", "", "name", "", "expected", "actual", "", "checkEqual", "(Ljava/lang/String;II)V", "close", "()V", "consumeHeader", "consumeTrailer", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "buffer", "offset", "updateCrc", "(Lokio/Buffer;JJ)V", "Ljava/util/zip/CRC32;", "crc", "Ljava/util/zip/CRC32;", "Ljava/util/zip/Inflater;", "inflater", "Ljava/util/zip/Inflater;", "Lokio/InflaterSource;", "inflaterSource", "Lokio/InflaterSource;", "", "section", "B", "Lokio/RealBufferedSource;", "source", "Lokio/RealBufferedSource;", "<init>", "(Lokio/Source;)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/GzipSource.class */
public final class GzipSource implements Source {

    /* renamed from: f */
    private byte f24150f;

    /* renamed from: g */
    private final RealBufferedSource f24151g;

    /* renamed from: h */
    private final Inflater f24152h;

    /* renamed from: i */
    private final InflaterSource f24153i;

    /* renamed from: j */
    private final CRC32 f24154j = new CRC32();

    public GzipSource(@NotNull Source source) {
        Intrinsics.m1830e(source, "source");
        this.f24151g = new RealBufferedSource(source);
        Inflater inflater = new Inflater(true);
        this.f24152h = inflater;
        this.f24153i = new InflaterSource((BufferedSource) this.f24151g, inflater);
    }

    /* renamed from: a */
    private final void m153a(String str, int i, int i2) {
        if (i2 != i) {
            String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3));
            Intrinsics.m1831d(format, "java.lang.String.format(this, *args)");
            throw new IOException(format);
        }
    }

    /* renamed from: b */
    private final void m152b() throws IOException {
        this.f24151g.mo66p0(10L);
        byte p = this.f24151g.f24192f.m192p(3L);
        boolean z = true;
        boolean z2 = ((p >> 1) & 1) == 1;
        if (z2) {
            m150e(this.f24151g.f24192f, 0L, 10L);
        }
        m153a("ID1ID2", 8075, this.f24151g.readShort());
        this.f24151g.skip(8L);
        if (((p >> 2) & 1) == 1) {
            this.f24151g.mo66p0(2L);
            if (z2) {
                m150e(this.f24151g.f24192f, 0L, 2L);
            }
            long Z = this.f24151g.f24192f.m204Z();
            this.f24151g.mo66p0(Z);
            if (z2) {
                m150e(this.f24151g.f24192f, 0L, Z);
            }
            this.f24151g.skip(Z);
        }
        if (((p >> 3) & 1) == 1) {
            long a = this.f24151g.m79a((byte) 0);
            if (a != -1) {
                if (z2) {
                    m150e(this.f24151g.f24192f, 0L, a + 1);
                }
                this.f24151g.skip(a + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((p >> 4) & 1) != 1) {
            z = false;
        }
        if (z) {
            long a2 = this.f24151g.m79a((byte) 0);
            if (a2 != -1) {
                if (z2) {
                    m150e(this.f24151g.f24192f, 0L, a2 + 1);
                }
                this.f24151g.skip(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z2) {
            m153a("FHCRC", this.f24151g.m69k(), (short) this.f24154j.getValue());
            this.f24154j.reset();
        }
    }

    /* renamed from: d */
    private final void m151d() throws IOException {
        m153a("CRC", this.f24151g.m71i(), (int) this.f24154j.getValue());
        m153a("ISIZE", this.f24151g.m71i(), (int) this.f24152h.getBytesWritten());
    }

    /* renamed from: e */
    private final void m150e(Buffer buffer, long j, long j2) {
        Segment segment = buffer.f24125f;
        Intrinsics.m1832c(segment);
        while (true) {
            int i = segment.f24198c;
            int i2 = segment.f24197b;
            if (j >= i - i2) {
                j -= i - i2;
                segment = segment.f24201f;
                Intrinsics.m1832c(segment);
            }
        }
        while (j2 > 0) {
            int i3 = (int) (segment.f24197b + j);
            int min = (int) Math.min(segment.f24198c - i3, j2);
            this.f24154j.update(segment.f24196a, i3, min);
            j2 -= min;
            segment = segment.f24201f;
            Intrinsics.m1832c(segment);
            j = 0;
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f24153i.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j) throws IOException {
        Intrinsics.m1830e(sink, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (i == 0) {
            return 0L;
        } else {
            if (this.f24150f == 0) {
                m152b();
                this.f24150f = (byte) 1;
            }
            if (this.f24150f == 1) {
                long v0 = sink.m188v0();
                long read = this.f24153i.read(sink, j);
                if (read != -1) {
                    m150e(sink, v0, read);
                    return read;
                }
                this.f24150f = (byte) 2;
            }
            if (this.f24150f != 2) {
                return -1L;
            }
            m151d();
            this.f24150f = (byte) 3;
            if (this.f24151g.mo60z()) {
                return -1L;
            }
            throw new IOException("gzip finished without exhausting source");
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f24151g.timeout();
    }
}
