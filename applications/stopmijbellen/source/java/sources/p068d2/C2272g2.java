package p068d2;

import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: d2.g2 */
/* loaded from: classes-dex2jar.jar:d2/g2.class */
public class C2272g2 {

    /* renamed from: b */
    public int f8168b;

    /* renamed from: c */
    public long f8169c;

    /* renamed from: f */
    public boolean f8172f;

    /* renamed from: i */
    public boolean f8175i;

    /* renamed from: j */
    public boolean f8176j;

    /* renamed from: k */
    public C2355k2 f8177k;

    /* renamed from: a */
    public long f8167a = 1800000;

    /* renamed from: d */
    public boolean f8170d = true;

    /* renamed from: e */
    public boolean f8171e = true;

    /* renamed from: g */
    public boolean f8173g = false;

    /* renamed from: h */
    public boolean f8174h = false;

    /* renamed from: d2.g2$a */
    /* loaded from: classes-dex2jar.jar:d2/g2$a.class */
    public class RunnableC2273a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2441x3 f8178a;

        /* renamed from: b */
        public final /* synthetic */ C2230f1 f8179b;

        public RunnableC2273a(C2272g2 c2272g2, C2441x3 c2441x3, C2230f1 c2230f1) {
            this.f8178a = c2441x3;
            this.f8179b = c2230f1;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8178a.m3553g();
            this.f8179b.m3718p().m3685f();
        }
    }

    /* renamed from: d2.g2$b */
    /* loaded from: classes-dex2jar.jar:d2/g2$b.class */
    public class RunnableC2274b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f8180a;

        public RunnableC2274b(boolean z) {
            C2272g2.this = r4;
            this.f8180a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList<AbstractC2463z0> arrayList = C2408t.m3591d().m3717q().f8565a;
            synchronized (arrayList) {
                Iterator<AbstractC2463z0> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    AbstractC2463z0 next = it2.next();
                    C2267f4 c2267f4 = new C2267f4();
                    C2227e4.m3739n(c2267f4, "from_window_focus", this.f8180a);
                    C2272g2 c2272g2 = C2272g2.this;
                    if (c2272g2.f8174h && !c2272g2.f8173g) {
                        C2227e4.m3739n(c2267f4, "app_in_foreground", false);
                        C2272g2.this.f8174h = false;
                    }
                    new C2410t0("SessionInfo.on_pause", next.mo3529d(), c2267f4).m3586b();
                }
            }
            C2408t.m3588g();
        }
    }

    /* renamed from: d2.g2$c */
    /* loaded from: classes-dex2jar.jar:d2/g2$c.class */
    public class RunnableC2275c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f8182a;

        public RunnableC2275c(boolean z) {
            C2272g2.this = r4;
            this.f8182a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2230f1 m3591d = C2408t.m3591d();
            ArrayList<AbstractC2463z0> arrayList = m3591d.m3717q().f8565a;
            synchronized (arrayList) {
                Iterator<AbstractC2463z0> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    AbstractC2463z0 next = it2.next();
                    C2267f4 c2267f4 = new C2267f4();
                    C2227e4.m3739n(c2267f4, "from_window_focus", this.f8182a);
                    C2272g2 c2272g2 = C2272g2.this;
                    if (c2272g2.f8174h && c2272g2.f8173g) {
                        C2227e4.m3739n(c2267f4, "app_in_foreground", true);
                        C2272g2.this.f8174h = false;
                    }
                    new C2410t0("SessionInfo.on_resume", next.mo3529d(), c2267f4).m3586b();
                }
            }
            m3591d.m3718p().m3685f();
        }
    }

    /* renamed from: a */
    public void m3695a(boolean z) {
        this.f8171e = true;
        C2355k2 c2355k2 = this.f8177k;
        if (c2355k2.f8362b == null) {
            try {
                c2355k2.f8362b = c2355k2.f8361a.schedule(new RunnableC2314i2(c2355k2), c2355k2.f8364d.f8167a, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                StringBuilder m8752j = C0082b.m8752j("RejectedExecutionException when scheduling session stop ");
                m8752j.append(e.toString());
                C0082b.m8750l(0, 0, m8752j.toString(), true);
            }
        }
        if (!C2168b.m3792f(new RunnableC2274b(z))) {
            C0082b.m8750l(0, 0, C0608b.m7626i("RejectedExecutionException on session pause."), true);
        }
    }

    /* renamed from: b */
    public void m3694b(boolean z) {
        this.f8171e = false;
        C2355k2 c2355k2 = this.f8177k;
        ScheduledFuture<?> scheduledFuture = c2355k2.f8362b;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            c2355k2.f8362b.cancel(false);
            c2355k2.f8362b = null;
        }
        if (!C2168b.m3792f(new RunnableC2275c(z))) {
            C0082b.m8750l(0, 0, C0608b.m7626i("RejectedExecutionException on session resume."), true);
        }
    }

    /* renamed from: c */
    public void m3693c(boolean z) {
        C2230f1 m3591d = C2408t.m3591d();
        if (this.f8172f) {
            return;
        }
        if (this.f8175i) {
            m3591d.f8064B = false;
            this.f8175i = false;
        }
        this.f8168b = 0;
        this.f8169c = SystemClock.uptimeMillis();
        this.f8170d = true;
        this.f8172f = true;
        this.f8173g = true;
        this.f8174h = false;
        if (C2168b.f7919a.isShutdown()) {
            C2168b.f7919a = Executors.newSingleThreadExecutor();
        }
        if (z) {
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, C2315i3.m3666e());
            new C2410t0("SessionInfo.on_start", 1, c2267f4).m3586b();
            C2441x3 c2441x3 = (C2441x3) C2408t.m3591d().m3717q().f8566b.get(1);
            if (c2441x3 != null && !C2168b.m3792f(new RunnableC2273a(this, c2441x3, m3591d))) {
                C0082b.m8750l(0, 0, C0608b.m7626i("RejectedExecutionException on controller update."), true);
            }
        }
        m3591d.m3717q().m3571i();
        C2197d3.m3765d().f8021e.clear();
    }

    /* renamed from: d */
    public void m3692d(boolean z) {
        if (z && this.f8171e) {
            m3694b(false);
        } else if (!z && !this.f8171e) {
            m3695a(false);
        }
        this.f8170d = z;
    }
}
