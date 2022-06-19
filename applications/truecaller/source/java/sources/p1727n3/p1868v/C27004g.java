package p1727n3.p1868v;

import com.razorpay.AnalyticsConstants;
import java.io.Closeable;
import java.util.concurrent.CancellationException;
import q3.a.i0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: n3.v.g */
/* loaded from: classes-dex2jar.jar:n3/v/g.class */
public final class C27004g implements Closeable, i0 {

    /* renamed from: a */
    public final f f75527a;

    public C27004g(f fVar) {
        l.e(fVar, AnalyticsConstants.CONTEXT);
        this.f75527a = fVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d.R(this.f75527a, (CancellationException) null, 1, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f75527a;
    }
}
