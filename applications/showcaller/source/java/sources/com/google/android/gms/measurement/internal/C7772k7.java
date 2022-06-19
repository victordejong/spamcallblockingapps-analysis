package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.measurement.internal.k7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k7.class */
public final class C7772k7 extends AbstractC7673c4 {

    /* renamed from: c */
    private volatile C7676c7 f35389c;

    /* renamed from: d */
    private C7676c7 f35390d;

    /* renamed from: e */
    protected C7676c7 f35391e;

    /* renamed from: g */
    private Activity f35393g;

    /* renamed from: h */
    private volatile boolean f35394h;

    /* renamed from: i */
    private volatile C7676c7 f35395i;

    /* renamed from: j */
    private C7676c7 f35396j;

    /* renamed from: k */
    private boolean f35397k;

    /* renamed from: m */
    private C7676c7 f35399m;

    /* renamed from: n */
    private String f35400n;

    /* renamed from: l */
    private final Object f35398l = new Object();

    /* renamed from: f */
    private final Map<Activity, C7676c7> f35392f = new ConcurrentHashMap();

    public C7772k7(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: E */
    public static /* synthetic */ void m6309E(C7772k7 c7772k7, Bundle bundle, C7676c7 c7676c7, C7676c7 c7676c72, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        c7772k7.m6303n(c7676c7, c7676c72, j, true, c7772k7.f35460a.m6043G().m5952r(null, "screen_view", bundle, null, true));
    }

    /* renamed from: m */
    private final void m6304m(Activity activity, C7676c7 c7676c7, boolean z) {
        C7676c7 c7676c72;
        C7676c7 c7676c73 = this.f35389c == null ? this.f35390d : this.f35389c;
        if (c7676c7.f35123b == null) {
            c7676c72 = new C7676c7(c7676c7.f35122a, activity != null ? m6299r(activity.getClass(), "Activity") : null, c7676c7.f35124c, c7676c7.f35126e, c7676c7.f35127f);
        } else {
            c7676c72 = c7676c7;
        }
        this.f35390d = this.f35389c;
        this.f35389c = c7676c72;
        this.f35460a.mo6029b().m6109p(new RunnableC7712f7(this, c7676c72, c7676c73, this.f35460a.mo6007x().mo16806b(), z));
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0175, code lost:
        if (r10 != 0) goto L54;
     */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6303n(com.google.android.gms.measurement.internal.C7676c7 r8, com.google.android.gms.measurement.internal.C7676c7 r9, long r10, boolean r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7772k7.m6303n(com.google.android.gms.measurement.internal.c7, com.google.android.gms.measurement.internal.c7, long, boolean, android.os.Bundle):void");
    }

    /* renamed from: o */
    public final void m6302o(C7676c7 c7676c7, boolean z, long j) {
        this.f35460a.m6026e().m6597i(this.f35460a.mo6007x().mo16806b());
        if (!this.f35460a.m6048B().f35856e.m5888d(c7676c7 != null && c7676c7.f35125d, z, j) || c7676c7 == null) {
            return;
        }
        c7676c7.f35125d = false;
    }

    /* renamed from: p */
    private final C7676c7 m6301p(Activity activity) {
        C6155o.m17018j(activity);
        C7676c7 c7676c7 = this.f35392f.get(activity);
        C7676c7 c7676c72 = c7676c7;
        if (c7676c7 == null) {
            c7676c72 = new C7676c7(null, m6299r(activity.getClass(), "Activity"), this.f35460a.m6043G().m5967h0());
            this.f35392f.put(activity, c7676c72);
        }
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35101t0) && this.f35395i != null) {
            return this.f35395i;
        }
        return c7676c72;
    }

    /* renamed from: v */
    public static void m6295v(C7676c7 c7676c7, Bundle bundle, boolean z) {
        boolean z2 = z;
        if (c7676c7 != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = c7676c7.f35122a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = c7676c7.f35123b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", c7676c7.f35124c);
                return;
            }
            z2 = false;
        }
        if (c7676c7 != null || !z2) {
            return;
        }
        bundle.remove("_sn");
        bundle.remove("_sc");
        bundle.remove("_si");
    }

    /* renamed from: A */
    public final void m6312A(Activity activity) {
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35101t0)) {
            synchronized (this.f35398l) {
                this.f35397k = false;
                this.f35394h = true;
            }
        }
        long mo16806b = this.f35460a.mo6007x().mo16806b();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35099s0) && !this.f35460a.m6006y().m6492B()) {
            this.f35389c = null;
            this.f35460a.mo6029b().m6109p(new RunnableC7736h7(this, mo16806b));
            return;
        }
        C7676c7 m6301p = m6301p(activity);
        this.f35390d = this.f35389c;
        this.f35389c = null;
        this.f35460a.mo6029b().m6109p(new RunnableC7748i7(this, m6301p, mo16806b));
    }

    /* renamed from: B */
    public final void m6311B(Activity activity, Bundle bundle) {
        C7676c7 c7676c7;
        if (!this.f35460a.m6006y().m6492B() || bundle == null || (c7676c7 = this.f35392f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", c7676c7.f35124c);
        bundle2.putString(ShortCut.NAME, c7676c7.f35122a);
        bundle2.putString("referrer_name", c7676c7.f35123b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* renamed from: D */
    public final void m6310D(Activity activity) {
        synchronized (this.f35398l) {
            if (activity == this.f35393g) {
                this.f35393g = null;
            }
        }
        if (!this.f35460a.m6006y().m6492B()) {
            return;
        }
        this.f35392f.remove(activity);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7673c4
    /* renamed from: k */
    protected final boolean mo5876k() {
        return false;
    }

    /* renamed from: q */
    public final C7676c7 m6300q(boolean z) {
        m6572h();
        mo6113f();
        if (!this.f35460a.m6006y().m6471u(null, C7672c3.f35101t0) || !z) {
            return this.f35391e;
        }
        C7676c7 c7676c7 = this.f35391e;
        return c7676c7 != null ? c7676c7 : this.f35396j;
    }

    /* renamed from: r */
    final String m6299r(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        int length2 = str2.length();
        this.f35460a.m6006y();
        String str3 = str2;
        if (length2 > 100) {
            this.f35460a.m6006y();
            str3 = str2.substring(0, 100);
        }
        return str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006e, code lost:
        if (r0 > 100) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b5, code lost:
        if (r0 > 100) goto L30;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6298s(android.os.Bundle r11, long r12) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7772k7.m6298s(android.os.Bundle, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bd, code lost:
        if (r0 <= 100) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00fb, code lost:
        if (r0 <= 100) goto L39;
     */
    @java.lang.Deprecated
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6297t(android.app.Activity r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7772k7.m6297t(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    /* renamed from: u */
    public final C7676c7 m6296u() {
        return this.f35389c;
    }

    /* renamed from: w */
    public final void m6294w(String str, C7676c7 c7676c7) {
        mo6113f();
        synchronized (this) {
            String str2 = this.f35400n;
            if (str2 == null || str2.equals(str) || c7676c7 != null) {
                this.f35400n = str;
                this.f35399m = c7676c7;
            }
        }
    }

    /* renamed from: y */
    public final void m6293y(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.f35460a.m6006y().m6492B() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f35392f.put(activity, new C7676c7(bundle2.getString(ShortCut.NAME), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    /* renamed from: z */
    public final void m6292z(Activity activity) {
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35101t0)) {
            synchronized (this.f35398l) {
                this.f35397k = true;
                if (activity != this.f35393g) {
                    synchronized (this.f35398l) {
                        this.f35393g = activity;
                        this.f35394h = false;
                    }
                    if (this.f35460a.m6006y().m6471u(null, C7672c3.f35099s0) && this.f35460a.m6006y().m6492B()) {
                        this.f35395i = null;
                        this.f35460a.mo6029b().m6109p(new RunnableC7760j7(this));
                    }
                }
            }
        }
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35099s0) && !this.f35460a.m6006y().m6492B()) {
            this.f35389c = this.f35395i;
            this.f35460a.mo6029b().m6109p(new RunnableC7724g7(this));
            return;
        }
        m6304m(activity, m6301p(activity), false);
        C7647a2 m6026e = this.f35460a.m6026e();
        m6026e.f35460a.mo6029b().m6109p(new RunnableC7931z0(m6026e, m6026e.f35460a.mo6007x().mo16806b()));
    }
}
