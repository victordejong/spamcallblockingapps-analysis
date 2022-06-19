package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12112p;
import com.google.android.gms.internal.measurement.C13659lj;
import java.lang.reflect.InvocationTargetException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.measurement.internal.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e.class */
public final class C13959e extends C14000fm {

    /* renamed from: a */
    AbstractC13932d f51437a = C13905c.f51243a;

    /* renamed from: b */
    private Boolean f51438b;

    /* renamed from: c */
    private Boolean f51439c;

    public C13959e(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: h */
    public static final long m12056h() {
        return C13935dc.f51340c.m12117a(null).longValue();
    }

    /* renamed from: i */
    public static final long m12055i() {
        return C13935dc.f51280C.m12117a(null).longValue();
    }

    /* renamed from: l */
    private Bundle m12054l() {
        try {
            if (this.f51637t.f51523a.getPackageManager() == null) {
                this.f51637t.mo11661c().f51395c.m12092a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo m19262a = C11946c.m19258a(this.f51637t.f51523a).m19262a(this.f51637t.f51523a.getPackageName(), 128);
            if (m19262a != null) {
                return m19262a.metaData;
            }
            this.f51637t.mo11661c().f51395c.m12092a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.f51637t.mo11661c().f51395c.m12091a("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    /* renamed from: P_ */
    public final int m12073P_() {
        C14116ju m11988g = this.f51637t.m11988g();
        Boolean bool = m11988g.f51637t.m11984m().f51891c;
        if (m11988g.m11552n() < 201500) {
            return (bool == null || bool.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: Q_ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m12072Q_() {
        /*
            r4 = this;
            java.lang.String r0 = "analytics.safelisted_events"
            java.lang.String r0 = com.google.android.gms.common.internal.C12045o.m19160a(r0)
            r0 = r4
            android.os.Bundle r0 = r0.m12054l()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L23
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.f51637t
            com.google.android.gms.measurement.internal.do r0 = r0.mo11661c()
            com.google.android.gms.measurement.internal.dm r0 = r0.f51395c
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.m12092a(r1)
        L1e:
            r0 = 0
            r5 = r0
            goto L39
        L23:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L2f
            goto L1e
        L2f:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L39:
            r0 = r5
            if (r0 == 0) goto L6d
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.f51637t     // Catch: android.content.res.Resources.NotFoundException -> L5c
            android.content.Context r0 = r0.f51523a     // Catch: android.content.res.Resources.NotFoundException -> L5c
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L5c
            r1 = r5
            int r1 = r1.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L5c
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: android.content.res.Resources.NotFoundException -> L5c
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L55
            r0 = 0
            return r0
        L55:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: android.content.res.Resources.NotFoundException -> L5c
            r5 = r0
            r0 = r5
            return r0
        L5c:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.f51637t
            com.google.android.gms.measurement.internal.do r0 = r0.mo11661c()
            com.google.android.gms.measurement.internal.dm r0 = r0.f51395c
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.m12091a(r1, r2)
        L6d:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C13959e.m12072Q_():java.util.List");
    }

    /* renamed from: R_ */
    public final boolean m12071R_() {
        Boolean m12064c = m12064c("firebase_analytics_collection_deactivated");
        return m12064c != null && m12064c.booleanValue();
    }

    /* renamed from: a */
    public final int m12070a(String str) {
        return m12068a(str, C13935dc.f51285H, 25, 100);
    }

    /* renamed from: a */
    public final int m12068a(String str, C13933da<Integer> c13933da, int i, int i2) {
        return Math.max(Math.min(m12065b(str, c13933da), i2), i);
    }

    /* renamed from: a */
    public final long m12069a(String str, C13933da<Long> c13933da) {
        if (str == null) {
            return c13933da.m12117a(null).longValue();
        }
        String mo12029a = this.f51437a.mo12029a(str, c13933da.f51271a);
        if (TextUtils.isEmpty(mo12029a)) {
            return c13933da.m12117a(null).longValue();
        }
        try {
            return c13933da.m12117a(Long.valueOf(Long.parseLong(mo12029a))).longValue();
        } catch (NumberFormatException e) {
            return c13933da.m12117a(null).longValue();
        }
    }

    /* renamed from: b */
    public final int m12066b(String str) {
        return m12068a(str, C13935dc.f51284G, 500, 2000);
    }

    /* renamed from: b */
    public final int m12065b(String str, C13933da<Integer> c13933da) {
        if (str == null) {
            return c13933da.m12117a(null).intValue();
        }
        String mo12029a = this.f51437a.mo12029a(str, c13933da.f51271a);
        if (TextUtils.isEmpty(mo12029a)) {
            return c13933da.m12117a(null).intValue();
        }
        try {
            return c13933da.m12117a(Integer.valueOf(Integer.parseInt(mo12029a))).intValue();
        } catch (NumberFormatException e) {
            return c13933da.m12117a(null).intValue();
        }
    }

    @EnsuresNonNull({"this.isMainProcess"})
    /* renamed from: b */
    public final boolean m12067b() {
        if (this.f51439c == null) {
            synchronized (this) {
                if (this.f51439c == null) {
                    ApplicationInfo applicationInfo = this.f51637t.f51523a.getApplicationInfo();
                    String m19009a = C12112p.m19009a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = false;
                        if (str != null) {
                            z = false;
                            if (str.equals(m19009a)) {
                                z = true;
                            }
                        }
                        this.f51439c = Boolean.valueOf(z);
                    }
                    if (this.f51439c == null) {
                        this.f51439c = Boolean.TRUE;
                        this.f51637t.mo11661c().f51395c.m12092a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f51439c.booleanValue();
    }

    /* renamed from: c */
    public final double m12063c(String str, C13933da<Double> c13933da) {
        if (str == null) {
            return c13933da.m12117a(null).doubleValue();
        }
        String mo12029a = this.f51437a.mo12029a(str, c13933da.f51271a);
        if (TextUtils.isEmpty(mo12029a)) {
            return c13933da.m12117a(null).doubleValue();
        }
        try {
            return c13933da.m12117a(Double.valueOf(Double.parseDouble(mo12029a))).doubleValue();
        } catch (NumberFormatException e) {
            return c13933da.m12117a(null).doubleValue();
        }
    }

    /* renamed from: c */
    public final Boolean m12064c(String str) {
        C12045o.m19160a(str);
        Bundle m12054l = m12054l();
        if (m12054l == null) {
            this.f51637t.mo11661c().f51395c.m12092a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (m12054l.containsKey(str)) {
            return Boolean.valueOf(m12054l.getBoolean(str));
        } else {
            return null;
        }
    }

    /* renamed from: d */
    public final String m12062d(String str) {
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            C12045o.m19162a(str2);
            return str2;
        } catch (ClassNotFoundException e) {
            this.f51637t.mo11661c().f51395c.m12091a("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            this.f51637t.mo11661c().f51395c.m12091a("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            this.f51637t.mo11661c().f51395c.m12091a("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.f51637t.mo11661c().f51395c.m12091a("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    /* renamed from: d */
    public final boolean m12061d(String str, C13933da<Boolean> c13933da) {
        if (str == null) {
            return c13933da.m12117a(null).booleanValue();
        }
        String mo12029a = this.f51437a.mo12029a(str, c13933da.f51271a);
        return TextUtils.isEmpty(mo12029a) ? c13933da.m12117a(null).booleanValue() : c13933da.m12117a(Boolean.valueOf(Boolean.parseBoolean(mo12029a))).booleanValue();
    }

    /* renamed from: e */
    public final boolean m12060e() {
        Boolean m12064c = m12064c("google_analytics_adid_collection_enabled");
        return m12064c == null || m12064c.booleanValue();
    }

    /* renamed from: e */
    public final boolean m12059e(String str) {
        return "1".equals(this.f51437a.mo12029a(str, "gaia_collection_enabled"));
    }

    /* renamed from: f */
    public final boolean m12058f() {
        Boolean m12064c;
        C13659lj.m12350b();
        return !m12061d(null, C13935dc.f51329aq) || (m12064c = m12064c("google_analytics_automatic_screen_reporting_enabled")) == null || m12064c.booleanValue();
    }

    /* renamed from: g */
    public final boolean m12057g() {
        if (this.f51438b == null) {
            Boolean m12064c = m12064c("app_measurement_lite");
            this.f51438b = m12064c;
            if (m12064c == null) {
                this.f51438b = Boolean.FALSE;
            }
        }
        return this.f51438b.booleanValue() || !this.f51637t.f51527e;
    }
}
