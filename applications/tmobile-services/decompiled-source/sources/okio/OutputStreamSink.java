package okio;

import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0015¨\u0006\u0018"}, d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "", "close", "()V", "flush", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "toString", "()Ljava/lang/String;", "Lokio/Buffer;", "source", "", "byteCount", "write", "(Lokio/Buffer;J)V", "Ljava/io/OutputStream;", "out", "Ljava/io/OutputStream;", "Lokio/Timeout;", "<init>", "(Ljava/io/OutputStream;Lokio/Timeout;)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/OutputStreamSink.class */
public final class OutputStreamSink implements Sink {

    /* renamed from: f */
    private final OutputStream f24169f;

    /* renamed from: g */
    private final Timeout f24170g;

    public OutputStreamSink(@NotNull OutputStream out, @NotNull Timeout timeout) {
        Intrinsics.m1830e(out, "out");
        Intrinsics.m1830e(timeout, "timeout");
        this.f24169f = out;
        this.f24170g = timeout;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f24169f.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.f24169f.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f24170g;
    }

    @NotNull
    public String toString() {
        return "sink(" + this.f24169f + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // okio.Sink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(@org.jetbrains.annotations.NotNull okio.Buffer r8, long r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "source"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r8
            long r0 = r0.m188v0()
            r1 = 0
            r2 = r9
            okio._Util.m23b(r0, r1, r2)
        L_0x000f:
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0094
            r0 = r7
            okio.Timeout r0 = r0.f24170g
            r0.throwIfReached()
            r0 = r8
            okio.Segment r0 = r0.f24125f
            r11 = r0
            r0 = r11
            kotlin.jvm.internal.Intrinsics.m1832c(r0)
            r0 = r9
            r1 = r11
            int r1 = r1.f24198c
            r2 = r11
            int r2 = r2.f24197b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r12 = r0
            r0 = r7
            java.io.OutputStream r0 = r0.f24169f
            r1 = r11
            byte[] r1 = r1.f24196a
            r2 = r11
            int r2 = r2.f24197b
            r3 = r12
            r0.write(r1, r2, r3)
            r0 = r11
            r1 = r11
            int r1 = r1.f24197b
            r2 = r12
            int r1 = r1 + r2
            r0.f24197b = r1
            r0 = r12
            long r0 = (long) r0
            r13 = r0
            r0 = r9
            r1 = r13
            long r0 = r0 - r1
            r15 = r0
            r0 = r8
            r1 = r8
            long r1 = r1.m188v0()
            r2 = r13
            long r1 = r1 - r2
            r0.m189u0(r1)
            r0 = r15
            r9 = r0
            r0 = r11
            int r0 = r0.f24197b
            r1 = r11
            int r1 = r1.f24198c
            if (r0 != r1) goto L_0x000f
            r0 = r8
            r1 = r11
            okio.Segment r1 = r1.m58b()
            r0.f24125f = r1
            r0 = r11
            okio.SegmentPool.m51b(r0)
            r0 = r15
            r9 = r0
            goto L_0x000f
        L_0x0094:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.OutputStreamSink.write(okio.Buffer, long):void");
    }
}
