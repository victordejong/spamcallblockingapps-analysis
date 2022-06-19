package p081e6;

import android.support.p012v4.media.AbstractC0081a;
import com.google.android.gms.internal.ads.C1676a;
import com.google.firebase.perf.config.RemoteConfigManager;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executors;
import p104g6.C2905a;
import p104g6.C2906b;
import p124i4.C3102d;
import p180n6.C3719a;
import p180n6.C3720b;
/* renamed from: e6.a */
/* loaded from: classes-dex2jar.jar:e6/a.class */
public class C2583a {

    /* renamed from: d */
    public static final C2905a f9006d = C2905a.m2869b();

    /* renamed from: e */
    public static volatile C2583a f9007e;

    /* renamed from: a */
    public final RemoteConfigManager f9008a = RemoteConfigManager.getInstance();

    /* renamed from: b */
    public C3719a f9009b = new C3719a();

    /* renamed from: c */
    public C2603t f9010c;

    public C2583a(RemoteConfigManager remoteConfigManager, C3719a c3719a, C2603t c2603t) {
        C2603t c2603t2;
        C2905a c2905a = C2603t.f9030c;
        synchronized (C2603t.class) {
            try {
                if (C2603t.f9031d == null) {
                    C2603t.f9031d = new C2603t(Executors.newSingleThreadExecutor());
                }
                c2603t2 = C2603t.f9031d;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f9010c = c2603t2;
    }

    /* renamed from: e */
    public static C2583a m3412e() {
        C2583a c2583a;
        synchronized (C2583a.class) {
            try {
                if (f9007e == null) {
                    f9007e = new C2583a(null, null, null);
                }
                c2583a = f9007e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2583a;
    }

    /* renamed from: a */
    public final C3720b<Boolean> m3416a(AbstractC0081a abstractC0081a) {
        C3720b<Boolean> c3720b;
        C2603t c2603t = this.f9010c;
        String mo3398r = abstractC0081a.mo3398r();
        Objects.requireNonNull(c2603t);
        if (mo3398r == null) {
            C2905a c2905a = C2603t.f9030c;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            c3720b = new C3720b<>();
        } else {
            if (c2603t.f9032a == null) {
                c2603t.m3395b(c2603t.m3396a());
                if (c2603t.f9032a == null) {
                    c3720b = new C3720b<>();
                }
            }
            if (!c2603t.f9032a.contains(mo3398r)) {
                c3720b = new C3720b<>();
            } else {
                try {
                    c3720b = new C3720b<>(Boolean.valueOf(c2603t.f9032a.getBoolean(mo3398r, false)));
                } catch (ClassCastException e) {
                    C2905a c2905a2 = C2603t.f9030c;
                    String message = e.getMessage();
                    if (c2905a2.f9793b) {
                        C2906b c2906b = c2905a2.f9792a;
                        String.format(Locale.ENGLISH, "Key %s from sharedPreferences has type other than long: %s", mo3398r, message);
                        Objects.requireNonNull(c2906b);
                    }
                    c3720b = new C3720b<>();
                }
            }
        }
        return c3720b;
    }

    /* renamed from: b */
    public final C3720b<Float> m3415b(AbstractC0081a abstractC0081a) {
        C3720b<Float> c3720b;
        C2603t c2603t = this.f9010c;
        String mo3398r = abstractC0081a.mo3398r();
        Objects.requireNonNull(c2603t);
        if (mo3398r == null) {
            C2905a c2905a = C2603t.f9030c;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            c3720b = new C3720b<>();
        } else {
            if (c2603t.f9032a == null) {
                c2603t.m3395b(c2603t.m3396a());
                if (c2603t.f9032a == null) {
                    c3720b = new C3720b<>();
                }
            }
            if (!c2603t.f9032a.contains(mo3398r)) {
                c3720b = new C3720b<>();
            } else {
                try {
                    c3720b = new C3720b<>(Float.valueOf(c2603t.f9032a.getFloat(mo3398r, 0.0f)));
                } catch (ClassCastException e) {
                    C2905a c2905a2 = C2603t.f9030c;
                    String message = e.getMessage();
                    if (c2905a2.f9793b) {
                        C2906b c2906b = c2905a2.f9792a;
                        String.format(Locale.ENGLISH, "Key %s from sharedPreferences has type other than float: %s", mo3398r, message);
                        Objects.requireNonNull(c2906b);
                    }
                    c3720b = new C3720b<>();
                }
            }
        }
        return c3720b;
    }

    /* renamed from: c */
    public final C3720b<Long> m3414c(AbstractC0081a abstractC0081a) {
        C3720b<Long> c3720b;
        C2603t c2603t = this.f9010c;
        String mo3398r = abstractC0081a.mo3398r();
        Objects.requireNonNull(c2603t);
        if (mo3398r == null) {
            C2905a c2905a = C2603t.f9030c;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            c3720b = new C3720b<>();
        } else {
            if (c2603t.f9032a == null) {
                c2603t.m3395b(c2603t.m3396a());
                if (c2603t.f9032a == null) {
                    c3720b = new C3720b<>();
                }
            }
            if (!c2603t.f9032a.contains(mo3398r)) {
                c3720b = new C3720b<>();
            } else {
                try {
                    c3720b = new C3720b<>(Long.valueOf(c2603t.f9032a.getLong(mo3398r, 0L)));
                } catch (ClassCastException e) {
                    C2905a c2905a2 = C2603t.f9030c;
                    String message = e.getMessage();
                    if (c2905a2.f9793b) {
                        C2906b c2906b = c2905a2.f9792a;
                        String.format(Locale.ENGLISH, "Key %s from sharedPreferences has type other than long: %s", mo3398r, message);
                        Objects.requireNonNull(c2906b);
                    }
                    c3720b = new C3720b<>();
                }
            }
        }
        return c3720b;
    }

    /* renamed from: d */
    public final C3720b<String> m3413d(AbstractC0081a abstractC0081a) {
        C3720b<String> c3720b;
        C2603t c2603t = this.f9010c;
        String mo3398r = abstractC0081a.mo3398r();
        Objects.requireNonNull(c2603t);
        if (mo3398r == null) {
            C2905a c2905a = C2603t.f9030c;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            c3720b = new C3720b<>();
        } else {
            if (c2603t.f9032a == null) {
                c2603t.m3395b(c2603t.m3396a());
                if (c2603t.f9032a == null) {
                    c3720b = new C3720b<>();
                }
            }
            if (!c2603t.f9032a.contains(mo3398r)) {
                c3720b = new C3720b<>();
            } else {
                try {
                    c3720b = new C3720b<>(c2603t.f9032a.getString(mo3398r, ""));
                } catch (ClassCastException e) {
                    C2905a c2905a2 = C2603t.f9030c;
                    String message = e.getMessage();
                    if (c2905a2.f9793b) {
                        C2906b c2906b = c2905a2.f9792a;
                        String.format(Locale.ENGLISH, "Key %s from sharedPreferences has type other than String: %s", mo3398r, message);
                        Objects.requireNonNull(c2906b);
                    }
                    c3720b = new C3720b<>();
                }
            }
        }
        return c3720b;
    }

    /* renamed from: f */
    public Boolean m3411f() {
        C2584b c2584b;
        C2585c c2585c;
        synchronized (C2584b.class) {
            try {
                if (C2584b.f9011a == null) {
                    C2584b.f9011a = new C2584b();
                }
                c2584b = C2584b.f9011a;
            } catch (Throwable th) {
                throw th;
            }
        }
        C3720b<Boolean> m3410g = m3410g(c2584b);
        if ((m3410g.m1843c() ? m3410g.m1844b() : Boolean.FALSE).booleanValue()) {
            return Boolean.FALSE;
        }
        synchronized (C2585c.class) {
            try {
                if (C2585c.f9012a == null) {
                    C2585c.f9012a = new C2585c();
                }
                c2585c = C2585c.f9012a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        C3720b<Boolean> m3416a = m3416a(c2585c);
        if (m3416a.m1843c()) {
            return m3416a.m1844b();
        }
        C3720b<Boolean> m3410g2 = m3410g(c2585c);
        if (!m3410g2.m1843c()) {
            return null;
        }
        return m3410g2.m1844b();
    }

    /* renamed from: g */
    public final C3720b<Boolean> m3410g(AbstractC0081a abstractC0081a) {
        C3720b<Boolean> c3720b;
        C3719a c3719a = this.f9009b;
        String mo3399s = abstractC0081a.mo3399s();
        if (!c3719a.m1846a(mo3399s)) {
            c3720b = new C3720b<>();
        } else {
            try {
                c3720b = C3720b.m1845a((Boolean) c3719a.f12108a.get(mo3399s));
            } catch (ClassCastException e) {
                C2905a c2905a = C3719a.f12107b;
                String message = e.getMessage();
                if (c2905a.f9793b) {
                    C2906b c2906b = c2905a.f9792a;
                    String.format(Locale.ENGLISH, "Metadata key %s contains type other than boolean: %s", mo3399s, message);
                    Objects.requireNonNull(c2906b);
                }
                c3720b = new C3720b<>();
            }
        }
        return c3720b;
    }

    /* renamed from: h */
    public final C3720b<Long> m3409h(AbstractC0081a abstractC0081a) {
        C3720b c3720b;
        C3719a c3719a = this.f9009b;
        String mo3399s = abstractC0081a.mo3399s();
        if (!c3719a.m1846a(mo3399s)) {
            c3720b = new C3720b();
        } else {
            try {
                c3720b = C3720b.m1845a((Integer) c3719a.f12108a.get(mo3399s));
            } catch (ClassCastException e) {
                C2905a c2905a = C3719a.f12107b;
                String message = e.getMessage();
                if (c2905a.f9793b) {
                    C2906b c2906b = c2905a.f9792a;
                    String.format(Locale.ENGLISH, "Metadata key %s contains type other than int: %s", mo3399s, message);
                    Objects.requireNonNull(c2906b);
                }
                c3720b = new C3720b();
            }
        }
        return c3720b.m1843c() ? new C3720b<>(Long.valueOf(((Integer) c3720b.m1844b()).intValue())) : new C3720b<>();
    }

    /* renamed from: i */
    public long m3408i() {
        C2591h c2591h;
        synchronized (C2591h.class) {
            try {
                if (C2591h.f9018a == null) {
                    C2591h.f9018a = new C2591h();
                }
                c2591h = C2591h.f9018a;
            } catch (Throwable th) {
                throw th;
            }
        }
        C3720b<Long> m3406k = m3406k(c2591h);
        if (m3406k.m1843c()) {
            if (m3406k.m1844b().longValue() > 0) {
                return ((Long) C1676a.m4790g(m3406k.m1844b(), this.f9010c, "com.google.firebase.perf.TimeLimitSec", m3406k)).longValue();
            }
        }
        C3720b<Long> m3414c = m3414c(c2591h);
        if (m3414c.m1843c()) {
            boolean z = false;
            if (m3414c.m1844b().longValue() > 0) {
                z = true;
            }
            if (z) {
                return m3414c.m1844b().longValue();
            }
        }
        Long l = 600L;
        return l.longValue();
    }

    /* renamed from: j */
    public final C3720b<Float> m3407j(AbstractC0081a abstractC0081a) {
        return this.f9008a.getFloat(abstractC0081a.mo3397u());
    }

    /* renamed from: k */
    public final C3720b<Long> m3406k(AbstractC0081a abstractC0081a) {
        return this.f9008a.getLong(abstractC0081a.mo3397u());
    }

    /* renamed from: l */
    public final boolean m3405l(long j) {
        return j >= 0;
    }

    /* renamed from: m */
    public final boolean m3404m(String str) {
        if (str.trim().isEmpty()) {
            return false;
        }
        for (String str2 : str.split(";")) {
            String trim = str2.trim();
            int i = C3102d.f10503g;
            if (trim.equals("20.0.1")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    public final boolean m3403n(long j) {
        return j >= 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0088, code lost:
        if (r0.f9032a == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.booleanValue() == true) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0171  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3402o() {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081e6.C2583a.m3402o():boolean");
    }

    /* renamed from: p */
    public final boolean m3401p(float f) {
        return 0.0f <= f && f <= 1.0f;
    }

    /* renamed from: q */
    public final boolean m3400q(long j) {
        return j > 0;
    }
}
