package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.C4066jy;
import com.google.android.gms.internal.measurement.C4116lu;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.dv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dv.class */
public final class C4260dv extends AbstractC4243de {

    /* renamed from: a */
    private String f18695a;

    /* renamed from: b */
    private String f18696b;

    /* renamed from: c */
    private int f18697c;

    /* renamed from: d */
    private String f18698d;

    /* renamed from: e */
    private String f18699e;

    /* renamed from: f */
    private long f18700f;

    /* renamed from: g */
    private long f18701g;

    /* renamed from: h */
    private List<String> f18702h;

    /* renamed from: i */
    private int f18703i;

    /* renamed from: j */
    private String f18704j;

    /* renamed from: k */
    private String f18705k;

    /* renamed from: l */
    private String f18706l;

    public C4260dv(C4296fd c4296fd, long j) {
        super(c4296fd);
        this.f18701g = j;
    }

    /* renamed from: I */
    private final String m4686I() {
        String str;
        if (!C4116lu.m4964b() || !mo4027x().m4804a(C4452t.f19457ar)) {
            try {
                Class<?> loadClass = mo4034r().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                if (loadClass == null) {
                    str = null;
                } else {
                    try {
                        Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, mo4034r());
                        if (invoke == null) {
                            str = null;
                        } else {
                            try {
                                str = (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                            } catch (Exception e) {
                                mo4030v().m4660g().m4654a("Failed to retrieve Firebase Instance Id");
                                str = null;
                            }
                        }
                    } catch (Exception e2) {
                        mo4030v().m4661f().m4654a("Failed to obtain Firebase Analytics instance");
                        str = null;
                    }
                }
            } catch (ClassNotFoundException e3) {
                str = null;
            }
        } else {
            mo4030v().m4657j().m4654a("Disabled IID for tests.");
            str = null;
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0249  */
    @Override // com.google.android.gms.measurement.internal.AbstractC4243de
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo4694A() {
        /*
            Method dump skipped, instructions count: 1203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4260dv.mo4694A():void");
    }

    /* renamed from: B */
    public final String m4693B() {
        m4711i();
        return this.f18695a;
    }

    /* renamed from: C */
    public final String m4692C() {
        m4711i();
        return this.f18704j;
    }

    /* renamed from: D */
    public final String m4691D() {
        m4711i();
        return this.f18705k;
    }

    /* renamed from: E */
    public final String m4690E() {
        m4711i();
        return this.f18706l;
    }

    /* renamed from: F */
    public final int m4689F() {
        m4711i();
        return this.f18697c;
    }

    /* renamed from: G */
    public final int m4688G() {
        m4711i();
        return this.f18703i;
    }

    /* renamed from: H */
    public final List<String> m4687H() {
        return this.f18702h;
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C4159ab mo4289a() {
        return super.mo4289a();
    }

    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* renamed from: a */
    public final C4430kb m4685a(String str) {
        Boolean valueOf;
        mo4037o();
        mo4039m();
        String m4693B = m4693B();
        String m4692C = m4692C();
        m4711i();
        String str2 = this.f18696b;
        long m4689F = m4689F();
        m4711i();
        String str3 = this.f18698d;
        long m4798b = mo4027x().m4798b();
        m4711i();
        mo4037o();
        if (this.f18700f == 0) {
            this.f18700f = this.f18970z.m4547i().m4142a(mo4034r(), mo4034r().getPackageName());
        }
        long j = this.f18700f;
        boolean m4574B = this.f18970z.m4574B();
        boolean z = !mo4029w().f18776r;
        mo4037o();
        mo4039m();
        String m4686I = !this.f18970z.m4574B() ? null : m4686I();
        C4296fd c4296fd = this.f18970z;
        Long valueOf2 = Long.valueOf(c4296fd.m4553c().f18766h.m4624a());
        char min = valueOf2.longValue() == 0 ? c4296fd.f18855a : Math.min(c4296fd.f18855a, valueOf2.longValue());
        int m4688G = m4688G();
        boolean booleanValue = mo4027x().m4789e().booleanValue();
        C4184b mo4027x = mo4027x();
        mo4027x.mo4039m();
        Boolean m4791d = mo4027x.m4791d("google_analytics_ssaid_collection_enabled");
        boolean booleanValue2 = Boolean.valueOf(m4791d == null || m4791d.booleanValue()).booleanValue();
        C4277el mo4029w = mo4029w();
        mo4029w.mo4037o();
        boolean z2 = mo4029w.m4637c().getBoolean("deferred_analytics_collection", false);
        String m4691D = m4691D();
        Boolean m4791d2 = mo4027x().m4791d("google_analytics_default_allow_ad_personalization_signals");
        if (m4791d2 == null) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(!m4791d2.booleanValue());
        }
        return new C4430kb(m4693B, m4692C, str2, m4689F, str3, m4798b, j, str, m4574B, z, m4686I, 0L, min, m4688G, booleanValue, booleanValue2, z2, m4691D, valueOf, this.f18701g, mo4027x().m4804a(C4452t.f19442ac) ? this.f18702h : null, (!C4066jy.m5025b() || !mo4027x().m4804a(C4452t.f19454ao)) ? null : m4690E());
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C4330gk mo4284b() {
        return super.mo4284b();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C4260dv mo4280c() {
        return super.mo4280c();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C4367hu mo4279d() {
        return super.mo4279d();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ C4361ho mo4278e() {
        return super.mo4278e();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ C4259du mo4277f() {
        return super.mo4277f();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ C4399iz mo4276g() {
        return super.mo4276g();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
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

    @Override // com.google.android.gms.measurement.internal.AbstractC4243de
    /* renamed from: z */
    protected final boolean mo4275z() {
        return true;
    }
}
