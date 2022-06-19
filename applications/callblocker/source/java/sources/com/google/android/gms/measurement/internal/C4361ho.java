package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.measurement.internal.ho */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ho.class */
public final class C4361ho extends AbstractC4243de {

    /* renamed from: a */
    protected C4362hp f19076a;

    /* renamed from: b */
    private volatile C4362hp f19077b;

    /* renamed from: c */
    private C4362hp f19078c;

    /* renamed from: e */
    private Activity f19080e;

    /* renamed from: f */
    private volatile C4362hp f19081f;

    /* renamed from: g */
    private C4362hp f19082g;

    /* renamed from: h */
    private boolean f19083h;

    /* renamed from: j */
    private C4362hp f19085j;

    /* renamed from: k */
    private String f19086k;

    /* renamed from: i */
    private final Object f19084i = new Object();

    /* renamed from: d */
    private final Map<Activity, C4362hp> f19079d = new ConcurrentHashMap();

    public C4361ho(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: a */
    private static String m4354a(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        String str3 = str2;
        if (str2.length() > 100) {
            str3 = str2.substring(0, 100);
        }
        return str3;
    }

    /* renamed from: a */
    private final void m4363a(Activity activity, C4362hp c4362hp, boolean z) {
        C4362hp c4362hp2;
        C4362hp c4362hp3 = this.f19077b == null ? this.f19078c : this.f19077b;
        if (c4362hp.f19088b == null) {
            c4362hp2 = new C4362hp(c4362hp.f19087a, activity != null ? m4354a(activity.getClass().getCanonicalName()) : null, c4362hp.f19089c, c4362hp.f19091e);
        } else {
            c4362hp2 = c4362hp;
        }
        this.f19078c = this.f19077b;
        this.f19077b = c4362hp2;
        mo4031u().m4587a(new RunnableC4364hr(this, c4362hp2, c4362hp3, mo4035q().mo13861b(), z));
    }

    /* renamed from: a */
    public static void m4357a(C4362hp c4362hp, Bundle bundle, boolean z) {
        if (bundle == null || c4362hp == null || (bundle.containsKey("_sc") && !z)) {
            if (bundle == null || c4362hp != null || !z) {
                return;
            }
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
            return;
        }
        if (c4362hp.f19087a != null) {
            bundle.putString("_sn", c4362hp.f19087a);
        } else {
            bundle.remove("_sn");
        }
        if (c4362hp.f19088b != null) {
            bundle.putString("_sc", c4362hp.f19088b);
        } else {
            bundle.remove("_sc");
        }
        bundle.putLong("_si", c4362hp.f19089c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
        if (com.google.android.gms.measurement.internal.C4424jw.m4089c(r8.f19087a, r7.f19087a) == false) goto L20;
     */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4356a(com.google.android.gms.measurement.internal.C4362hp r7, com.google.android.gms.measurement.internal.C4362hp r8, long r9, boolean r11, android.os.Bundle r12) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4361ho.m4356a(com.google.android.gms.measurement.internal.hp, com.google.android.gms.measurement.internal.hp, long, boolean, android.os.Bundle):void");
    }

    /* renamed from: a */
    public final void m4355a(C4362hp c4362hp, boolean z, long j) {
        mo4289a().m4817a(mo4035q().mo13861b());
        if (!mo4276g().m4285a(c4362hp != null && c4362hp.f19090d, z, j) || c4362hp == null) {
            return;
        }
        c4362hp.f19090d = false;
    }

    /* renamed from: d */
    private final C4362hp m4348d(Activity activity) {
        C2662s.m13981a(activity);
        C4362hp c4362hp = this.f19079d.get(activity);
        C4362hp c4362hp2 = c4362hp;
        if (c4362hp == null) {
            c4362hp2 = new C4362hp(null, m4354a(activity.getClass().getCanonicalName()), mo4032t().m4093c());
            this.f19079d.put(activity, c4362hp2);
        }
        if (mo4027x().m4804a(C4452t.f19421aD)) {
            C4362hp c4362hp3 = this.f19081f;
        }
        return c4362hp2;
    }

    /* renamed from: B */
    public final C4362hp m4366B() {
        mo4039m();
        return this.f19077b;
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C4159ab mo4289a() {
        return super.mo4289a();
    }

    /* renamed from: a */
    public final C4362hp m4352a(boolean z) {
        m4711i();
        mo4037o();
        return (!mo4027x().m4804a(C4452t.f19421aD) || !z) ? this.f19076a : this.f19076a != null ? this.f19076a : this.f19082g;
    }

    /* renamed from: a */
    public final void m4365a(Activity activity) {
        if (mo4027x().m4804a(C4452t.f19421aD)) {
            synchronized (this.f19084i) {
                this.f19083h = true;
                if (activity != this.f19080e) {
                    synchronized (this.f19084i) {
                        this.f19080e = activity;
                    }
                    if (mo4027x().m4804a(C4452t.f19420aC) && mo4027x().m4786f().booleanValue()) {
                        this.f19081f = null;
                        mo4031u().m4587a(new RunnableC4368hv(this));
                    }
                }
            }
        }
        if (mo4027x().m4804a(C4452t.f19420aC) && !mo4027x().m4786f().booleanValue()) {
            this.f19077b = this.f19081f;
            mo4031u().m4587a(new RunnableC4363hq(this));
            return;
        }
        m4363a(activity, m4348d(activity), false);
        C4159ab mo4289a = mo4289a();
        mo4289a.mo4031u().m4587a(new RunnableC4187bc(mo4289a, mo4289a.mo4035q().mo13861b()));
    }

    /* renamed from: a */
    public final void m4364a(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!mo4027x().m4786f().booleanValue() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f19079d.put(activity, new C4362hp(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    /* renamed from: a */
    public final void m4362a(Activity activity, String str, String str2) {
        if (!mo4027x().m4786f().booleanValue()) {
            mo4030v().m4660g().m4654a("setCurrentScreen cannot be called while screen reporting is disabled.");
        } else if (this.f19077b == null) {
            mo4030v().m4660g().m4654a("setCurrentScreen cannot be called while no activity active");
        } else if (this.f19079d.get(activity) == null) {
            mo4030v().m4660g().m4654a("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = m4354a(activity.getClass().getCanonicalName());
            }
            boolean m4089c = C4424jw.m4089c(this.f19077b.f19088b, str3);
            boolean m4089c2 = C4424jw.m4089c(this.f19077b.f19087a, str);
            if (m4089c && m4089c2) {
                mo4030v().m4660g().m4654a("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                mo4030v().m4660g().m4653a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 != null && (str3.length() <= 0 || str3.length() > 100)) {
                mo4030v().m4660g().m4653a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            } else {
                mo4030v().m4657j().m4652a("Setting current screen to name, class", str == null ? "null" : str, str3);
                C4362hp c4362hp = new C4362hp(str, str3, mo4032t().m4093c());
                this.f19079d.put(activity, c4362hp);
                m4363a(activity, c4362hp, true);
            }
        }
    }

    /* renamed from: a */
    public final void m4353a(String str, C4362hp c4362hp) {
        mo4037o();
        synchronized (this) {
            if (this.f19086k == null || this.f19086k.equals(str) || c4362hp != null) {
                this.f19086k = str;
                this.f19085j = c4362hp;
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C4330gk mo4284b() {
        return super.mo4284b();
    }

    /* renamed from: b */
    public final void m4351b(Activity activity) {
        if (mo4027x().m4804a(C4452t.f19421aD)) {
            synchronized (this.f19084i) {
                this.f19083h = false;
            }
        }
        if (mo4027x().m4804a(C4452t.f19420aC) && !mo4027x().m4786f().booleanValue()) {
            this.f19077b = null;
            mo4031u().m4587a(new RunnableC4366ht(this));
            return;
        }
        C4362hp m4348d = m4348d(activity);
        this.f19078c = this.f19077b;
        this.f19077b = null;
        mo4031u().m4587a(new RunnableC4365hs(this, m4348d, mo4035q().mo13861b()));
    }

    /* renamed from: b */
    public final void m4350b(Activity activity, Bundle bundle) {
        C4362hp c4362hp;
        if (!mo4027x().m4786f().booleanValue() || bundle == null || (c4362hp = this.f19079d.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", c4362hp.f19089c);
        bundle2.putString("name", c4362hp.f19087a);
        bundle2.putString("referrer_name", c4362hp.f19088b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C4260dv mo4280c() {
        return super.mo4280c();
    }

    /* renamed from: c */
    public final void m4349c(Activity activity) {
        synchronized (this.f19084i) {
            if (activity == this.f19080e) {
                this.f19080e = null;
            }
        }
        if (!mo4027x().m4786f().booleanValue()) {
            return;
        }
        this.f19079d.remove(activity);
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
        return false;
    }
}
