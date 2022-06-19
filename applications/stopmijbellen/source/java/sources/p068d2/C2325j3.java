package p068d2;

import java.util.Date;
import java.util.Objects;
import p068d2.C2315i3;
/* renamed from: d2.j3 */
/* loaded from: classes-dex2jar.jar:d2/j3.class */
public class C2325j3 {

    /* renamed from: a */
    public boolean f8319a = true;

    /* renamed from: b */
    public final Runnable f8320b = new RunnableC2326a();

    /* renamed from: c */
    public Runnable f8321c;

    /* renamed from: d */
    public C2327b f8322d;

    /* renamed from: d2.j3$a */
    /* loaded from: classes-dex2jar.jar:d2/j3$a.class */
    public class RunnableC2326a implements Runnable {
        public RunnableC2326a() {
            C2325j3.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            new C2410t0("AdColony.heartbeat", 1).m3586b();
            C2325j3 c2325j3 = C2325j3.this;
            Objects.requireNonNull(c2325j3);
            if (!C2408t.m3589f()) {
                return;
            }
            C2315i3.C2318c c2318c = new C2315i3.C2318c(C2408t.m3591d().f8084V);
            RunnableC2356k3 runnableC2356k3 = new RunnableC2356k3(c2325j3, c2318c);
            c2325j3.f8321c = runnableC2356k3;
            C2315i3.m3660k(runnableC2356k3, c2318c.m3642b());
        }
    }

    /* renamed from: d2.j3$b */
    /* loaded from: classes-dex2jar.jar:d2/j3$b.class */
    public static class C2327b {

        /* renamed from: a */
        public final C2267f4 f8324a;

        public C2327b(C2267f4 c2267f4, RunnableC2326a runnableC2326a) {
            C2267f4 m3700l = c2267f4 != null ? c2267f4.m3700l("payload") : new C2267f4();
            this.f8324a = m3700l;
            C2227e4.m3744i(m3700l, "heartbeatLastTimestamp", C2436x.f8615e.format(new Date()));
        }

        public String toString() {
            return this.f8324a.toString();
        }
    }
}
