package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.p;
import com.google.android.gms.internal.measurement.lj;
import java.lang.reflect.InvocationTargetException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e.class */
public final class e extends fm {

    /* renamed from: a  reason: collision with root package name */
    d f29535a = c.f29450a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f29536b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f29537c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(es esVar) {
        super(esVar);
    }

    public static final long h() {
        return dc.f29483c.a(null).longValue();
    }

    public static final long i() {
        return dc.C.a(null).longValue();
    }

    private Bundle l() {
        try {
            if (this.t.f29583a.getPackageManager() == null) {
                this.t.c().f29506c.a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo a2 = c.a(this.t.f29583a).a(this.t.f29583a.getPackageName(), 128);
            if (a2 != null) {
                return a2.metaData;
            }
            this.t.c().f29506c.a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.t.c().f29506c.a("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final int P_() {
        ju g = this.t.g();
        Boolean bool = g.t.m().f29843c;
        if (g.n() < 201500) {
            return (bool == null || bool.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> Q_() {
        /*
            r4 = this;
            java.lang.String r0 = "analytics.safelisted_events"
            java.lang.String r0 = com.google.android.gms.common.internal.o.a(r0)
            r0 = r4
            android.os.Bundle r0 = r0.l()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0023
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.t
            com.google.android.gms.measurement.internal.do r0 = r0.c()
            com.google.android.gms.measurement.internal.dm r0 = r0.f29506c
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.a(r1)
        L_0x001e:
            r0 = 0
            r5 = r0
            goto L_0x0039
        L_0x0023:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x002f
            goto L_0x001e
        L_0x002f:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L_0x0039:
            r0 = r5
            if (r0 == 0) goto L_0x006d
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.t     // Catch: NotFoundException -> 0x005c
            android.content.Context r0 = r0.f29583a     // Catch: NotFoundException -> 0x005c
            android.content.res.Resources r0 = r0.getResources()     // Catch: NotFoundException -> 0x005c
            r1 = r5
            int r1 = r1.intValue()     // Catch: NotFoundException -> 0x005c
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: NotFoundException -> 0x005c
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0055
            r0 = 0
            return r0
        L_0x0055:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: NotFoundException -> 0x005c
            r5 = r0
            r0 = r5
            return r0
        L_0x005c:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.t
            com.google.android.gms.measurement.internal.do r0 = r0.c()
            com.google.android.gms.measurement.internal.dm r0 = r0.f29506c
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.a(r1, r2)
        L_0x006d:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.Q_():java.util.List");
    }

    public final boolean R_() {
        Boolean c2 = c("firebase_analytics_collection_deactivated");
        return c2 != null && c2.booleanValue();
    }

    public final int a(String str) {
        return a(str, dc.H, 25, 100);
    }

    public final int a(String str, da<Integer> daVar, int i, int i2) {
        return Math.max(Math.min(b(str, daVar), i2), i);
    }

    public final long a(String str, da<Long> daVar) {
        if (str == null) {
            return daVar.a(null).longValue();
        }
        String a2 = this.f29535a.a(str, daVar.f29477a);
        if (TextUtils.isEmpty(a2)) {
            return daVar.a(null).longValue();
        }
        try {
            return daVar.a(Long.valueOf(Long.parseLong(a2))).longValue();
        } catch (NumberFormatException e) {
            return daVar.a(null).longValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(String str) {
        return a(str, dc.G, 500, 2000);
    }

    public final int b(String str, da<Integer> daVar) {
        if (str == null) {
            return daVar.a(null).intValue();
        }
        String a2 = this.f29535a.a(str, daVar.f29477a);
        if (TextUtils.isEmpty(a2)) {
            return daVar.a(null).intValue();
        }
        try {
            return daVar.a(Integer.valueOf(Integer.parseInt(a2))).intValue();
        } catch (NumberFormatException e) {
            return daVar.a(null).intValue();
        }
    }

    @EnsuresNonNull({"this.isMainProcess"})
    public final boolean b() {
        if (this.f29537c == null) {
            synchronized (this) {
                if (this.f29537c == null) {
                    ApplicationInfo applicationInfo = this.t.f29583a.getApplicationInfo();
                    String a2 = p.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = false;
                        if (str != null) {
                            z = false;
                            if (str.equals(a2)) {
                                z = true;
                            }
                        }
                        this.f29537c = Boolean.valueOf(z);
                    }
                    if (this.f29537c == null) {
                        this.f29537c = Boolean.TRUE;
                        this.t.c().f29506c.a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f29537c.booleanValue();
    }

    public final double c(String str, da<Double> daVar) {
        if (str == null) {
            return daVar.a(null).doubleValue();
        }
        String a2 = this.f29535a.a(str, daVar.f29477a);
        if (TextUtils.isEmpty(a2)) {
            return daVar.a(null).doubleValue();
        }
        try {
            return daVar.a(Double.valueOf(Double.parseDouble(a2))).doubleValue();
        } catch (NumberFormatException e) {
            return daVar.a(null).doubleValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean c(String str) {
        o.a(str);
        Bundle l = l();
        if (l == null) {
            this.t.c().f29506c.a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (!l.containsKey(str)) {
            return null;
        } else {
            return Boolean.valueOf(l.getBoolean(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d(String str) {
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            o.a(str2);
            return str2;
        } catch (ClassNotFoundException e) {
            this.t.c().f29506c.a("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            this.t.c().f29506c.a("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            this.t.c().f29506c.a("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.t.c().f29506c.a("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public final boolean d(String str, da<Boolean> daVar) {
        if (str == null) {
            return daVar.a(null).booleanValue();
        }
        String a2 = this.f29535a.a(str, daVar.f29477a);
        return TextUtils.isEmpty(a2) ? daVar.a(null).booleanValue() : daVar.a(Boolean.valueOf(Boolean.parseBoolean(a2))).booleanValue();
    }

    public final boolean e() {
        Boolean c2 = c("google_analytics_adid_collection_enabled");
        return c2 == null || c2.booleanValue();
    }

    public final boolean e(String str) {
        return "1".equals(this.f29535a.a(str, "gaia_collection_enabled"));
    }

    public final boolean f() {
        Boolean c2;
        lj.b();
        return !d(null, dc.aq) || (c2 = c("google_analytics_automatic_screen_reporting_enabled")) == null || c2.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        if (this.f29536b == null) {
            Boolean c2 = c("app_measurement_lite");
            this.f29536b = c2;
            if (c2 == null) {
                this.f29536b = Boolean.FALSE;
            }
        }
        return this.f29536b.booleanValue() || !this.t.e;
    }
}
