package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzmi;
import com.google.android.gms.internal.measurement.zzof;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzy.class */
public final class zzy extends zzgo {

    /* renamed from: b */
    private Boolean f9787b;
    @NonNull

    /* renamed from: c */
    private zzaa f9788c = zzab.f8830a;

    /* renamed from: d */
    private Boolean f9789d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* renamed from: I */
    public static long m10894I() {
        return zzat.f8893D.m11594a(null).longValue();
    }

    /* renamed from: K */
    public static long m10892K() {
        return zzat.f8934d.m11594a(null).longValue();
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: Q */
    private final Bundle m10886Q() {
        try {
            if (mo11075f().getPackageManager() == null) {
                mo11081c().m11560D().m11540a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo c = Wrappers.m14278a(mo11075f()).m14285c(mo11075f().getPackageName(), 128);
            if (c != null) {
                return c.metaData;
            }
            mo11081c().m11560D().m11540a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            mo11081c().m11560D().m11539b("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    @WorkerThread
    /* renamed from: n */
    private final int m10884n(String str, @NonNull zzeg<Integer> zzegVar, int i, int i2) {
        return Math.max(Math.min(m10878t(str, zzegVar), i2), i);
    }

    private final String zza(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (ClassNotFoundException e) {
            mo11081c().m11560D().m11539b("Could not find SystemProperties class", e);
            return str2;
        } catch (IllegalAccessException e2) {
            mo11081c().m11560D().m11539b("Could not access SystemProperties.get()", e2);
            return str2;
        } catch (NoSuchMethodException e3) {
            mo11081c().m11560D().m11539b("Could not find SystemProperties.get() method", e3);
            return str2;
        } catch (InvocationTargetException e4) {
            mo11081c().m11560D().m11539b("SystemProperties.get() threw an exception", e4);
            return str2;
        }
    }

    /* renamed from: A */
    public final boolean m10902A() {
        if (this.f9789d == null) {
            synchronized (this) {
                if (this.f9789d == null) {
                    ApplicationInfo applicationInfo = mo11075f().getApplicationInfo();
                    String a = ProcessUtils.m14312a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f9789d = Boolean.valueOf(str != null && str.equals(a));
                    }
                    if (this.f9789d == null) {
                        this.f9789d = Boolean.TRUE;
                        mo11081c().m11560D().m11540a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f9789d.booleanValue();
    }

    /* renamed from: B */
    public final boolean m10901B(String str, zzeg<Boolean> zzegVar) {
        return m10873y(str, zzegVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    /* renamed from: C */
    public final Boolean m10900C(@Size(min = 1) String str) {
        Preconditions.m14527g(str);
        Bundle Q = m10886Q();
        if (Q == null) {
            mo11081c().m11560D().m11540a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (!Q.containsKey(str)) {
            return null;
        } else {
            return Boolean.valueOf(Q.getBoolean(str));
        }
    }

    /* renamed from: D */
    public final boolean m10899D() {
        Boolean C = m10900C("firebase_analytics_collection_deactivated");
        return C != null && C.booleanValue();
    }

    /* renamed from: E */
    public final Boolean m10898E() {
        Boolean C = m10900C("google_analytics_adid_collection_enabled");
        return Boolean.valueOf(C == null || C.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0037 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.Nullable
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m10897F(@androidx.annotation.Size(min = 1) java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m14527g(r0)
            r0 = r4
            android.os.Bundle r0 = r0.m10886Q()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x001f
            r0 = r4
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11560D()
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.m11540a(r1)
        L_0x001a:
            r0 = 0
            r5 = r0
            goto L_0x0033
        L_0x001f:
            r0 = r6
            r1 = r5
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x002a
            goto L_0x001a
        L_0x002a:
            r0 = r6
            r1 = r5
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L_0x0033:
            r0 = r5
            if (r0 != 0) goto L_0x0039
            r0 = 0
            return r0
        L_0x0039:
            r0 = r4
            android.content.Context r0 = r0.mo11075f()     // Catch: NotFoundException -> 0x0055
            android.content.res.Resources r0 = r0.getResources()     // Catch: NotFoundException -> 0x0055
            r1 = r5
            int r1 = r1.intValue()     // Catch: NotFoundException -> 0x0055
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: NotFoundException -> 0x0055
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x004e
            r0 = 0
            return r0
        L_0x004e:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: NotFoundException -> 0x0055
            r5 = r0
            r0 = r5
            return r0
        L_0x0055:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11560D()
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.m11539b(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzy.m10897F(java.lang.String):java.util.List");
    }

    /* renamed from: G */
    public final Boolean m10896G() {
        if (!zzof.m11858a() || !m10880r(zzat.f8969u0)) {
            return Boolean.TRUE;
        }
        Boolean C = m10900C("google_analytics_automatic_screen_reporting_enabled");
        return Boolean.valueOf(C == null || C.booleanValue());
    }

    /* renamed from: H */
    public final boolean m10895H(String str) {
        return TmoUserStatus.CUSTOMER_TYPE_POSTPAID.equals(this.f9788c.zza(str, "gaia_collection_enabled"));
    }

    /* renamed from: J */
    public final boolean m10893J(String str) {
        return TmoUserStatus.CUSTOMER_TYPE_POSTPAID.equals(this.f9788c.zza(str, "measurement.event_sampling_enabled"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: L */
    public final boolean m10891L(String str) {
        return m10873y(str, zzat.f8907K);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: M */
    public final String m10890M(String str) {
        zzeg<String> zzegVar = zzat.f8909L;
        return str == null ? zzegVar.m11594a(null) : zzegVar.m11594a(this.f9788c.zza(str, zzegVar.m11593b()));
    }

    /* renamed from: N */
    public final String m10889N() {
        return zza("debug.firebase.analytics.app", "");
    }

    /* renamed from: O */
    public final String m10888O() {
        return zza("debug.deferred.deeplink", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: P */
    public final boolean m10887P() {
        if (this.f9787b == null) {
            Boolean C = m10900C("app_measurement_lite");
            this.f9787b = C;
            if (C == null) {
                this.f9787b = Boolean.FALSE;
            }
        }
        return this.f9787b.booleanValue() || !this.f9354a.m11374N();
    }

    /* renamed from: m */
    public final int m10885m(@Size(min = 1) String str) {
        return m10884n(str, zzat.f8903I, 25, 100);
    }

    @WorkerThread
    /* renamed from: o */
    public final long m10883o(String str, @NonNull zzeg<Long> zzegVar) {
        if (str == null) {
            return zzegVar.m11594a(null).longValue();
        }
        String zza = this.f9788c.zza(str, zzegVar.m11593b());
        if (TextUtils.isEmpty(zza)) {
            return zzegVar.m11594a(null).longValue();
        }
        try {
            return zzegVar.m11594a(Long.valueOf(Long.parseLong(zza))).longValue();
        } catch (NumberFormatException e) {
            return zzegVar.m11594a(null).longValue();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L_0x003d;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m10882p(com.google.android.gms.measurement.internal.zzf r5) {
        /*
            r4 = this;
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.m11530A()
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0043
            boolean r0 = com.google.android.gms.internal.measurement.zznt.m11872a()
            if (r0 == 0) goto L_0x003d
            r0 = r4
            com.google.android.gms.measurement.internal.zzy r0 = r0.m11311l()
            r1 = r5
            java.lang.String r1 = r1.m11472t()
            com.google.android.gms.measurement.internal.zzeg<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzat.f8947j0
            boolean r0 = r0.m10873y(r1, r2)
            if (r0 == 0) goto L_0x003d
            r0 = r5
            java.lang.String r0 = r0.m11524G()
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0043
        L_0x003d:
            r0 = r5
            java.lang.String r0 = r0.m11527D()
            r8 = r0
        L_0x0043:
            r0 = r6
            com.google.android.gms.measurement.internal.zzeg<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzat.f8936e
            r2 = 0
            java.lang.Object r1 = r1.m11594a(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.scheme(r1)
            com.google.android.gms.measurement.internal.zzeg<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzat.f8938f
            r2 = 0
            java.lang.Object r1 = r1.m11594a(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.encodedAuthority(r1)
            r7 = r0
            r0 = r8
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r8 = r0
            r0 = r8
            int r0 = r0.length()
            if (r0 == 0) goto L_0x007b
            java.lang.String r0 = "config/app/"
            r1 = r8
            java.lang.String r0 = r0.concat(r1)
            r8 = r0
            goto L_0x0087
        L_0x007b:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "config/app/"
            r1.<init>(r2)
            r8 = r0
        L_0x0087:
            r0 = r7
            r1 = r8
            android.net.Uri$Builder r0 = r0.path(r1)
            java.lang.String r1 = "app_instance_id"
            r2 = r5
            java.lang.String r2 = r2.m11468x()
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "platform"
            java.lang.String r2 = "android"
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "gmp_version"
            java.lang.String r2 = "32053"
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            r0 = r6
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzy.m10882p(com.google.android.gms.measurement.internal.zzf):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final void m10881q(@NonNull zzaa zzaaVar) {
        this.f9788c = zzaaVar;
    }

    /* renamed from: r */
    public final boolean m10880r(zzeg<Boolean> zzegVar) {
        return m10873y(null, zzegVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public final int m10879s(@Size(min = 1) String str) {
        if (!zzmi.m11901a() || !m10873y(null, zzat.f8973w0)) {
            return 500;
        }
        return m10884n(str, zzat.f8901H, 500, 2000);
    }

    @WorkerThread
    /* renamed from: t */
    public final int m10878t(String str, @NonNull zzeg<Integer> zzegVar) {
        if (str == null) {
            return zzegVar.m11594a(null).intValue();
        }
        String zza = this.f9788c.zza(str, zzegVar.m11593b());
        if (TextUtils.isEmpty(zza)) {
            return zzegVar.m11594a(null).intValue();
        }
        try {
            return zzegVar.m11594a(Integer.valueOf(Integer.parseInt(zza))).intValue();
        } catch (NumberFormatException e) {
            return zzegVar.m11594a(null).intValue();
        }
    }

    @WorkerThread
    /* renamed from: u */
    public final double m10877u(String str, @NonNull zzeg<Double> zzegVar) {
        if (str == null) {
            return zzegVar.m11594a(null).doubleValue();
        }
        String zza = this.f9788c.zza(str, zzegVar.m11593b());
        if (TextUtils.isEmpty(zza)) {
            return zzegVar.m11594a(null).doubleValue();
        }
        try {
            return zzegVar.m11594a(Double.valueOf(Double.parseDouble(zza))).doubleValue();
        } catch (NumberFormatException e) {
            return zzegVar.m11594a(null).doubleValue();
        }
    }

    @WorkerThread
    /* renamed from: v */
    public final int m10876v(@Size(min = 1) String str) {
        return m10878t(str, zzat.f8956o);
    }

    /* renamed from: w */
    public final int m10875w() {
        if (!zzmi.m11901a() || !m11311l().m10873y(null, zzat.f8975x0)) {
            return 25;
        }
        zzkw j = m11313j();
        Boolean a0 = j.f9354a.m11372P().m11183a0();
        return j.m10986I0() >= 201500 || (a0 != null && !a0.booleanValue()) ? 100 : 25;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public final int m10874x(@Size(min = 1) String str) {
        if (!zzmi.m11901a() || !m10873y(null, zzat.f8973w0)) {
            return 25;
        }
        return m10884n(str, zzat.f8899G, 25, 100);
    }

    @WorkerThread
    /* renamed from: y */
    public final boolean m10873y(String str, @NonNull zzeg<Boolean> zzegVar) {
        if (str == null) {
            return zzegVar.m11594a(null).booleanValue();
        }
        String zza = this.f9788c.zza(str, zzegVar.m11593b());
        return TextUtils.isEmpty(zza) ? zzegVar.m11594a(null).booleanValue() : zzegVar.m11594a(Boolean.valueOf(Boolean.parseBoolean(zza))).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: z */
    public final long m10872z(String str) {
        return m10883o(str, zzat.f8930b);
    }
}
