package okio;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��'\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000e¨\u0006\u000f"}, d2 = {"okio/Pipe$source$1", "Lokio/Source;", "", "close", "()V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Pipe$source$1.class */
public final class Pipe$source$1 implements Source {

    /* renamed from: f */
    private final Timeout f24186f;

    /* renamed from: g */
    final /* synthetic */ Pipe f24187g;

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f24187g.m109a()) {
            this.f24187g.m102h(true);
            Buffer a = this.f24187g.m109a();
            if (a != null) {
                a.notifyAll();
                Unit unit = Unit.f20447a;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
            }
        }
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j) {
        Intrinsics.m1830e(sink, "sink");
        synchronized (this.f24187g.m109a()) {
            if (!(!this.f24187g.m104f())) {
                throw new IllegalStateException("closed".toString());
            } else if (!this.f24187g.m108b()) {
                while (this.f24187g.m109a().m188v0() == 0) {
                    if (this.f24187g.m105e()) {
                        return -1L;
                    }
                    this.f24186f.waitUntilNotified(this.f24187g.m109a());
                    if (this.f24187g.m108b()) {
                        throw new IOException("canceled");
                    }
                }
                long read = this.f24187g.m109a().read(sink, j);
                Buffer a = this.f24187g.m109a();
                if (a != null) {
                    a.notifyAll();
                    return read;
                }
                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
            } else {
                throw new IOException("canceled");
            }
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f24186f;
    }
}
