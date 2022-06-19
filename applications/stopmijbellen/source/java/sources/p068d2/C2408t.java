package p068d2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.p012v4.media.C0082b;
/* renamed from: d2.t */
/* loaded from: classes-dex2jar.jar:d2/t.class */
public class C2408t {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    public static Context f8531a;

    /* renamed from: b */
    public static C2230f1 f8532b;

    /* renamed from: c */
    public static boolean f8533c;

    /* renamed from: d */
    public static boolean f8534d;

    /* renamed from: d2.t$a */
    /* loaded from: classes-dex2jar.jar:d2/t$a.class */
    public class RunnableC2409a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f8535a;

        public RunnableC2409a(Context context) {
            this.f8535a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2408t.f8532b.m3725i(this.f8535a, null);
        }
    }

    /* renamed from: a */
    public static AbstractC2458y0 m3594a(String str, AbstractC2458y0 abstractC2458y0) {
        m3591d().m3717q().m3576d(str, abstractC2458y0);
        return abstractC2458y0;
    }

    /* renamed from: b */
    public static void m3593b(Context context, C2357l c2357l, boolean z) {
        f8531a = context;
        f8534d = true;
        if (f8532b == null) {
            f8532b = new C2230f1();
            c2357l.m3629c(context);
            f8532b.m3727g(c2357l, z);
        } else {
            c2357l.m3629c(context);
            C2230f1 c2230f1 = f8532b;
            c2230f1.f8066D = false;
            c2230f1.f8089d.m3633f();
            c2230f1.m3729e();
            C2168b.m3796b(f8531a, c2357l);
            c2230f1.m3726h(1);
            c2230f1.f8106u.clear();
            c2230f1.f8103r = c2357l;
            c2230f1.f8086a.m3578b();
            c2230f1.m3724j(true, true);
        }
        if (!C2315i3.m3661j(new RunnableC2409a(context))) {
            C0082b.m8750l(0, 0, "Executing ADC.configure queryAdvertisingId failed", true);
        }
        C0082b.m8750l(0, 2, "Configuring AdColony", false);
        C2230f1 c2230f12 = f8532b;
        c2230f12.f8064B = false;
        c2230f12.m3733a().f8176j = false;
        C2230f1 c2230f13 = f8532b;
        c2230f13.f8067E = true;
        c2230f13.m3733a().m3693c(false);
        f8532b.m3733a().m3692d(true);
    }

    /* renamed from: c */
    public static void m3592c(String str, AbstractC2458y0 abstractC2458y0) {
        m3591d().m3717q().m3576d(str, abstractC2458y0);
    }

    /* renamed from: d */
    public static C2230f1 m3591d() {
        if (!m3589f()) {
            Context context = f8531a;
            if (context == null) {
                return new C2230f1();
            }
            f8532b = new C2230f1();
            C2267f4 m3736q = C2227e4.m3736q(context.getFilesDir().getAbsolutePath() + "/adc3/AppInfo");
            C2200d4 m3750c = C2227e4.m3750c(m3736q, "zoneIds");
            String m3697o = m3736q.m3697o("appId");
            C2357l c2357l = new C2357l();
            c2357l.m3631a(m3697o);
            c2357l.m3630b(C2227e4.m3743j(m3750c));
            f8532b.m3727g(c2357l, false);
        }
        return f8532b;
    }

    /* renamed from: e */
    public static boolean m3590e() {
        return f8531a != null;
    }

    /* renamed from: f */
    public static boolean m3589f() {
        return f8532b != null;
    }

    /* renamed from: g */
    public static void m3588g() {
        C2417u0 m3717q = m3591d().m3717q();
        synchronized (m3717q.f8565a) {
            int size = m3717q.f8565a.size();
            while (true) {
                size--;
                if (size >= 0) {
                    m3717q.f8565a.get(size).mo3531b();
                }
            }
        }
    }
}
