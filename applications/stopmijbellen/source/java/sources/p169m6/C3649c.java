package p169m6;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.ads.C1676a;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import p015b0.C0713a;
import p081e6.C2583a;
import p081e6.C2588e;
import p081e6.C2589f;
import p081e6.C2600q;
import p081e6.C2601r;
import p104g6.C2905a;
import p104g6.C2906b;
import p180n6.C3720b;
import p180n6.C3721c;
import p180n6.C3729e;
import p180n6.C3731f;
import p191o6.C3924k;
import p191o6.EnumC3927l;
/* renamed from: m6.c */
/* loaded from: classes-dex2jar.jar:m6/c.class */
public final class C3649c {

    /* renamed from: a */
    public final C2583a f11946a;

    /* renamed from: b */
    public final float f11947b;

    /* renamed from: c */
    public C3650a f11948c;

    /* renamed from: d */
    public C3650a f11949d;

    /* renamed from: e */
    public boolean f11950e;

    /* renamed from: m6.c$a */
    /* loaded from: classes-dex2jar.jar:m6/c$a.class */
    public static class C3650a {

        /* renamed from: k */
        public static final C2905a f11951k = C2905a.m2869b();

        /* renamed from: l */
        public static final long f11952l = TimeUnit.SECONDS.toMicros(1);

        /* renamed from: a */
        public final C0713a f11953a;

        /* renamed from: b */
        public final boolean f11954b;

        /* renamed from: c */
        public C3729e f11955c = new C3729e();

        /* renamed from: d */
        public C3721c f11956d;

        /* renamed from: e */
        public long f11957e;

        /* renamed from: f */
        public long f11958f;

        /* renamed from: g */
        public C3721c f11959g;

        /* renamed from: h */
        public C3721c f11960h;

        /* renamed from: i */
        public long f11961i;

        /* renamed from: j */
        public long f11962j;

        /* JADX WARN: Type inference failed for: r0v104, types: [long] */
        /* JADX WARN: Type inference failed for: r0v106, types: [long] */
        /* JADX WARN: Type inference failed for: r0v132, types: [long] */
        /* JADX WARN: Type inference failed for: r0v138, types: [long] */
        /* JADX WARN: Type inference failed for: r0v148, types: [long] */
        /* JADX WARN: Type inference failed for: r0v168, types: [long] */
        /* JADX WARN: Type inference failed for: r0v174, types: [long] */
        /* JADX WARN: Type inference failed for: r0v184, types: [long] */
        /* JADX WARN: Type inference failed for: r0v189, types: [long] */
        /* JADX WARN: Type inference failed for: r0v191, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v53, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v83, types: [long] */
        /* JADX WARN: Type inference failed for: r0v89, types: [long] */
        /* JADX WARN: Type inference failed for: r0v99, types: [long] */
        public C3650a(C3721c c3721c, long j, C0713a c0713a, C2583a c2583a, String str, boolean z) {
            char c;
            char c2;
            C2588e c2588e;
            C2600q c2600q;
            C2589f c2589f;
            C2601r c2601r;
            this.f11953a = c0713a;
            this.f11957e = j;
            this.f11956d = c3721c;
            this.f11958f = j;
            Objects.requireNonNull(c0713a);
            char m3408i = str == "Trace" ? c2583a.m3408i() : c2583a.m3408i();
            if (str == "Trace") {
                synchronized (C2601r.class) {
                    try {
                        if (C2601r.f9028a == null) {
                            C2601r.f9028a = new C2601r();
                        }
                        c2601r = C2601r.f9028a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                C3720b<Long> m3406k = c2583a.m3406k(c2601r);
                if (!m3406k.m1843c() || !c2583a.m3405l(m3406k.m1844b().longValue())) {
                    C3720b<Long> m3414c = c2583a.m3414c(c2601r);
                    if (!m3414c.m1843c() || !c2583a.m3405l(m3414c.m1844b().longValue())) {
                        Long l = 300L;
                        c = l.longValue();
                    } else {
                        c = m3414c.m1844b().longValue();
                    }
                } else {
                    c = ((Long) C1676a.m4790g(m3406k.m1844b(), c2583a.f9010c, "com.google.firebase.perf.TraceEventCountForeground", m3406k)).longValue();
                }
            } else {
                synchronized (C2589f.class) {
                    try {
                        if (C2589f.f9016a == null) {
                            C2589f.f9016a = new C2589f();
                        }
                        c2589f = C2589f.f9016a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                C3720b<Long> m3406k2 = c2583a.m3406k(c2589f);
                if (!m3406k2.m1843c() || !c2583a.m3405l(m3406k2.m1844b().longValue())) {
                    C3720b<Long> m3414c2 = c2583a.m3414c(c2589f);
                    if (!m3414c2.m1843c() || !c2583a.m3405l(m3414c2.m1844b().longValue())) {
                        Long l2 = 700L;
                        c = l2.longValue();
                    } else {
                        c = m3414c2.m1844b().longValue();
                    }
                } else {
                    c = ((Long) C1676a.m4790g(m3406k2.m1844b(), c2583a.f9010c, "com.google.firebase.perf.NetworkEventCountForeground", m3406k2)).longValue();
                }
            }
            TimeUnit timeUnit = TimeUnit.SECONDS;
            C3721c c3721c2 = new C3721c(c, m3408i, timeUnit);
            this.f11959g = c3721c2;
            this.f11961i = c;
            if (z) {
                C2905a c2905a = f11951k;
                if (c2905a.f9793b) {
                    C2906b c2906b = c2905a.f9792a;
                    String.format(Locale.ENGLISH, "Foreground %s logging rate:%f, burst capacity:%d", str, c3721c2, Long.valueOf(c));
                    Objects.requireNonNull(c2906b);
                }
            }
            char m3408i2 = str == "Trace" ? c2583a.m3408i() : c2583a.m3408i();
            if (str == "Trace") {
                synchronized (C2600q.class) {
                    try {
                        if (C2600q.f9027a == null) {
                            C2600q.f9027a = new C2600q();
                        }
                        c2600q = C2600q.f9027a;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                C3720b<Long> m3406k3 = c2583a.m3406k(c2600q);
                if (!m3406k3.m1843c() || !c2583a.m3405l(m3406k3.m1844b().longValue())) {
                    C3720b<Long> m3414c3 = c2583a.m3414c(c2600q);
                    if (!m3414c3.m1843c() || !c2583a.m3405l(m3414c3.m1844b().longValue())) {
                        Long l3 = 30L;
                        c2 = l3.longValue();
                    } else {
                        c2 = m3414c3.m1844b().longValue();
                    }
                } else {
                    c2 = ((Long) C1676a.m4790g(m3406k3.m1844b(), c2583a.f9010c, "com.google.firebase.perf.TraceEventCountBackground", m3406k3)).longValue();
                }
            } else {
                synchronized (C2588e.class) {
                    try {
                        if (C2588e.f9015a == null) {
                            C2588e.f9015a = new C2588e();
                        }
                        c2588e = C2588e.f9015a;
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                C3720b<Long> m3406k4 = c2583a.m3406k(c2588e);
                if (!m3406k4.m1843c() || !c2583a.m3405l(m3406k4.m1844b().longValue())) {
                    C3720b<Long> m3414c4 = c2583a.m3414c(c2588e);
                    if (!m3414c4.m1843c() || !c2583a.m3405l(m3414c4.m1844b().longValue())) {
                        Long l4 = 70L;
                        c2 = l4.longValue();
                    } else {
                        c2 = m3414c4.m1844b().longValue();
                    }
                } else {
                    c2 = ((Long) C1676a.m4790g(m3406k4.m1844b(), c2583a.f9010c, "com.google.firebase.perf.NetworkEventCountBackground", m3406k4)).longValue();
                }
            }
            C3721c c3721c3 = new C3721c(c2, m3408i2, timeUnit);
            this.f11960h = c3721c3;
            this.f11962j = c2;
            if (z) {
                C2905a c2905a2 = f11951k;
                if (c2905a2.f9793b) {
                    C2906b c2906b2 = c2905a2.f9792a;
                    String.format(Locale.ENGLISH, "Background %s logging rate:%f, capacity:%d", str, c3721c3, Long.valueOf(c2));
                    Objects.requireNonNull(c2906b2);
                }
            }
            this.f11954b = z;
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        /* renamed from: a */
        public void m1935a(boolean z) {
            synchronized (this) {
                this.f11956d = z ? this.f11959g : this.f11960h;
                this.f11957e = z ? this.f11961i : this.f11962j;
            }
        }

        /* renamed from: b */
        public boolean m1934b() {
            long j;
            synchronized (this) {
                Objects.requireNonNull(this.f11953a);
                TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
                double micros = TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.f11955c.f12120b);
                double m1842a = this.f11956d.m1842a();
                long max = Math.max(0L, (long) ((micros * m1842a) / f11952l));
                this.f11958f = Math.min(this.f11958f + max, this.f11957e);
                if (max > 0) {
                    this.f11955c = new C3729e(this.f11955c.f12119a + ((long) ((max * j) / this.f11956d.m1842a())));
                }
                long j2 = this.f11958f;
                if (j2 > 0) {
                    this.f11958f = j2 - 1;
                    return true;
                }
                if (this.f11954b) {
                    C2905a c2905a = f11951k;
                    if (c2905a.f9793b) {
                        Objects.requireNonNull(c2905a.f9792a);
                        Log.w("FirebasePerformance", "Exceeded log rate limit, dropping the log.");
                    }
                }
                return false;
            }
        }
    }

    public C3649c(Context context, C3721c c3721c, long j) {
        C0713a c0713a = new C0713a();
        float nextFloat = new Random().nextFloat();
        C2583a m3412e = C2583a.m3412e();
        this.f11948c = null;
        this.f11949d = null;
        this.f11950e = false;
        boolean z = false;
        if (0.0f <= nextFloat) {
            z = false;
            if (nextFloat < 1.0f) {
                z = true;
            }
        }
        if (z) {
            this.f11947b = nextFloat;
            this.f11946a = m3412e;
            this.f11948c = new C3650a(c3721c, j, c0713a, m3412e, "Trace", this.f11950e);
            this.f11949d = new C3650a(c3721c, j, c0713a, m3412e, "Network", this.f11950e);
            this.f11950e = C3731f.m1837a(context);
            return;
        }
        throw new IllegalArgumentException("Sampling bucket ID should be in range [0.0f, 1.0f).");
    }

    /* renamed from: a */
    public final boolean m1936a(List<C3924k> list) {
        boolean z = false;
        if (list.size() > 0) {
            z = false;
            if (list.get(0).m1627C() > 0) {
                z = false;
                if (list.get(0).m1628B(0) == EnumC3927l.GAUGES_AND_SYSTEM_EVENTS) {
                    z = true;
                }
            }
        }
        return z;
    }
}
