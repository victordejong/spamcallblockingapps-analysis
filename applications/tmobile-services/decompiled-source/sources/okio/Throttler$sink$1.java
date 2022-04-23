package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"okio/Throttler$sink$1", "Lokio/ForwardingSink;", "Lokio/Buffer;", "source", "", "byteCount", "", "write", "(Lokio/Buffer;J)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Throttler$sink$1.class */
public final class Throttler$sink$1 extends ForwardingSink {

    /* renamed from: f */
    final /* synthetic */ Throttler f24215f;

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@NotNull Buffer source, long j) throws IOException {
        Intrinsics.m1830e(source, "source");
        while (j > 0) {
            try {
                long d = this.f24215f.m32d(j);
                super.write(source, d);
                j -= d;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException("interrupted");
            }
        }
    }
}
