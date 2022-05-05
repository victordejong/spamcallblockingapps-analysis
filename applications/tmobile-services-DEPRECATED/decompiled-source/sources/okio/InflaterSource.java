package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u0001\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010\u001fB\u0019\b��\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010 J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lokio/InflaterSource;", "Lokio/Source;", "", "close", "()V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "readOrInflate", "", "refill", "()Z", "releaseBytesAfterInflate", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "bufferBytesHeldByInflater", "I", "closed", "Z", "Ljava/util/zip/Inflater;", "inflater", "Ljava/util/zip/Inflater;", "Lokio/BufferedSource;", "source", "Lokio/BufferedSource;", "<init>", "(Lokio/Source;Ljava/util/zip/Inflater;)V", "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/InflaterSource.class */
public final class InflaterSource implements Source {

    /* renamed from: f */
    private int f24159f;

    /* renamed from: g */
    private boolean f24160g;

    /* renamed from: h */
    private final BufferedSource f24161h;

    /* renamed from: i */
    private final Inflater f24162i;

    public InflaterSource(@NotNull BufferedSource source, @NotNull Inflater inflater) {
        Intrinsics.m1830e(source, "source");
        Intrinsics.m1830e(inflater, "inflater");
        this.f24161h = source;
        this.f24162i = inflater;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InflaterSource(@NotNull Source source, @NotNull Inflater inflater) {
        this(Okio.m143d(source), inflater);
        Intrinsics.m1830e(source, "source");
        Intrinsics.m1830e(inflater, "inflater");
    }

    /* renamed from: d */
    private final void m147d() {
        int i = this.f24159f;
        if (i != 0) {
            int remaining = i - this.f24162i.getRemaining();
            this.f24159f -= remaining;
            this.f24161h.skip(remaining);
        }
    }

    /* renamed from: a */
    public final long m149a(@NotNull Buffer sink, long j) throws IOException {
        Intrinsics.m1830e(sink, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!(!this.f24160g)) {
            throw new IllegalStateException("closed".toString());
        } else if (i == 0) {
            return 0L;
        } else {
            try {
                Segment y0 = sink.m185y0(1);
                int min = (int) Math.min(j, 8192 - y0.f24198c);
                m148b();
                int inflate = this.f24162i.inflate(y0.f24196a, y0.f24198c, min);
                m147d();
                if (inflate > 0) {
                    y0.f24198c += inflate;
                    long j2 = inflate;
                    sink.m189u0(sink.m188v0() + j2);
                    return j2;
                } else if (y0.f24197b != y0.f24198c) {
                    return 0L;
                } else {
                    sink.f24125f = y0.m58b();
                    SegmentPool.m51b(y0);
                    return 0L;
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
    }

    /* renamed from: b */
    public final boolean m148b() throws IOException {
        if (!this.f24162i.needsInput()) {
            return false;
        }
        if (this.f24161h.mo60z()) {
            return true;
        }
        Segment segment = this.f24161h.mo76c().f24125f;
        Intrinsics.m1832c(segment);
        int i = segment.f24198c;
        int i2 = segment.f24197b;
        int i3 = i - i2;
        this.f24159f = i3;
        this.f24162i.setInput(segment.f24196a, i2, i3);
        return false;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f24160g) {
            this.f24162i.end();
            this.f24160g = true;
            this.f24161h.close();
        }
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j) throws IOException {
        Intrinsics.m1830e(sink, "sink");
        do {
            long a = m149a(sink, j);
            if (a > 0) {
                return a;
            }
            if (this.f24162i.finished() || this.f24162i.needsDictionary()) {
                return -1L;
            }
        } while (!this.f24161h.mo60z());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f24161h.timeout();
    }
}
