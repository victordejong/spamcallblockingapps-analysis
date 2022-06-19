package p158l6;

import android.annotation.SuppressLint;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p104g6.C2905a;
import p180n6.C3729e;
import p180n6.C3731f;
import p180n6.EnumC3723d;
import p191o6.C3894b;
import p293y2.RunnableC4984d;
/* renamed from: l6.f */
/* loaded from: classes-dex2jar.jar:l6/f.class */
public class C3509f {

    /* renamed from: f */
    public static final C2905a f11647f = C2905a.m2869b();
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: g */
    public static final C3509f f11648g = new C3509f();

    /* renamed from: a */
    public final ScheduledExecutorService f11649a;

    /* renamed from: c */
    public final Runtime f11651c;

    /* renamed from: d */
    public ScheduledFuture f11652d = null;

    /* renamed from: e */
    public long f11653e = -1;

    /* renamed from: b */
    public final ConcurrentLinkedQueue<C3894b> f11650b = new ConcurrentLinkedQueue<>();

    public C3509f() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        Runtime runtime = Runtime.getRuntime();
        this.f11649a = newSingleThreadScheduledExecutor;
        this.f11651c = runtime;
    }

    /* renamed from: a */
    public final void m2221a(long j, C3729e c3729e) {
        synchronized (this) {
            this.f11653e = j;
            try {
                this.f11652d = this.f11649a.scheduleAtFixedRate(new RunnableC4984d(this, c3729e, 2), 0L, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                C2905a c2905a = f11647f;
                c2905a.m2866e("Unable to start collecting Memory Metrics: " + e.getMessage());
            }
        }
    }

    /* renamed from: b */
    public final C3894b m2220b(C3729e c3729e) {
        if (c3729e == null) {
            return null;
        }
        long j = c3729e.f12119a;
        long m1840a = c3729e.m1840a();
        C3894b.C3896b m1719B = C3894b.m1719B();
        m1719B.m4282n();
        C3894b.m1717z((C3894b) m1719B.f7078b, m1840a + j);
        int m1836b = C3731f.m1836b(EnumC3723d.f12116d.m1841a(this.f11651c.totalMemory() - this.f11651c.freeMemory()));
        m1719B.m4282n();
        C3894b.m1720A((C3894b) m1719B.f7078b, m1836b);
        return m1719B.m4284l();
    }
}
