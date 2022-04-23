package p131c.p135b.p136a.p148e;

import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p143d.p147e.C2168c;
import p131c.p135b.p136a.p148e.C2251d;
/* renamed from: c.b.a.e.s */
/* loaded from: classes-dex2jar.jar:c/b/a/e/s.class */
public class C2371s {

    /* renamed from: a */
    public final C2341l f9224a;

    /* renamed from: c */
    public long f9226c;

    /* renamed from: f */
    public long f9229f;

    /* renamed from: b */
    public final AtomicBoolean f9225b = new AtomicBoolean();

    /* renamed from: d */
    public final Object f9227d = new Object();

    /* renamed from: e */
    public final AtomicBoolean f9228e = new AtomicBoolean();

    /* renamed from: c.b.a.e.s$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/s$a.class */
    public class RunnableC2372a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f9230a;

        public RunnableC2372a(long j) {
            this.f9230a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2371s.this.m30060a() && System.currentTimeMillis() - C2371s.this.f9229f >= this.f9230a) {
                C2371s.this.f9224a.m30262d0().m30044b("FullScreenAdTracker", "Resetting \"pending display\" state...");
                C2371s.this.f9228e.set(false);
            }
        }
    }

    /* renamed from: c.b.a.e.s$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/s$b.class */
    public class RunnableC2373b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f9232a;

        /* renamed from: b */
        public final /* synthetic */ Object f9233b;

        public RunnableC2373b(long j, Object obj) {
            this.f9232a = j;
            this.f9233b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2371s.this.f9225b.get() && System.currentTimeMillis() - C2371s.this.f9226c >= this.f9232a) {
                C2371s.this.f9224a.m30262d0().m30044b("FullScreenAdTracker", "Resetting \"display\" state...");
                C2371s.this.m30054b(this.f9233b);
            }
        }
    }

    public C2371s(C2341l lVar) {
        this.f9224a = lVar;
    }

    /* renamed from: a */
    public void m30058a(Object obj) {
        this.f9224a.m30316F().m30203a(obj);
        if (!C2168c.m30807a(obj) && this.f9225b.compareAndSet(false, true)) {
            this.f9226c = System.currentTimeMillis();
            C2374t d0 = this.f9224a.m30262d0();
            d0.m30044b("FullScreenAdTracker", "Setting fullscreen ad displayed: " + this.f9226c);
            this.f9224a.m30317E().sendBroadcastWithAdObject("com.applovin.fullscreen_ad_displayed", obj);
            long longValue = ((Long) this.f9224a.m30291a(C2251d.C2256e.f8779z1)).longValue();
            if (longValue >= 0) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2373b(longValue, obj), longValue);
            }
        }
    }

    /* renamed from: a */
    public void m30057a(boolean z) {
        synchronized (this.f9227d) {
            this.f9228e.set(z);
            if (z) {
                this.f9229f = System.currentTimeMillis();
                C2374t d0 = this.f9224a.m30262d0();
                d0.m30044b("FullScreenAdTracker", "Setting fullscreen ad pending display: " + this.f9229f);
                long longValue = ((Long) this.f9224a.m30291a(C2251d.C2256e.f8774y1)).longValue();
                if (longValue >= 0) {
                    AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2372a(longValue), longValue);
                }
            } else {
                this.f9229f = 0L;
                C2374t d02 = this.f9224a.m30262d0();
                d02.m30044b("FullScreenAdTracker", "Setting fullscreen ad not pending display: " + System.currentTimeMillis());
            }
        }
    }

    /* renamed from: a */
    public boolean m30060a() {
        return this.f9228e.get();
    }

    /* renamed from: b */
    public void m30054b(Object obj) {
        this.f9224a.m30316F().m30201b(obj);
        if (!C2168c.m30807a(obj) && this.f9225b.compareAndSet(true, false)) {
            C2374t d0 = this.f9224a.m30262d0();
            d0.m30044b("FullScreenAdTracker", "Setting fullscreen ad hidden: " + System.currentTimeMillis());
            this.f9224a.m30317E().sendBroadcastWithAdObject("com.applovin.fullscreen_ad_hidden", obj);
        }
    }

    /* renamed from: b */
    public boolean m30056b() {
        return this.f9225b.get();
    }
}
