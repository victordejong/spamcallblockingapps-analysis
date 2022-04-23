package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzmg;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zzoh;
import java.lang.reflect.InvocationTargetException;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4647b;
import p131c.p161d.p170b.p224d.p260i.p261a.C4637a;
import p131c.p161d.p170b.p224d.p260i.p261a.C4756m4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzab.class */
public final class zzab extends C4756m4 {

    /* renamed from: b */
    public Boolean f29788b;

    /* renamed from: c */
    public AbstractC4647b f29789c = C4637a.f16946a;

    /* renamed from: d */
    public Boolean f29790d;

    public zzab(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: v */
    public static long m9324v() {
        return zzas.f29822D.m9196a(null).longValue();
    }

    /* renamed from: w */
    public static long m9323w() {
        return zzas.f29863d.m9196a(null).longValue();
    }

    /* renamed from: a */
    public final int m9353a(String str) {
        return m9351a(str, zzas.f29832I, 25, 100);
    }

    /* renamed from: a */
    public final int m9351a(String str, zzej<Integer> zzejVar, int i, int i2) {
        return Math.max(Math.min(m9348b(str, zzejVar), i2), i);
    }

    /* renamed from: a */
    public final long m9352a(String str, zzej<Long> zzejVar) {
        if (str == null) {
            return zzejVar.m9196a(null).longValue();
        }
        String a = this.f29789c.mo9111a(str, zzejVar.m9197a());
        if (TextUtils.isEmpty(a)) {
            return zzejVar.m9196a(null).longValue();
        }
        try {
            return zzejVar.m9196a(Long.valueOf(Long.parseLong(a))).longValue();
        } catch (NumberFormatException e) {
            return zzejVar.m9196a(null).longValue();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L_0x003d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m9355a(p131c.p161d.p170b.p224d.p260i.p261a.C4710h3 r5) {
        /*
            r4 = this;
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.m24964n()
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0043
            boolean r0 = com.google.android.gms.internal.measurement.zznv.m9491a()
            if (r0 == 0) goto L_0x003d
            r0 = r4
            com.google.android.gms.measurement.internal.zzab r0 = r0.m24897h()
            r1 = r5
            java.lang.String r1 = r1.m24968l()
            com.google.android.gms.measurement.internal.zzej<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzas.f29876j0
            boolean r0 = r0.m9344d(r1, r2)
            if (r0 == 0) goto L_0x003d
            r0 = r5
            java.lang.String r0 = r0.m24960p()
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0043
        L_0x003d:
            r0 = r5
            java.lang.String r0 = r0.m24962o()
            r8 = r0
        L_0x0043:
            r0 = r6
            com.google.android.gms.measurement.internal.zzej<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzas.f29865e
            r2 = 0
            java.lang.Object r1 = r1.m9196a(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.scheme(r1)
            com.google.android.gms.measurement.internal.zzej<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzas.f29867f
            r2 = 0
            java.lang.Object r1 = r1.m9196a(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.encodedAuthority(r1)
            r7 = r0
            r0 = r8
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r8 = r0
            r0 = r8
            int r0 = r0.length()
            if (r0 == 0) goto L_0x007a
            java.lang.String r0 = "config/app/"
            r1 = r8
            java.lang.String r0 = r0.concat(r1)
            r8 = r0
            goto L_0x0085
        L_0x007a:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "config/app/"
            r1.<init>(r2)
            r8 = r0
        L_0x0085:
            r0 = r7
            r1 = r8
            android.net.Uri$Builder r0 = r0.path(r1)
            java.lang.String r1 = "app_instance_id"
            r2 = r5
            java.lang.String r2 = r2.m24966m()
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "platform"
            java.lang.String r2 = "android"
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "gmp_version"
            java.lang.String r2 = "33025"
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            r0 = r6
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzab.m9355a(c.d.b.d.i.a.h3):java.lang.String");
    }

    /* renamed from: a */
    public final String m9350a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (ClassNotFoundException e) {
            mo8789p().m9152q().m9142a("Could not find SystemProperties class", e);
            return str2;
        } catch (IllegalAccessException e2) {
            mo8789p().m9152q().m9142a("Could not access SystemProperties.get()", e2);
            return str2;
        } catch (NoSuchMethodException e3) {
            mo8789p().m9152q().m9142a("Could not find SystemProperties.get() method", e3);
            return str2;
        } catch (InvocationTargetException e4) {
            mo8789p().m9152q().m9142a("SystemProperties.get() threw an exception", e4);
            return str2;
        }
    }

    /* renamed from: a */
    public final void m9356a(AbstractC4647b bVar) {
        this.f29789c = bVar;
    }

    /* renamed from: a */
    public final boolean m9354a(zzej<Boolean> zzejVar) {
        return m9344d(null, zzejVar);
    }

    /* renamed from: b */
    public final int m9349b(String str) {
        if (!zzmg.m9551a() || !m9344d(null, zzas.f29902w0)) {
            return 500;
        }
        return m9351a(str, zzas.f29830H, 500, AdError.SERVER_ERROR_CODE);
    }

    /* renamed from: b */
    public final int m9348b(String str, zzej<Integer> zzejVar) {
        if (str == null) {
            return zzejVar.m9196a(null).intValue();
        }
        String a = this.f29789c.mo9111a(str, zzejVar.m9197a());
        if (TextUtils.isEmpty(a)) {
            return zzejVar.m9196a(null).intValue();
        }
        try {
            return zzejVar.m9196a(Integer.valueOf(Integer.parseInt(a))).intValue();
        } catch (NumberFormatException e) {
            return zzejVar.m9196a(null).intValue();
        }
    }

    /* renamed from: c */
    public final double m9346c(String str, zzej<Double> zzejVar) {
        if (str == null) {
            return zzejVar.m9196a(null).doubleValue();
        }
        String a = this.f29789c.mo9111a(str, zzejVar.m9197a());
        if (TextUtils.isEmpty(a)) {
            return zzejVar.m9196a(null).doubleValue();
        }
        try {
            return zzejVar.m9196a(Double.valueOf(Double.parseDouble(a))).doubleValue();
        } catch (NumberFormatException e) {
            return zzejVar.m9196a(null).doubleValue();
        }
    }

    /* renamed from: c */
    public final int m9347c(String str) {
        return m9348b(str, zzas.f29885o);
    }

    /* renamed from: d */
    public final int m9345d(String str) {
        if (!zzmg.m9551a() || !m9344d(null, zzas.f29902w0)) {
            return 25;
        }
        return m9351a(str, zzas.f29828G, 25, 100);
    }

    /* renamed from: d */
    public final boolean m9344d(String str, zzej<Boolean> zzejVar) {
        if (str == null) {
            return zzejVar.m9196a(null).booleanValue();
        }
        String a = this.f29789c.mo9111a(str, zzejVar.m9197a());
        return TextUtils.isEmpty(a) ? zzejVar.m9196a(null).booleanValue() : zzejVar.m9196a(Boolean.valueOf(Boolean.parseBoolean(a))).booleanValue();
    }

    /* renamed from: e */
    public final long m9343e(String str) {
        return m9352a(str, zzas.f29859b);
    }

    /* renamed from: e */
    public final boolean m9342e(String str, zzej<Boolean> zzejVar) {
        return m9344d(str, zzejVar);
    }

    @VisibleForTesting
    /* renamed from: f */
    public final Boolean m9341f(String str) {
        Preconditions.m17281b(str);
        Bundle u = m9325u();
        if (u == null) {
            mo8789p().m9152q().m9143a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (!u.containsKey(str)) {
            return null;
        } else {
            return Boolean.valueOf(u.getBoolean(str));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0038 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m9340g(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m17281b(r0)
            r0 = r4
            android.os.Bundle r0 = r0.m9325u()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0020
            r0 = r4
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9152q()
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.m9143a(r1)
        L_0x001b:
            r0 = 0
            r5 = r0
            goto L_0x0034
        L_0x0020:
            r0 = r6
            r1 = r5
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x002b
            goto L_0x001b
        L_0x002b:
            r0 = r6
            r1 = r5
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L_0x0034:
            r0 = r5
            if (r0 != 0) goto L_0x003a
            r0 = 0
            return r0
        L_0x003a:
            r0 = r4
            android.content.Context r0 = r0.mo8846B()     // Catch: NotFoundException -> 0x0056
            android.content.res.Resources r0 = r0.getResources()     // Catch: NotFoundException -> 0x0056
            r1 = r5
            int r1 = r1.intValue()     // Catch: NotFoundException -> 0x0056
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: NotFoundException -> 0x0056
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x004f
            r0 = 0
            return r0
        L_0x004f:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: NotFoundException -> 0x0056
            r5 = r0
            r0 = r5
            return r0
        L_0x0056:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9152q()
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.m9142a(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzab.m9340g(java.lang.String):java.util.List");
    }

    /* renamed from: h */
    public final boolean m9339h(String str) {
        return "1".equals(this.f29789c.mo9111a(str, "gaia_collection_enabled"));
    }

    /* renamed from: i */
    public final int m9338i() {
        if (!zzmg.m9551a() || !m24897h().m9344d(null, zzas.f29904x0)) {
            return 25;
        }
        zzkv f = m24899f();
        Boolean F = f.f17262a.m9076D().m8916F();
        return f.m8673s() >= 201500 || (F != null && !F.booleanValue()) ? 100 : 25;
    }

    /* renamed from: i */
    public final boolean m9337i(String str) {
        return "1".equals(this.f29789c.mo9111a(str, "measurement.event_sampling_enabled"));
    }

    /* renamed from: j */
    public final boolean m9336j(String str) {
        return m9344d(str, zzas.f29836K);
    }

    /* renamed from: k */
    public final String m9334k(String str) {
        zzej<String> zzejVar = zzas.f29838L;
        return str == null ? zzejVar.m9196a(null) : zzejVar.m9196a(this.f29789c.mo9111a(str, zzejVar.m9197a()));
    }

    /* renamed from: k */
    public final boolean m9335k() {
        if (this.f29790d == null) {
            synchronized (this) {
                if (this.f29790d == null) {
                    ApplicationInfo applicationInfo = mo8846B().getApplicationInfo();
                    String a = ProcessUtils.m17053a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f29790d = Boolean.valueOf(str != null && str.equals(a));
                    }
                    if (this.f29790d == null) {
                        this.f29790d = Boolean.TRUE;
                        mo8789p().m9152q().m9143a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f29790d.booleanValue();
    }

    /* renamed from: l */
    public final boolean m9333l() {
        Boolean f = m9341f("firebase_analytics_collection_deactivated");
        return f != null && f.booleanValue();
    }

    /* renamed from: m */
    public final Boolean m9332m() {
        Boolean f = m9341f("google_analytics_adid_collection_enabled");
        return Boolean.valueOf(f == null || f.booleanValue());
    }

    /* renamed from: n */
    public final Boolean m9331n() {
        if (!zzoh.m9479a() || !m9354a(zzas.f29898u0)) {
            return true;
        }
        Boolean f = m9341f("google_analytics_automatic_screen_reporting_enabled");
        boolean z = true;
        if (f != null) {
            z = f.booleanValue();
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: o */
    public final Boolean m9330o() {
        if (!zzml.m9520a() || !m9354a(zzas.f29833I0)) {
            return null;
        }
        return m9341f("google_analytics_default_allow_ad_storage");
    }

    /* renamed from: q */
    public final Boolean m9329q() {
        if (!zzml.m9520a() || !m9354a(zzas.f29833I0)) {
            return null;
        }
        return m9341f("google_analytics_default_allow_analytics_storage");
    }

    /* renamed from: r */
    public final String m9328r() {
        return m9350a("debug.firebase.analytics.app", "");
    }

    /* renamed from: s */
    public final String m9327s() {
        return m9350a("debug.deferred.deeplink", "");
    }

    /* renamed from: t */
    public final boolean m9326t() {
        if (this.f29788b == null) {
            Boolean f = m9341f("app_measurement_lite");
            this.f29788b = f;
            if (f == null) {
                this.f29788b = false;
            }
        }
        return this.f29788b.booleanValue() || !this.f17262a.m9078A();
    }

    @VisibleForTesting
    /* renamed from: u */
    public final Bundle m9325u() {
        try {
            if (mo8846B().getPackageManager() == null) {
                mo8789p().m9152q().m9143a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo a = Wrappers.m17026b(mo8846B()).m17032a(mo8846B().getPackageName(), 128);
            if (a != null) {
                return a.metaData;
            }
            mo8789p().m9152q().m9143a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            mo8789p().m9152q().m9142a("Failed to load metadata: Package name not found", e);
            return null;
        }
    }
}
