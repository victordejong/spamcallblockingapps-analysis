package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.p013b.C0373a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.C3767al;
import com.google.android.gms.internal.measurement.zzft;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ex */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ex.class */
public final class C4289ex extends AbstractC4412jl implements AbstractC4238d {

    /* renamed from: b */
    private static int f18818b = 65535;

    /* renamed from: c */
    private static int f18819c = 2;

    /* renamed from: d */
    private final Map<String, Map<String, String>> f18820d = new C0373a();

    /* renamed from: e */
    private final Map<String, Map<String, Boolean>> f18821e = new C0373a();

    /* renamed from: f */
    private final Map<String, Map<String, Boolean>> f18822f = new C0373a();

    /* renamed from: g */
    private final Map<String, C3767al.C3770b> f18823g = new C0373a();

    /* renamed from: i */
    private final Map<String, String> f18825i = new C0373a();

    /* renamed from: h */
    private final Map<String, Map<String, Integer>> f18824h = new C0373a();

    public C4289ex(C4415jo c4415jo) {
        super(c4415jo);
    }

    /* renamed from: a */
    private final C3767al.C3770b m4604a(String str, byte[] bArr) {
        C3767al.C3770b m6380j;
        String str2 = null;
        if (bArr == null) {
            m6380j = C3767al.C3770b.m6380j();
        } else {
            try {
                C3767al.C3770b c3770b = (C3767al.C3770b) ((AbstractC3900ed) ((C3767al.C3770b.C3771a) C4420js.m4172a(C3767al.C3770b.m6381i(), bArr)).mo5544u());
                C4266ea m4657j = mo4030v().m4657j();
                Long valueOf = c3770b.m6393a() ? Long.valueOf(c3770b.m6388b()) : null;
                if (c3770b.m6387c()) {
                    str2 = c3770b.m6386d();
                }
                m4657j.m4652a("Parsed config. version, gmp_app_id", valueOf, str2);
                m6380j = c3770b;
            } catch (zzft e) {
                mo4030v().m4662e().m4652a("Unable to merge remote config. appId", C4263dy.m4669a(str), e);
                m6380j = C3767al.C3770b.m6380j();
            } catch (RuntimeException e2) {
                mo4030v().m4662e().m4652a("Unable to merge remote config. appId", C4263dy.m4669a(str), e2);
                m6380j = C3767al.C3770b.m6380j();
            }
        }
        return m6380j;
    }

    /* renamed from: a */
    private static Map<String, String> m4607a(C3767al.C3770b c3770b) {
        C0373a c0373a = new C0373a();
        if (c3770b != null) {
            for (C3767al.C3772c c3772c : c3770b.m6385e()) {
                c0373a.put(c3772c.m6372a(), c3772c.m6371b());
            }
        }
        return c0373a;
    }

    /* renamed from: a */
    private final void m4605a(String str, C3767al.C3770b.C3771a c3771a) {
        C0373a c0373a = new C0373a();
        C0373a c0373a2 = new C0373a();
        C0373a c0373a3 = new C0373a();
        if (c3771a != null) {
            for (int i = 0; i < c3771a.m6377a(); i++) {
                C3767al.C3768a.C3769a m5642am = c3771a.m6376a(i).m5642am();
                if (TextUtils.isEmpty(m5642am.m6399a())) {
                    mo4030v().m4662e().m4654a("EventConfig contained null event name");
                } else {
                    String m4434a = C4323gd.m4434a(m5642am.m6399a());
                    C3767al.C3768a.C3769a c3769a = m5642am;
                    if (!TextUtils.isEmpty(m4434a)) {
                        c3769a = m5642am.m6398a(m4434a);
                        c3771a.m6375a(i, c3769a);
                    }
                    c0373a.put(c3769a.m6399a(), Boolean.valueOf(c3769a.m6397b()));
                    c0373a2.put(c3769a.m6399a(), Boolean.valueOf(c3769a.m6396c()));
                    if (c3769a.m6395d()) {
                        if (c3769a.m6394e() < f18819c || c3769a.m6394e() > f18818b) {
                            mo4030v().m4662e().m4652a("Invalid sampling rate. Event name, sample rate", c3769a.m6399a(), Integer.valueOf(c3769a.m6394e()));
                        } else {
                            c0373a3.put(c3769a.m6399a(), Integer.valueOf(c3769a.m6394e()));
                        }
                    }
                }
            }
        }
        this.f18821e.put(str, c0373a);
        this.f18822f.put(str, c0373a2);
        this.f18824h.put(str, c0373a3);
    }

    /* renamed from: i */
    private final void m4592i(String str) {
        m4246K();
        mo4037o();
        C2662s.m13979a(str);
        if (this.f18823g.get(str) == null) {
            byte[] m4731d = mo4150u_().m4731d(str);
            if (m4731d != null) {
                C3767al.C3770b.C3771a m5642am = m4604a(str, m4731d).m5642am();
                m4605a(str, m5642am);
                this.f18820d.put(str, m4607a((C3767al.C3770b) ((AbstractC3900ed) m5642am.mo5544u())));
                this.f18823g.put(str, (C3767al.C3770b) ((AbstractC3900ed) m5642am.mo5544u()));
                this.f18825i.put(str, null);
                return;
            }
            this.f18820d.put(str, null);
            this.f18821e.put(str, null);
            this.f18822f.put(str, null);
            this.f18823g.put(str, null);
            this.f18825i.put(str, null);
            this.f18824h.put(str, null);
        }
    }

    /* renamed from: a */
    public final C3767al.C3770b m4606a(String str) {
        m4246K();
        mo4037o();
        C2662s.m13979a(str);
        m4592i(str);
        return this.f18823g.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4238d
    /* renamed from: a */
    public final String mo4047a(String str, String str2) {
        mo4037o();
        m4592i(str);
        Map<String, String> map = this.f18820d.get(str);
        return map != null ? map.get(str2) : null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4412jl
    /* renamed from: a */
    protected final boolean mo4068a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m4603a(String str, byte[] bArr, String str2) {
        ContentValues contentValues;
        boolean z;
        m4246K();
        mo4037o();
        C2662s.m13979a(str);
        C3767al.C3770b.C3771a m5642am = m4604a(str, bArr).m5642am();
        if (m5642am == null) {
            z = false;
        } else {
            m4605a(str, m5642am);
            this.f18823g.put(str, (C3767al.C3770b) ((AbstractC3900ed) m5642am.mo5544u()));
            this.f18825i.put(str, str2);
            this.f18820d.put(str, m4607a((C3767al.C3770b) ((AbstractC3900ed) m5642am.mo5544u())));
            mo4150u_().m4744a(str, new ArrayList(m5642am.m6374b()));
            try {
                m5642am.m6373c();
                bArr = ((C3767al.C3770b) ((AbstractC3900ed) m5642am.mo5544u())).m5839ai();
            } catch (RuntimeException e) {
                mo4030v().m4662e().m4652a("Unable to serialize reduced-size config. Storing full config instead. appId", C4263dy.m4669a(str), e);
            }
            C4211c mo4150u_ = mo4150u_();
            C2662s.m13979a(str);
            mo4150u_.mo4037o();
            mo4150u_.m4246K();
            new ContentValues().put("remote_config", bArr);
            try {
                if (mo4150u_.m4729e().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                    mo4150u_.mo4030v().m4655x_().m4653a("Failed to update remote config (got 0). appId", C4263dy.m4669a(str));
                }
            } catch (SQLiteException e2) {
                mo4150u_.mo4030v().m4655x_().m4652a("Error storing remote config. appId", C4263dy.m4669a(str), e2);
            }
            this.f18823g.put(str, (C3767al.C3770b) ((AbstractC3900ed) m5642am.mo5544u()));
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final String m4602b(String str) {
        mo4037o();
        return this.f18825i.get(str);
    }

    /* renamed from: b */
    public final boolean m4601b(String str, String str2) {
        boolean z = true;
        mo4037o();
        m4592i(str);
        if ((!m4594g(str) || !C4424jw.m4085e(str2)) && (!m4593h(str) || !C4424jw.m4122a(str2))) {
            Map<String, Boolean> map = this.f18821e.get(str);
            if (map != null) {
                Boolean bool = map.get(str2);
                z = bool == null ? false : bool.booleanValue();
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final void m4600c(String str) {
        mo4037o();
        this.f18825i.put(str, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
        if ("refund".equals(r5) == false) goto L15;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4599c(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = 1
            r6 = r0
            r0 = r3
            r0.mo4037o()
            r0 = r3
            r1 = r4
            r0.m4592i(r1)
            java.lang.String r0 = "ecommerce_purchase"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L1b
            r0 = r6
            r7 = r0
        L18:
            r0 = r7
            return r0
        L1b:
            boolean r0 = com.google.android.gms.internal.measurement.C4028in.m5084b()
            if (r0 == 0) goto L48
            r0 = r3
            com.google.android.gms.measurement.internal.b r0 = r0.mo4027x()
            com.google.android.gms.measurement.internal.dr<java.lang.Boolean> r1 = com.google.android.gms.measurement.internal.C4452t.f19427aJ
            boolean r0 = r0.m4804a(r1)
            if (r0 == 0) goto L48
            r0 = r6
            r7 = r0
            java.lang.String r0 = "purchase"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L18
            r0 = r6
            r7 = r0
            java.lang.String r0 = "refund"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L18
        L48:
            r0 = r3
            java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.Boolean>> r0 = r0.f18822f
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            java.util.Map r0 = (java.util.Map) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L78
            r0 = r4
            r1 = r5
            java.lang.Object r0 = r0.get(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L6f
            r0 = 0
            r7 = r0
            goto L18
        L6f:
            r0 = r4
            boolean r0 = r0.booleanValue()
            r7 = r0
            goto L18
        L78:
            r0 = 0
            r7 = r0
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4289ex.m4599c(java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: d */
    public final int m4597d(String str, String str2) {
        int i;
        mo4037o();
        m4592i(str);
        Map<String, Integer> map = this.f18824h.get(str);
        if (map != null) {
            Integer num = map.get(str2);
            i = num == null ? 1 : num.intValue();
        } else {
            i = 1;
        }
        return i;
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C4434kf mo4152d() {
        return super.mo4152d();
    }

    /* renamed from: d */
    public final void m4598d(String str) {
        mo4037o();
        this.f18823g.remove(str);
    }

    /* renamed from: e */
    public final boolean m4596e(String str) {
        mo4037o();
        C3767al.C3770b m4606a = m4606a(str);
        return m4606a == null ? false : m4606a.m6382h();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: f */
    public final long m4595f(String str) {
        char parseLong;
        String mo4047a = mo4047a(str, "measurement.account.time_zone_offset_minutes");
        if (!TextUtils.isEmpty(mo4047a)) {
            try {
                parseLong = Long.parseLong(mo4047a);
            } catch (NumberFormatException e) {
                mo4030v().m4662e().m4652a("Unable to parse timezone offset. appId", C4263dy.m4669a(str), e);
            }
            return parseLong;
        }
        parseLong = 0;
        return parseLong;
    }

    /* renamed from: g */
    public final boolean m4594g(String str) {
        return "1".equals(mo4047a(str, "measurement.upload.blacklist_internal"));
    }

    /* renamed from: h */
    public final boolean m4593h(String str) {
        return "1".equals(mo4047a(str, "measurement.upload.blacklist_public"));
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

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: t_ */
    public final /* bridge */ /* synthetic */ C4289ex mo4151t_() {
        return super.mo4151t_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: u_ */
    public final /* bridge */ /* synthetic */ C4211c mo4150u_() {
        return super.mo4150u_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: v_ */
    public final /* bridge */ /* synthetic */ C4420js mo4149v_() {
        return super.mo4149v_();
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
