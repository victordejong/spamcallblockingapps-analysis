package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.common.util.C2718o;
import com.google.android.gms.internal.measurement.C4022ih;
import com.google.android.gms.internal.measurement.C4084kp;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b.class */
public final class C4184b extends C4318fz {

    /* renamed from: a */
    private Boolean f18603a;

    /* renamed from: b */
    private AbstractC4238d f18604b = C4443ko.f19365a;

    /* renamed from: c */
    private Boolean f18605c;

    public C4184b(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: a */
    private final String m4799a(String str, String str2) {
        try {
            str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (ClassNotFoundException e) {
            mo4030v().m4655x_().m4653a("Could not find SystemProperties class", e);
        } catch (IllegalAccessException e2) {
            mo4030v().m4655x_().m4653a("Could not access SystemProperties.get()", e2);
        } catch (NoSuchMethodException e3) {
            mo4030v().m4655x_().m4653a("Could not find SystemProperties.get() method", e3);
        } catch (InvocationTargetException e4) {
            mo4030v().m4655x_().m4653a("SystemProperties.get() threw an exception", e4);
        }
        return str2;
    }

    /* renamed from: g */
    public static long m4784g() {
        return C4452t.f19393C.m4707a(null).longValue();
    }

    /* renamed from: h */
    public static long m4782h() {
        return C4452t.f19467c.m4707a(null).longValue();
    }

    /* renamed from: z */
    private final Bundle m4776z() {
        Bundle bundle = null;
        try {
            if (mo4034r().getPackageManager() == null) {
                mo4030v().m4655x_().m4654a("Failed to load metadata: PackageManager is null");
            } else {
                ApplicationInfo m14198a = C2586c.m14193a(mo4034r()).m14198a(mo4034r().getPackageName(), 128);
                if (m14198a == null) {
                    mo4030v().m4655x_().m4654a("Failed to load metadata: ApplicationInfo is null");
                } else {
                    bundle = m14198a.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            mo4030v().m4655x_().m4653a("Failed to load metadata: Package name not found", e);
        }
        return bundle;
    }

    /* renamed from: a */
    public final int m4806a() {
        int i = 25;
        if (C4022ih.m5094b()) {
            i = 25;
            if (mo4027x().m4790d(null, C4452t.f19429aL)) {
                i = 25;
                if (mo4032t().m4084f() >= 2147483) {
                    i = 100;
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public final int m4802a(String str) {
        int i = 500;
        if (C4022ih.m5094b()) {
            i = 500;
            if (m4790d(null, C4452t.f19428aK)) {
                i = m4800a(str, C4452t.f19397G, 500, 2000);
            }
        }
        return i;
    }

    /* renamed from: a */
    public final int m4800a(String str, C4256dr<Integer> c4256dr, int i, int i2) {
        return Math.max(Math.min(m4796b(str, c4256dr), i2), i);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    public final long m4801a(String str, C4256dr<Long> c4256dr) {
        char longValue;
        if (str == null) {
            longValue = c4256dr.m4707a(null).longValue();
        } else {
            String mo4047a = this.f18604b.mo4047a(str, c4256dr.m4708a());
            if (TextUtils.isEmpty(mo4047a)) {
                longValue = c4256dr.m4707a(null).longValue();
            } else {
                try {
                    longValue = c4256dr.m4707a(Long.valueOf(Long.parseLong(mo4047a))).longValue();
                } catch (NumberFormatException e) {
                    longValue = c4256dr.m4707a(null).longValue();
                }
            }
        }
        return longValue;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m4803a(com.google.android.gms.measurement.internal.C4299fg r6) {
        /*
            r5 = this;
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            java.lang.String r0 = r0.m4505e()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lb6
            boolean r0 = com.google.android.gms.internal.measurement.C4066jy.m5025b()
            if (r0 == 0) goto L3d
            r0 = r5
            com.google.android.gms.measurement.internal.b r0 = r0.mo4027x()
            r1 = r6
            java.lang.String r1 = r1.m4512c()
            com.google.android.gms.measurement.internal.dr<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.C4452t.f19454ao
            boolean r0 = r0.m4790d(r1, r2)
            if (r0 == 0) goto L3d
            r0 = r6
            java.lang.String r0 = r0.m4499g()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lb6
        L3d:
            r0 = r6
            java.lang.String r0 = r0.m4502f()
            r9 = r0
        L43:
            r0 = r7
            com.google.android.gms.measurement.internal.dr<java.lang.String> r1 = com.google.android.gms.measurement.internal.C4452t.f19468d
            r2 = 0
            java.lang.Object r1 = r1.m4707a(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.scheme(r1)
            com.google.android.gms.measurement.internal.dr<java.lang.String> r1 = com.google.android.gms.measurement.internal.C4452t.f19469e
            r2 = 0
            java.lang.Object r1 = r1.m4707a(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.encodedAuthority(r1)
            r8 = r0
            r0 = r9
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r9 = r0
            r0 = r9
            int r0 = r0.length()
            if (r0 == 0) goto La7
            java.lang.String r0 = "config/app/"
            r1 = r9
            java.lang.String r0 = r0.concat(r1)
            r9 = r0
        L78:
            r0 = r8
            r1 = r9
            android.net.Uri$Builder r0 = r0.path(r1)
            java.lang.String r1 = "app_instance_id"
            r2 = r6
            java.lang.String r2 = r2.m4508d()
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "platform"
            java.lang.String r2 = "android"
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "gmp_version"
            r2 = r5
            long r2 = r2.m4798b()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            r0 = r7
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            return r0
        La7:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "config/app/"
            r1.<init>(r2)
            r9 = r0
            goto L78
        Lb6:
            goto L43
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4184b.m4803a(com.google.android.gms.measurement.internal.fg):java.lang.String");
    }

    /* renamed from: a */
    public final void m4805a(AbstractC4238d abstractC4238d) {
        this.f18604b = abstractC4238d;
    }

    /* renamed from: a */
    public final boolean m4804a(C4256dr<Boolean> c4256dr) {
        return m4790d(null, c4256dr);
    }

    /* renamed from: b */
    public final int m4797b(String str) {
        return m4796b(str, C4452t.f19478n);
    }

    /* renamed from: b */
    public final int m4796b(String str, C4256dr<Integer> c4256dr) {
        int intValue;
        if (str == null) {
            intValue = c4256dr.m4707a(null).intValue();
        } else {
            String mo4047a = this.f18604b.mo4047a(str, c4256dr.m4708a());
            if (TextUtils.isEmpty(mo4047a)) {
                intValue = c4256dr.m4707a(null).intValue();
            } else {
                try {
                    intValue = c4256dr.m4707a(Integer.valueOf(Integer.parseInt(mo4047a))).intValue();
                } catch (NumberFormatException e) {
                    intValue = c4256dr.m4707a(null).intValue();
                }
            }
        }
        return intValue;
    }

    /* renamed from: b */
    public final long m4798b() {
        mo4026y();
        return 28000L;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r0v22, types: [double] */
    /* JADX WARN: Type inference failed for: r0v9, types: [double] */
    /* renamed from: c */
    public final double m4793c(String str, C4256dr<Double> c4256dr) {
        char doubleValue;
        if (str == null) {
            doubleValue = c4256dr.m4707a(null).doubleValue();
        } else {
            String mo4047a = this.f18604b.mo4047a(str, c4256dr.m4708a());
            if (TextUtils.isEmpty(mo4047a)) {
                doubleValue = c4256dr.m4707a(null).doubleValue();
            } else {
                try {
                    doubleValue = c4256dr.m4707a(Double.valueOf(Double.parseDouble(mo4047a))).doubleValue();
                } catch (NumberFormatException e) {
                    doubleValue = c4256dr.m4707a(null).doubleValue();
                }
            }
        }
        return doubleValue;
    }

    /* renamed from: c */
    public final int m4794c(String str) {
        int i = 25;
        if (C4022ih.m5094b()) {
            i = 25;
            if (m4790d(null, C4452t.f19428aK)) {
                i = m4800a(str, C4452t.f19396F, 25, 100);
            }
        }
        return i;
    }

    /* renamed from: c */
    public final boolean m4795c() {
        if (this.f18605c == null) {
            synchronized (this) {
                if (this.f18605c == null) {
                    ApplicationInfo applicationInfo = mo4034r().getApplicationInfo();
                    String m13830a = C2718o.m13830a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f18605c = Boolean.valueOf(str != null && str.equals(m13830a));
                    }
                    if (this.f18605c == null) {
                        this.f18605c = Boolean.TRUE;
                        mo4030v().m4655x_().m4654a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f18605c.booleanValue();
    }

    /* renamed from: d */
    public final Boolean m4791d(String str) {
        Boolean bool = null;
        C2662s.m13979a(str);
        Bundle m4776z = m4776z();
        if (m4776z == null) {
            mo4030v().m4655x_().m4654a("Failed to load metadata: Metadata bundle is null");
        } else if (m4776z.containsKey(str)) {
            bool = Boolean.valueOf(m4776z.getBoolean(str));
        }
        return bool;
    }

    /* renamed from: d */
    public final boolean m4792d() {
        mo4026y();
        Boolean m4791d = m4791d("firebase_analytics_collection_deactivated");
        return m4791d != null && m4791d.booleanValue();
    }

    /* renamed from: d */
    public final boolean m4790d(String str, C4256dr<Boolean> c4256dr) {
        boolean booleanValue;
        if (str == null) {
            booleanValue = c4256dr.m4707a(null).booleanValue();
        } else {
            String mo4047a = this.f18604b.mo4047a(str, c4256dr.m4708a());
            booleanValue = TextUtils.isEmpty(mo4047a) ? c4256dr.m4707a(null).booleanValue() : c4256dr.m4707a(Boolean.valueOf(Boolean.parseBoolean(mo4047a))).booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: e */
    public final Boolean m4789e() {
        mo4039m();
        Boolean m4791d = m4791d("google_analytics_adid_collection_enabled");
        return Boolean.valueOf(m4791d == null || m4791d.booleanValue());
    }

    /* renamed from: e */
    public final List<String> m4788e(String str) {
        Integer valueOf;
        List<String> list;
        C2662s.m13979a(str);
        Bundle m4776z = m4776z();
        if (m4776z == null) {
            mo4030v().m4655x_().m4654a("Failed to load metadata: Metadata bundle is null");
            valueOf = null;
        } else {
            valueOf = !m4776z.containsKey(str) ? null : Integer.valueOf(m4776z.getInt(str));
        }
        if (valueOf == null) {
            list = null;
        } else {
            try {
                String[] stringArray = mo4034r().getResources().getStringArray(valueOf.intValue());
                list = null;
                if (stringArray != null) {
                    list = Arrays.asList(stringArray);
                }
            } catch (Resources.NotFoundException e) {
                mo4030v().m4655x_().m4653a("Failed to load string array from metadata: resource not found", e);
                list = null;
            }
        }
        return list;
    }

    /* renamed from: e */
    public final boolean m4787e(String str, C4256dr<Boolean> c4256dr) {
        return m4790d(str, c4256dr);
    }

    /* renamed from: f */
    public final Boolean m4786f() {
        Boolean bool;
        mo4039m();
        if (!C4084kp.m4998b() || !m4804a(C4452t.f19420aC)) {
            bool = true;
        } else {
            Boolean m4791d = m4791d("google_analytics_automatic_screen_reporting_enabled");
            boolean z = true;
            if (m4791d != null) {
                z = m4791d.booleanValue();
            }
            bool = Boolean.valueOf(z);
        }
        return bool;
    }

    /* renamed from: f */
    public final boolean m4785f(String str) {
        return "1".equals(this.f18604b.mo4047a(str, "gaia_collection_enabled"));
    }

    /* renamed from: g */
    public final boolean m4783g(String str) {
        return "1".equals(this.f18604b.mo4047a(str, "measurement.event_sampling_enabled"));
    }

    /* renamed from: h */
    public final boolean m4781h(String str) {
        return m4790d(str, C4452t.f19400J);
    }

    /* renamed from: i */
    public final String m4780i() {
        return m4799a("debug.firebase.analytics.app", "");
    }

    /* renamed from: i */
    public final String m4779i(String str) {
        C4256dr<String> c4256dr = C4452t.f19401K;
        return str == null ? c4256dr.m4707a(null) : c4256dr.m4707a(this.f18604b.mo4047a(str, c4256dr.m4708a()));
    }

    /* renamed from: j */
    public final String m4778j() {
        return m4799a("debug.deferred.deeplink", "");
    }

    /* renamed from: k */
    public final boolean m4777k() {
        boolean z = false;
        if (this.f18603a == null) {
            this.f18603a = m4791d("app_measurement_lite");
            if (this.f18603a == null) {
                this.f18603a = false;
            }
        }
        if (this.f18603a.booleanValue() || !this.f18970z.m4540p()) {
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ void mo4037o() {
        super.mo4037o();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }
}
