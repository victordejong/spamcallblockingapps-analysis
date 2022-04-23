package p033i.p064c.p066b0.p070b;

import i.c.b0.e.a.d;
import i.c.b0.h.a;
import java.util.concurrent.TimeUnit;
import p033i.p064c.p066b0.p071c.AbstractC0477c;
/* renamed from: i.c.b0.b.d0 */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/d0.class */
public abstract class AbstractC0455d0 {

    /* renamed from: a */
    static final long f1056a = m94a(Long.getLong("rx3.scheduler.drift-tolerance", 15).longValue(), System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes"));

    /* renamed from: a */
    static long m94a(long j, String str) {
        return "seconds".equalsIgnoreCase(str) ? TimeUnit.SECONDS.toNanos(j) : "milliseconds".equalsIgnoreCase(str) ? TimeUnit.MILLISECONDS.toNanos(j) : TimeUnit.MINUTES.toNanos(j);
    }

    /* renamed from: b */
    public abstract c m93b();

    /* renamed from: c */
    public long m92c(TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: d */
    public AbstractC0477c m91d(Runnable runnable) {
        return m90e(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    /* renamed from: e */
    public AbstractC0477c m90e(Runnable runnable, long j, TimeUnit timeUnit) {
        c b = m93b();
        a aVar = new a(a.v(runnable), b);
        b.c(aVar, j, timeUnit);
        return aVar;
    }

    /* renamed from: f */
    public AbstractC0477c m89f(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        c b = m93b();
        b bVar = new b(a.v(runnable), b);
        d d = b.d(bVar, j, j2, timeUnit);
        return d == d.INSTANCE ? d : bVar;
    }
}
