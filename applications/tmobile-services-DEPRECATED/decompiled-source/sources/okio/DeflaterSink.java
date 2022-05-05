package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0001\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b \u0010!B\u0019\b��\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b \u0010\"J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\u0002H��¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lokio/DeflaterSink;", "Lokio/Sink;", "", "close", "()V", "", "syncFlush", "deflate", "(Z)V", "finishDeflate$okio", "finishDeflate", "flush", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "toString", "()Ljava/lang/String;", "Lokio/Buffer;", "source", "", "byteCount", "write", "(Lokio/Buffer;J)V", "closed", "Z", "Ljava/util/zip/Deflater;", "deflater", "Ljava/util/zip/Deflater;", "Lokio/BufferedSink;", "sink", "Lokio/BufferedSink;", "<init>", "(Lokio/Sink;Ljava/util/zip/Deflater;)V", "(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/DeflaterSink.class */
public final class DeflaterSink implements Sink {

    /* renamed from: f */
    private boolean f24141f;

    /* renamed from: g */
    private final BufferedSink f24142g;

    /* renamed from: h */
    private final Deflater f24143h;

    public DeflaterSink(@NotNull BufferedSink sink, @NotNull Deflater deflater) {
        Intrinsics.m1830e(sink, "sink");
        Intrinsics.m1830e(deflater, "deflater");
        this.f24142g = sink;
        this.f24143h = deflater;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DeflaterSink(@NotNull Sink sink, @NotNull Deflater deflater) {
        this(Okio.m144c(sink), deflater);
        Intrinsics.m1830e(sink, "sink");
        Intrinsics.m1830e(deflater, "deflater");
    }

    @IgnoreJRERequirement
    /* renamed from: a */
    private final void m159a(boolean z) {
        Segment y0;
        int i;
        Buffer c = this.f24142g.mo76c();
        while (true) {
            y0 = c.m185y0(1);
            if (z) {
                Deflater deflater = this.f24143h;
                byte[] bArr = y0.f24196a;
                int i2 = y0.f24198c;
                i = deflater.deflate(bArr, i2, 8192 - i2, 2);
            } else {
                Deflater deflater2 = this.f24143h;
                byte[] bArr2 = y0.f24196a;
                int i3 = y0.f24198c;
                i = deflater2.deflate(bArr2, i3, 8192 - i3);
            }
            if (i > 0) {
                y0.f24198c += i;
                c.m189u0(c.m188v0() + i);
                this.f24142g.mo99F();
            } else if (this.f24143h.needsInput()) {
                break;
            }
        }
        if (y0.f24197b == y0.f24198c) {
            c.f24125f = y0.m58b();
            SegmentPool.m51b(y0);
        }
    }

    /* renamed from: b */
    public final void m158b() {
        this.f24143h.finish();
        m159a(false);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th;
        Throwable th2;
        if (!this.f24141f) {
            Throwable th3 = null;
            try {
                m158b();
            } catch (Throwable th4) {
                th3 = th4;
            }
            try {
                this.f24143h.end();
                th = th3;
            } catch (Throwable th5) {
                th = th5;
                th = th3;
                if (th3 == null) {
                }
            }
            try {
                this.f24142g.close();
                th2 = th;
            } catch (Throwable th6) {
                th2 = th6;
                th2 = th;
                if (th == null) {
                }
            }
            this.f24141f = true;
            if (th2 != null) {
                throw th2;
            }
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        m159a(true);
        this.f24142g.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f24142g.timeout();
    }

    @NotNull
    public String toString() {
        return "DeflaterSink(" + this.f24142g + ')';
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j) throws IOException {
        Intrinsics.m1830e(source, "source");
        _Util.m23b(source.m188v0(), 0L, j);
        while (j > 0) {
            Segment segment = source.f24125f;
            Intrinsics.m1832c(segment);
            int min = (int) Math.min(j, segment.f24198c - segment.f24197b);
            this.f24143h.setInput(segment.f24196a, segment.f24197b, min);
            m159a(false);
            long j2 = min;
            source.m189u0(source.m188v0() - j2);
            int i = segment.f24197b + min;
            segment.f24197b = i;
            if (i == segment.f24198c) {
                source.f24125f = segment.m58b();
                SegmentPool.m51b(segment);
            }
            j -= j2;
        }
    }
}
