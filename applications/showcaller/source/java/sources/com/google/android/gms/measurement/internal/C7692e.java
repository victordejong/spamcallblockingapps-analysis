package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6239q;
import com.google.android.gms.internal.measurement.C7536ra;
import java.lang.reflect.InvocationTargetException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.measurement.internal.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e.class */
public final class C7692e extends C7793m5 {

    /* renamed from: b */
    private Boolean f35187b;

    /* renamed from: c */
    private AbstractC7680d f35188c = C7668c.f35024a;

    /* renamed from: d */
    private Boolean f35189d;

    public C7692e(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: I */
    public static final long m6486I() {
        return C7672c3.f35070e.m6589b(null).longValue();
    }

    /* renamed from: g */
    public static final long m6485g() {
        return C7672c3.f35036E.m6589b(null).longValue();
    }

    /* renamed from: h */
    private final String m6484h(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            C6155o.m17018j(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            this.f35460a.mo6047C().m6195m().m6215b("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            this.f35460a.mo6047C().m6195m().m6215b("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            this.f35460a.mo6047C().m6195m().m6215b("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.f35460a.mo6047C().m6195m().m6215b("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    /* renamed from: A */
    public final boolean m6493A() {
        Boolean m6469w = m6469w("google_analytics_adid_collection_enabled");
        return m6469w == null || m6469w.booleanValue();
    }

    /* renamed from: B */
    public final boolean m6492B() {
        Boolean m6469w;
        C7536ra.m6958a();
        return !m6471u(null, C7672c3.f35099s0) || (m6469w = m6469w("google_analytics_automatic_screen_reporting_enabled")) == null || m6469w.booleanValue();
    }

    /* renamed from: D */
    public final String m6491D() {
        return m6484h("debug.firebase.analytics.app", "");
    }

    /* renamed from: E */
    public final String m6490E() {
        return m6484h("debug.deferred.deeplink", "");
    }

    /* renamed from: F */
    public final boolean m6489F(String str) {
        return "1".equals(this.f35188c.mo6328d(str, "gaia_collection_enabled"));
    }

    /* renamed from: G */
    public final boolean m6488G(String str) {
        return "1".equals(this.f35188c.mo6328d(str, "measurement.event_sampling_enabled"));
    }

    /* renamed from: H */
    public final boolean m6487H() {
        if (this.f35187b == null) {
            Boolean m6469w = m6469w("app_measurement_lite");
            this.f35187b = m6469w;
            if (m6469w == null) {
                this.f35187b = Boolean.FALSE;
            }
        }
        return this.f35187b.booleanValue() || !this.f35460a.m6035O();
    }

    /* renamed from: i */
    public final void m6483i(AbstractC7680d abstractC7680d) {
        this.f35188c = abstractC7680d;
    }

    /* renamed from: j */
    public final String m6482j() {
        this.f35460a.mo6028c();
        return "FA";
    }

    /* renamed from: k */
    public final int m6481k() {
        C7885u9 m6043G = this.f35460a.m6043G();
        Boolean m6267o = m6043G.f35460a.m6032R().m6267o();
        if (m6043G.m5988N() < 201500) {
            return (m6267o == null || m6267o.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    /* renamed from: l */
    public final int m6480l(String str) {
        return m6473s(str, C7672c3.f35045J, 25, 100);
    }

    /* renamed from: m */
    public final int m6479m(String str) {
        return m6473s(str, C7672c3.f35044I, 500, 2000);
    }

    /* renamed from: n */
    public final long m6478n() {
        this.f35460a.mo6028c();
        return 39065L;
    }

    @EnsuresNonNull({"this.isMainProcess"})
    /* renamed from: o */
    public final boolean m6477o() {
        if (this.f35189d == null) {
            synchronized (this) {
                if (this.f35189d == null) {
                    ApplicationInfo applicationInfo = this.f35460a.mo6030a().getApplicationInfo();
                    String m16770a = C6239q.m16770a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = false;
                        if (str != null) {
                            z = false;
                            if (str.equals(m16770a)) {
                                z = true;
                            }
                        }
                        this.f35189d = Boolean.valueOf(z);
                    }
                    if (this.f35189d == null) {
                        this.f35189d = Boolean.TRUE;
                        this.f35460a.mo6047C().m6195m().m6216a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f35189d.booleanValue();
    }

    /* renamed from: p */
    public final String m6476p(String str, C7648a3<String> c7648a3) {
        return str == null ? c7648a3.m6589b(null) : c7648a3.m6589b(this.f35188c.mo6328d(str, c7648a3.m6590a()));
    }

    /* renamed from: q */
    public final long m6475q(String str, C7648a3<Long> c7648a3) {
        if (str == null) {
            return c7648a3.m6589b(null).longValue();
        }
        String mo6328d = this.f35188c.mo6328d(str, c7648a3.m6590a());
        if (TextUtils.isEmpty(mo6328d)) {
            return c7648a3.m6589b(null).longValue();
        }
        try {
            return c7648a3.m6589b(Long.valueOf(Long.parseLong(mo6328d))).longValue();
        } catch (NumberFormatException e) {
            return c7648a3.m6589b(null).longValue();
        }
    }

    /* renamed from: r */
    public final int m6474r(String str, C7648a3<Integer> c7648a3) {
        if (str == null) {
            return c7648a3.m6589b(null).intValue();
        }
        String mo6328d = this.f35188c.mo6328d(str, c7648a3.m6590a());
        if (TextUtils.isEmpty(mo6328d)) {
            return c7648a3.m6589b(null).intValue();
        }
        try {
            return c7648a3.m6589b(Integer.valueOf(Integer.parseInt(mo6328d))).intValue();
        } catch (NumberFormatException e) {
            return c7648a3.m6589b(null).intValue();
        }
    }

    /* renamed from: s */
    public final int m6473s(String str, C7648a3<Integer> c7648a3, int i, int i2) {
        return Math.max(Math.min(m6474r(str, c7648a3), i2), i);
    }

    /* renamed from: t */
    public final double m6472t(String str, C7648a3<Double> c7648a3) {
        if (str == null) {
            return c7648a3.m6589b(null).doubleValue();
        }
        String mo6328d = this.f35188c.mo6328d(str, c7648a3.m6590a());
        if (TextUtils.isEmpty(mo6328d)) {
            return c7648a3.m6589b(null).doubleValue();
        }
        try {
            return c7648a3.m6589b(Double.valueOf(Double.parseDouble(mo6328d))).doubleValue();
        } catch (NumberFormatException e) {
            return c7648a3.m6589b(null).doubleValue();
        }
    }

    /* renamed from: u */
    public final boolean m6471u(String str, C7648a3<Boolean> c7648a3) {
        if (str == null) {
            return c7648a3.m6589b(null).booleanValue();
        }
        String mo6328d = this.f35188c.mo6328d(str, c7648a3.m6590a());
        return TextUtils.isEmpty(mo6328d) ? c7648a3.m6589b(null).booleanValue() : c7648a3.m6589b(Boolean.valueOf(Boolean.parseBoolean(mo6328d))).booleanValue();
    }

    /* renamed from: v */
    final Bundle m6470v() {
        try {
            if (this.f35460a.mo6030a().getPackageManager() == null) {
                this.f35460a.mo6047C().m6195m().m6216a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo m16891c = C6198c.m16885a(this.f35460a.mo6030a()).m16891c(this.f35460a.mo6030a().getPackageName(), 128);
            if (m16891c != null) {
                return m16891c.metaData;
            }
            this.f35460a.mo6047C().m6195m().m6216a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.f35460a.mo6047C().m6195m().m6215b("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    /* renamed from: w */
    public final Boolean m6469w(String str) {
        C6155o.m17022f(str);
        Bundle m6470v = m6470v();
        if (m6470v == null) {
            this.f35460a.mo6047C().m6195m().m6216a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (m6470v.containsKey(str)) {
            return Boolean.valueOf(m6470v.getBoolean(str));
        } else {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m6468y(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "analytics.safelisted_events"
            java.lang.String r0 = com.google.android.gms.common.internal.C6155o.m17022f(r0)
            r0 = r4
            android.os.Bundle r0 = r0.m6470v()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L25
            r0 = r4
            com.google.android.gms.measurement.internal.s4 r0 = r0.f35460a
            com.google.android.gms.measurement.internal.o3 r0 = r0.mo6047C()
            com.google.android.gms.measurement.internal.m3 r0 = r0.m6195m()
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.m6216a(r1)
        L20:
            r0 = 0
            r5 = r0
            goto L3d
        L25:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L32
            goto L20
        L32:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L3d:
            r0 = r5
            if (r0 == 0) goto L72
            r0 = r4
            com.google.android.gms.measurement.internal.s4 r0 = r0.f35460a     // Catch: android.content.res.Resources.NotFoundException -> L60
            android.content.Context r0 = r0.mo6030a()     // Catch: android.content.res.Resources.NotFoundException -> L60
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L60
            r1 = r5
            int r1 = r1.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L60
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: android.content.res.Resources.NotFoundException -> L60
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L59
            r0 = 0
            return r0
        L59:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: android.content.res.Resources.NotFoundException -> L60
            r5 = r0
            r0 = r5
            return r0
        L60:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.s4 r0 = r0.f35460a
            com.google.android.gms.measurement.internal.o3 r0 = r0.mo6047C()
            com.google.android.gms.measurement.internal.m3 r0 = r0.m6195m()
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.m6215b(r1, r2)
        L72:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7692e.m6468y(java.lang.String):java.util.List");
    }

    /* renamed from: z */
    public final boolean m6467z() {
        this.f35460a.mo6028c();
        Boolean m6469w = m6469w("firebase_analytics_collection_deactivated");
        return m6469w != null && m6469w.booleanValue();
    }
}
