package p131c.p161d.p282e.p340u.p342e;

import com.google.firebase.perf.util.StorageUnit;
import com.google.firebase.perf.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5998f;
import p131c.p161d.p282e.p340u.p350m.C6004c;
/* renamed from: c.d.e.u.e.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/e/f.class */
public class C5953f {

    /* renamed from: f */
    public static final C5969a f19326f = C5969a.m22496a();

    /* renamed from: g */
    public static final C5953f f19327g = new C5953f();

    /* renamed from: a */
    public final ScheduledExecutorService f19328a;

    /* renamed from: b */
    public final ConcurrentLinkedQueue<C6004c> f19329b;

    /* renamed from: c */
    public final Runtime f19330c;

    /* renamed from: d */
    public ScheduledFuture f19331d;

    /* renamed from: e */
    public long f19332e;

    public C5953f() {
        this(Executors.newSingleThreadScheduledExecutor(), Runtime.getRuntime());
    }

    public C5953f(ScheduledExecutorService scheduledExecutorService, Runtime runtime) {
        this.f19331d = null;
        this.f19332e = -1L;
        this.f19328a = scheduledExecutorService;
        this.f19329b = new ConcurrentLinkedQueue<>();
        this.f19330c = runtime;
    }

    /* renamed from: a */
    public static /* synthetic */ void m22576a(C5953f fVar, Timer timer) {
        C6004c c = fVar.m22569c(timer);
        if (c != null) {
            fVar.f19329b.add(c);
        }
    }

    /* renamed from: a */
    public static boolean m22578a(long j) {
        return j <= 0;
    }

    /* renamed from: b */
    public static /* synthetic */ void m22572b(C5953f fVar, Timer timer) {
        C6004c c = fVar.m22569c(timer);
        if (c != null) {
            fVar.f19329b.add(c);
        }
    }

    /* renamed from: c */
    public static C5953f m22570c() {
        return f19327g;
    }

    /* renamed from: a */
    public final int m22579a() {
        return C5998f.m22360a(StorageUnit.BYTES.toKilobytes(this.f19330c.totalMemory() - this.f19330c.freeMemory()));
    }

    /* renamed from: a */
    public final void m22577a(long j, Timer timer) {
        synchronized (this) {
            this.f19332e = j;
            try {
                this.f19331d = this.f19328a.scheduleAtFixedRate(RunnableC5951d.m22581a(this, timer), 0L, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                C5969a aVar = f19326f;
                aVar.m22491d("Unable to start collecting Memory Metrics: " + e.getMessage(), new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public void m22575a(Timer timer) {
        m22571b(timer);
    }

    /* renamed from: b */
    public void m22574b() {
        ScheduledFuture scheduledFuture = this.f19331d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            this.f19331d = null;
            this.f19332e = -1L;
        }
    }

    /* renamed from: b */
    public void m22573b(long j, Timer timer) {
        if (!m22578a(j)) {
            if (this.f19331d == null) {
                m22577a(j, timer);
            } else if (this.f19332e != j) {
                m22574b();
                m22577a(j, timer);
            }
        }
    }

    /* renamed from: b */
    public final void m22571b(Timer timer) {
        synchronized (this) {
            try {
                this.f19328a.schedule(RunnableC5952e.m22580a(this, timer), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                C5969a aVar = f19326f;
                aVar.m22491d("Unable to collect Memory Metric: " + e.getMessage(), new Object[0]);
            }
        }
    }

    /* renamed from: c */
    public final C6004c m22569c(Timer timer) {
        if (timer == null) {
            return null;
        }
        long a = timer.m7219a();
        C6004c.C6006b w = C6004c.m22336w();
        w.m22334a(a);
        w.m22335a(m22579a());
        return w.mo6937a();
    }
}
