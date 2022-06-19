package p068d2;

import com.applovin.sdk.AppLovinEventTypes;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: d2.h0 */
/* loaded from: classes-dex2jar.jar:d2/h0.class */
public class C2279h0 {

    /* renamed from: e */
    public static boolean f8191e = false;

    /* renamed from: f */
    public static int f8192f = 3;

    /* renamed from: g */
    public static int f8193g = 1;

    /* renamed from: a */
    public C2267f4 f8194a = new C2267f4();

    /* renamed from: b */
    public ExecutorService f8195b = null;

    /* renamed from: c */
    public final Queue<Runnable> f8196c = new ConcurrentLinkedQueue();

    /* renamed from: d */
    public C2195d2 f8197d;

    /* renamed from: d2.h0$a */
    /* loaded from: classes-dex2jar.jar:d2/h0$a.class */
    public class C2280a implements AbstractC2458y0 {
        public C2280a() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 0, c2410t0.f8537b.m3697o("message"), true);
        }
    }

    /* renamed from: d2.h0$b */
    /* loaded from: classes-dex2jar.jar:d2/h0$b.class */
    public class C2281b implements AbstractC2458y0 {
        public C2281b(C2279h0 c2279h0) {
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.f8192f = C2227e4.m3735r(c2410t0.f8537b, AppLovinEventTypes.USER_COMPLETED_LEVEL);
        }
    }

    /* renamed from: d2.h0$c */
    /* loaded from: classes-dex2jar.jar:d2/h0$c.class */
    public class C2282c implements AbstractC2458y0 {
        public C2282c() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 3, c2410t0.f8537b.m3697o("message"), false);
        }
    }

    /* renamed from: d2.h0$d */
    /* loaded from: classes-dex2jar.jar:d2/h0$d.class */
    public class C2283d implements AbstractC2458y0 {
        public C2283d() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 3, c2410t0.f8537b.m3697o("message"), true);
        }
    }

    /* renamed from: d2.h0$e */
    /* loaded from: classes-dex2jar.jar:d2/h0$e.class */
    public class C2284e implements AbstractC2458y0 {
        public C2284e() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 2, c2410t0.f8537b.m3697o("message"), false);
        }
    }

    /* renamed from: d2.h0$f */
    /* loaded from: classes-dex2jar.jar:d2/h0$f.class */
    public class C2285f implements AbstractC2458y0 {
        public C2285f() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 2, c2410t0.f8537b.m3697o("message"), true);
        }
    }

    /* renamed from: d2.h0$g */
    /* loaded from: classes-dex2jar.jar:d2/h0$g.class */
    public class C2286g implements AbstractC2458y0 {
        public C2286g() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 1, c2410t0.f8537b.m3697o("message"), false);
        }
    }

    /* renamed from: d2.h0$h */
    /* loaded from: classes-dex2jar.jar:d2/h0$h.class */
    public class C2287h implements AbstractC2458y0 {
        public C2287h() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 1, c2410t0.f8537b.m3697o("message"), true);
        }
    }

    /* renamed from: d2.h0$i */
    /* loaded from: classes-dex2jar.jar:d2/h0$i.class */
    public class C2288i implements AbstractC2458y0 {
        public C2288i() {
            C2279h0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2279h0.this.m3686e(C2227e4.m3735r(c2410t0.f8537b, "module"), 0, c2410t0.f8537b.m3697o("message"), false);
        }
    }

    /* renamed from: a */
    public boolean m3690a(C2267f4 c2267f4, int i) {
        int m3735r = C2227e4.m3735r(c2267f4, "send_level");
        if (c2267f4.m3707e() == 0) {
            m3735r = f8193g;
        }
        return m3735r >= i && m3735r != 4;
    }

    /* renamed from: b */
    public boolean m3689b(C2267f4 c2267f4, int i, boolean z) {
        int m3735r = C2227e4.m3735r(c2267f4, "print_level");
        boolean m3741l = C2227e4.m3741l(c2267f4, "log_private");
        if (c2267f4.m3707e() == 0) {
            m3735r = f8192f;
            m3741l = f8191e;
        }
        if ((!z || m3741l) && m3735r != 4) {
            boolean z2 = false;
            if (m3735r >= i) {
                z2 = true;
            }
            return z2;
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m3688c(Runnable runnable) {
        try {
            ExecutorService executorService = this.f8195b;
            if (executorService == null || executorService.isShutdown() || this.f8195b.isTerminated()) {
                return false;
            }
            this.f8195b.submit(runnable);
            return true;
        } catch (RejectedExecutionException e) {
            return false;
        }
    }

    /* renamed from: d */
    public void m3687d() {
        C2408t.m3592c("Log.set_log_level", new C2281b(this));
        C2408t.m3592c("Log.public.trace", new C2282c());
        C2408t.m3592c("Log.private.trace", new C2283d());
        C2408t.m3592c("Log.public.info", new C2284e());
        C2408t.m3592c("Log.private.info", new C2285f());
        C2408t.m3592c("Log.public.warning", new C2286g());
        C2408t.m3592c("Log.private.warning", new C2287h());
        C2408t.m3592c("Log.public.error", new C2288i());
        C2408t.m3592c("Log.private.error", new C2280a());
    }

    /* renamed from: e */
    public void m3686e(int i, int i2, String str, boolean z) {
        if (!m3688c(new RunnableC2312i0(this, i, str, i2, z))) {
            synchronized (this.f8196c) {
                this.f8196c.add(new RunnableC2312i0(this, i, str, i2, z));
            }
        }
    }

    /* renamed from: f */
    public void m3685f() {
        ExecutorService executorService = this.f8195b;
        if (executorService == null || executorService.isShutdown() || this.f8195b.isTerminated()) {
            this.f8195b = Executors.newSingleThreadExecutor();
        }
        synchronized (this.f8196c) {
            while (!this.f8196c.isEmpty()) {
                m3688c(this.f8196c.poll());
            }
        }
    }
}
