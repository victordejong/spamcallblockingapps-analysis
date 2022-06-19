package com.google.firebase.perf.p084g;

import android.content.Context;
import com.google.firebase.perf.config.a;
import com.google.firebase.perf.p085v1.C2486g;
import com.google.firebase.perf.p085v1.C2490i;
import com.google.firebase.perf.p085v1.SessionVerbosity;
import com.google.firebase.perf.util.C2446a;
import com.google.firebase.perf.util.C2451f;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.perf.g.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/d.class */
public final class C2423d {

    /* renamed from: a */
    private final float f10609a;

    /* renamed from: b */
    private boolean f10610b;

    /* renamed from: c */
    private C2424a f10611c;

    /* renamed from: d */
    private C2424a f10612d;

    /* renamed from: e */
    private final a f10613e;

    /* renamed from: com.google.firebase.perf.g.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/d$a.class */
    public static class C2424a {

        /* renamed from: k */
        private static final com.google.firebase.perf.f.a f10614k = com.google.firebase.perf.f.a.e();

        /* renamed from: l */
        private static final long f10615l = TimeUnit.SECONDS.toMicros(1);

        /* renamed from: a */
        private long f10616a;

        /* renamed from: b */
        private double f10617b;

        /* renamed from: c */
        private Timer f10618c;

        /* renamed from: d */
        private long f10619d;

        /* renamed from: e */
        private final C2446a f10620e;

        /* renamed from: f */
        private double f10621f;

        /* renamed from: g */
        private long f10622g;

        /* renamed from: h */
        private double f10623h;

        /* renamed from: i */
        private long f10624i;

        /* renamed from: j */
        private final boolean f10625j;

        C2424a(double d, long j, C2446a c2446a, a aVar, String str, boolean z) {
            this.f10620e = c2446a;
            this.f10616a = j;
            this.f10617b = d;
            this.f10619d = j;
            this.f10618c = c2446a.m3581a();
            m3693g(aVar, str, z);
            this.f10625j = z;
        }

        /* renamed from: c */
        private static long m3697c(a aVar, String str) {
            return str == "Trace" ? aVar.C() : aVar.o();
        }

        /* renamed from: d */
        private static long m3696d(a aVar, String str) {
            return str == "Trace" ? aVar.r() : aVar.r();
        }

        /* renamed from: e */
        private static long m3695e(a aVar, String str) {
            return str == "Trace" ? aVar.D() : aVar.p();
        }

        /* renamed from: f */
        private static long m3694f(a aVar, String str) {
            return str == "Trace" ? aVar.r() : aVar.r();
        }

        /* renamed from: g */
        private void m3693g(a aVar, String str, boolean z) {
            long m3694f = m3694f(aVar, str);
            long m3695e = m3695e(aVar, str);
            double d = m3695e;
            double d2 = m3694f;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d / d2;
            this.f10621f = d3;
            this.f10622g = m3695e;
            if (z) {
                f10614k.b("Foreground %s logging rate:%f, burst capacity:%d", new Object[]{str, Double.valueOf(d3), Long.valueOf(this.f10622g)});
            }
            long m3696d = m3696d(aVar, str);
            long m3697c = m3697c(aVar, str);
            double d4 = m3697c;
            double d5 = m3696d;
            Double.isNaN(d4);
            Double.isNaN(d5);
            double d6 = d4 / d5;
            this.f10623h = d6;
            this.f10624i = m3697c;
            if (z) {
                f10614k.b("Background %s logging rate:%f, capacity:%d", new Object[]{str, Double.valueOf(d6), Long.valueOf(this.f10624i)});
            }
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r0v13, types: [double] */
        /* JADX WARN: Type inference failed for: r0v15, types: [double] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        /* renamed from: a */
        void m3699a(boolean z) {
            synchronized (this) {
                this.f10617b = z ? this.f10621f : this.f10623h;
                this.f10616a = z ? this.f10622g : this.f10624i;
            }
        }

        /* renamed from: b */
        boolean m3698b(C2486g c2486g) {
            boolean z;
            synchronized (this) {
                Timer m3581a = this.f10620e.m3581a();
                double m3586c = this.f10618c.m3586c(m3581a);
                double d = this.f10617b;
                Double.isNaN(m3586c);
                double d2 = f10615l;
                Double.isNaN(d2);
                long min = Math.min(this.f10619d + Math.max(0L, (long) ((m3586c * d) / d2)), this.f10616a);
                this.f10619d = min;
                if (min > 0) {
                    this.f10619d = min - 1;
                    this.f10618c = m3581a;
                    z = true;
                } else {
                    if (this.f10625j) {
                        f10614k.i("Exceeded log rate limit, dropping the log.");
                    }
                    z = false;
                }
            }
            return z;
        }
    }

    C2423d(double d, long j, C2446a c2446a, float f, a aVar) {
        this.f10610b = false;
        this.f10611c = null;
        this.f10612d = null;
        boolean z = false;
        if (0.0f <= f) {
            z = false;
            if (f < 1.0f) {
                z = true;
            }
        }
        C2451f.m3568a(z, "Sampling bucket ID should be in range [0.0f, 1.0f).");
        this.f10609a = f;
        this.f10613e = aVar;
        this.f10611c = new C2424a(d, j, c2446a, aVar, "Trace", this.f10610b);
        this.f10612d = new C2424a(d, j, c2446a, aVar, "Network", this.f10610b);
    }

    public C2423d(Context context, double d, long j) {
        this(d, j, new C2446a(), m3704c(), a.f());
        this.f10610b = C2451f.m3567b(context);
    }

    /* renamed from: c */
    static float m3704c() {
        return new Random().nextFloat();
    }

    /* renamed from: d */
    private boolean m3703d(List<C2490i> list) {
        boolean z = false;
        if (list.size() > 0) {
            z = false;
            if (list.get(0).m3367X() > 0) {
                z = false;
                if (list.get(0).m3368W(0) == SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: e */
    private boolean m3702e() {
        return this.f10609a < this.f10613e.q();
    }

    /* renamed from: f */
    private boolean m3701f() {
        return this.f10609a < this.f10613e.E();
    }

    /* renamed from: a */
    public void m3706a(boolean z) {
        this.f10611c.m3699a(z);
        this.f10612d.m3699a(z);
    }

    /* renamed from: b */
    public boolean m3705b(C2486g c2486g) {
        C2424a c2424a;
        if (!c2486g.mo3377h() || m3701f() || m3703d(c2486g.mo3376j().m3337p0())) {
            if (c2486g.mo3375m() && !m3702e() && !m3703d(c2486g.mo3374n().m3527m0())) {
                return false;
            }
            if (!m3700g(c2486g)) {
                return true;
            }
            if (c2486g.mo3375m()) {
                c2424a = this.f10612d;
            } else if (!c2486g.mo3377h()) {
                return false;
            } else {
                c2424a = this.f10611c;
            }
            return c2424a.m3698b(c2486g);
        }
        return false;
    }

    /* renamed from: g */
    boolean m3700g(C2486g c2486g) {
        return (!c2486g.mo3377h() || ((!c2486g.mo3376j().m3338o0().equals(Constants$TraceNames.FOREGROUND_TRACE_NAME.toString()) && !c2486g.mo3376j().m3338o0().equals(Constants$TraceNames.BACKGROUND_TRACE_NAME.toString())) || c2486g.mo3376j().m3345h0() <= 0)) && !c2486g.mo3379b();
    }
}
