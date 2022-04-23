package c;

import com.appsflyer.internal.referrer.Payload;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "out", "Ljava/io/OutputStream;", "timeout", "Lokio/Timeout;", "(Ljava/io/OutputStream;Lokio/Timeout;)V", EventConstants.CLOSE, "", "flush", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/t.class */
final class t implements ab {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f6318a;

    /* renamed from: b  reason: collision with root package name */
    private final ae f6319b;

    public t(OutputStream out, ae timeout) {
        p.d(out, "out");
        p.d(timeout, "timeout");
        this.f6318a = out;
        this.f6319b = timeout;
    }

    @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6318a.close();
    }

    @Override // c.ab, java.io.Flushable
    public final void flush() {
        this.f6318a.flush();
    }

    @Override // c.ab
    public final ae timeout() {
        return this.f6319b;
    }

    public final String toString() {
        return "sink(" + this.f6318a + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // c.ab
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void write(c.f r8, long r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "source"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r8
            long r0 = r0.f6289b
            r1 = 0
            r2 = r9
            c.c.a(r0, r1, r2)
        L_0x000f:
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0094
            r0 = r7
            c.ae r0 = r0.f6319b
            r0.throwIfReached()
            r0 = r8
            c.y r0 = r0.f6288a
            r11 = r0
            r0 = r11
            kotlin.jvm.internal.p.a(r0)
            r0 = r9
            r1 = r11
            int r1 = r1.f6341c
            r2 = r11
            int r2 = r2.f6340b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r12 = r0
            r0 = r7
            java.io.OutputStream r0 = r0.f6318a
            r1 = r11
            byte[] r1 = r1.f6339a
            r2 = r11
            int r2 = r2.f6340b
            r3 = r12
            r0.write(r1, r2, r3)
            r0 = r11
            r1 = r11
            int r1 = r1.f6340b
            r2 = r12
            int r1 = r1 + r2
            r0.f6340b = r1
            r0 = r12
            long r0 = (long) r0
            r13 = r0
            r0 = r9
            r1 = r13
            long r0 = r0 - r1
            r15 = r0
            r0 = r8
            r1 = r8
            long r1 = r1.f6289b
            r2 = r13
            long r1 = r1 - r2
            r0.f6289b = r1
            r0 = r15
            r9 = r0
            r0 = r11
            int r0 = r0.f6340b
            r1 = r11
            int r1 = r1.f6341c
            if (r0 != r1) goto L_0x000f
            r0 = r8
            r1 = r11
            c.y r1 = r1.c()
            r0.f6288a = r1
            r0 = r11
            c.z.a(r0)
            r0 = r15
            r9 = r0
            goto L_0x000f
        L_0x0094:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.t.write(c.f, long):void");
    }
}
