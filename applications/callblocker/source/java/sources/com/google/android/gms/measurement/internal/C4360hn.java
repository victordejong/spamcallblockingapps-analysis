package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.C3776ao;
import com.google.android.gms.internal.measurement.C4066jy;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.hn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hn.class */
public final class C4360hn extends AbstractC4412jl {
    public C4360hn(C4415jo c4415jo) {
        super(c4415jo);
    }

    /* renamed from: a */
    private static String m4367a(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4412jl
    /* renamed from: a */
    protected final boolean mo4068a() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* renamed from: a */
    public final byte[] m4368a(C4450r c4450r, String str) {
        byte[] bArr;
        C4425jx c4425jx;
        char c;
        C4446n m4018a;
        mo4037o();
        this.f18970z.m4571E();
        C2662s.m13981a(c4450r);
        C2662s.m13979a(str);
        if (!mo4027x().m4787e(str, C4452t.f19414X)) {
            mo4030v().m4658i().m4653a("Generating ScionPayload disabled. packageName", str);
            bArr = new byte[0];
        } else if ("_iap".equals(c4450r.f19386a) || "_iapx".equals(c4450r.f19386a)) {
            C3776ao.C3787f.C3788a m6234b = C3776ao.C3787f.m6234b();
            mo4150u_().m4740b();
            try {
                C4299fg m4739b = mo4150u_().m4739b(str);
                if (m4739b == null) {
                    mo4030v().m4658i().m4653a("Log and bundle not available. package_name", str);
                    bArr = new byte[0];
                } else if (!m4739b.m4475r()) {
                    mo4030v().m4658i().m4653a("Log and bundle disabled. package_name", str);
                    bArr = new byte[0];
                    mo4150u_().m4714s_();
                } else {
                    C3776ao.C3789g.C3790a m6053a = C3776ao.C3789g.m6175af().m6062a(1).m6053a("android");
                    if (!TextUtils.isEmpty(m4739b.m4512c())) {
                        m6053a.m6028f(m4739b.m4512c());
                    }
                    if (!TextUtils.isEmpty(m4739b.m4482n())) {
                        m6053a.m6032e(m4739b.m4482n());
                    }
                    if (!TextUtils.isEmpty(m4739b.m4486l())) {
                        m6053a.m6024g(m4739b.m4486l());
                    }
                    if (m4739b.m4484m() != -2147483648L) {
                        m6053a.m6022h((int) m4739b.m4484m());
                    }
                    m6053a.m6029f(m4739b.m4480o()).m6011k(m4739b.m4476q());
                    if (!C4066jy.m5025b() || !mo4027x().m4787e(m4739b.m4512c(), C4452t.f19454ao)) {
                        if (!TextUtils.isEmpty(m4739b.m4505e())) {
                            m6053a.m6010k(m4739b.m4505e());
                        } else if (!TextUtils.isEmpty(m4739b.m4502f())) {
                            m6053a.m6001o(m4739b.m4502f());
                        }
                    } else if (!TextUtils.isEmpty(m4739b.m4505e())) {
                        m6053a.m6010k(m4739b.m4505e());
                    } else if (!TextUtils.isEmpty(m4739b.m4499g())) {
                        m6053a.m6000p(m4739b.m4499g());
                    } else if (!TextUtils.isEmpty(m4739b.m4502f())) {
                        m6053a.m6001o(m4739b.m4502f());
                    }
                    m6053a.m6021h(m4739b.m4478p());
                    if (this.f18970z.m4574B() && mo4027x().m4785f(m6053a.m6015j())) {
                        m6053a.m6015j();
                        if (!TextUtils.isEmpty(null)) {
                            m6053a.m6003n(null);
                        }
                    }
                    Pair<String, Boolean> m4641a = mo4029w().m4641a(m4739b.m4512c());
                    if (m4739b.m4526F() && m4641a != null && !TextUtils.isEmpty((CharSequence) m4641a.first)) {
                        m6053a.m6020h(m4367a((String) m4641a.first, Long.toString(c4450r.f19389d)));
                        if (m4641a.second != null) {
                            m6053a.m6052a(((Boolean) m4641a.second).booleanValue());
                        }
                    }
                    mo4036p().m4445A();
                    C3776ao.C3789g.C3790a m6041c = m6053a.m6041c(Build.MODEL);
                    mo4036p().m4445A();
                    m6041c.m6047b(Build.VERSION.RELEASE).m6030f((int) mo4036p().m4028w_()).m6036d(mo4036p().m4044c());
                    m6053a.m6016i(m4367a(m4739b.m4508d(), Long.toString(c4450r.f19389d)));
                    if (!TextUtils.isEmpty(m4739b.m4493i())) {
                        m6053a.m6007l(m4739b.m4493i());
                    }
                    String m4512c = m4739b.m4512c();
                    List<C4425jx> m4752a = mo4150u_().m4752a(m4512c);
                    Iterator<C4425jx> it = m4752a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            c4425jx = null;
                            break;
                        }
                        c4425jx = it.next();
                        if ("_lte".equals(c4425jx.f19288c)) {
                            break;
                        }
                    }
                    if (c4425jx == null || c4425jx.f19290e == null) {
                        C4425jx c4425jx2 = new C4425jx(m4512c, "auto", "_lte", mo4035q().mo13862a(), 0L);
                        m4752a.add(c4425jx2);
                        mo4150u_().m4756a(c4425jx2);
                    }
                    C4420js mo4149v_ = mo4149v_();
                    mo4149v_.mo4030v().m4657j().m4654a("Checking account type status for ad personalization signals");
                    if (mo4149v_.mo4036p().m4041f()) {
                        String m4512c2 = m4739b.m4512c();
                        if (m4739b.m4526F() && mo4149v_.mo4151t_().m4596e(m4512c2)) {
                            mo4149v_.mo4030v().m4658i().m4654a("Turning off ad personalization due to account type");
                            Iterator<C4425jx> it2 = m4752a.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                } else if ("_npa".equals(it2.next().f19288c)) {
                                    it2.remove();
                                    break;
                                }
                            }
                            m4752a.add(new C4425jx(m4512c2, "auto", "_npa", mo4149v_.mo4035q().mo13862a(), 1L));
                        }
                    }
                    C3776ao.C3798k[] c3798kArr = new C3776ao.C3798k[m4752a.size()];
                    for (int i = 0; i < m4752a.size(); i++) {
                        C3776ao.C3798k.C3799a m5911a = C3776ao.C3798k.m5918j().m5910a(m4752a.get(i).f19288c).m5911a(m4752a.get(i).f19289d);
                        mo4149v_().m4173a(m5911a, m4752a.get(i).f19290e);
                        c3798kArr[i] = (C3776ao.C3798k) ((AbstractC3900ed) m5911a.mo5544u());
                    }
                    m6053a.m6048b(Arrays.asList(c3798kArr));
                    Bundle m4022b = c4450r.f19387b.m4022b();
                    m4022b.putLong("_c", 1L);
                    mo4030v().m4658i().m4654a("Marking in-app purchase as real-time");
                    m4022b.putLong("_r", 1L);
                    m4022b.putString("_o", c4450r.f19388c);
                    if (mo4032t().m4083f(m6053a.m6015j())) {
                        mo4032t().m4134a(m4022b, "_dbg", (Object) 1L);
                        mo4032t().m4134a(m4022b, "_r", (Object) 1L);
                    }
                    C4446n m4746a = mo4150u_().m4746a(str, c4450r.f19386a);
                    if (m4746a == null) {
                        m4018a = new C4446n(str, c4450r.f19386a, 0L, 0L, c4450r.f19389d, 0L, null, null, null, null);
                        c = 0;
                    } else {
                        c = m4746a.f19378f;
                        m4018a = m4746a.m4018a(c4450r.f19389d);
                    }
                    mo4150u_().m4753a(m4018a);
                    C4428k c4428k = new C4428k(this.f18970z, c4450r.f19388c, str, c4450r.f19386a, c4450r.f19389d, c, m4022b);
                    C3776ao.C3781c.C3782a m6296b = C3776ao.C3781c.m6311j().m6303a(c4428k.f19295c).m6299a(c4428k.f19294b).m6296b(c4428k.f19296d);
                    Iterator<String> it3 = c4428k.f19297e.iterator();
                    while (it3.hasNext()) {
                        String next = it3.next();
                        C3776ao.C3785e.C3786a m6244a = C3776ao.C3785e.m6256k().m6244a(next);
                        mo4149v_().m4176a(m6244a, c4428k.f19297e.m4023a(next));
                        m6296b.m6302a(m6244a);
                    }
                    m6053a.m6058a(m6296b).m6057a(C3776ao.C3791h.m5999a().m5993a(C3776ao.C3783d.m6290a().m6284a(m4018a.f19375c).m6283a(c4450r.f19386a)));
                    m6053a.m6042c(mo4152d().m4065a(m4739b.m4512c(), Collections.emptyList(), m6053a.m6040d(), Long.valueOf(m6296b.m6292f()), Long.valueOf(m6296b.m6292f())));
                    if (m6296b.m6293e()) {
                        m6053a.m6049b(m6296b.m6292f()).m6043c(m6296b.m6292f());
                    }
                    long m4488k = m4739b.m4488k();
                    if (m4488k != 0) {
                        m6053a.m6033e(m4488k);
                    }
                    long m4490j = m4739b.m4490j();
                    if (m4490j != 0) {
                        m6053a.m6038d(m4490j);
                    } else if (m4488k != 0) {
                        m6053a.m6038d(m4488k);
                    }
                    m4739b.m4471v();
                    m6053a.m6026g((int) m4739b.m4474s()).m6025g(mo4027x().m4798b()).m6059a(mo4035q().mo13862a()).m6046b(Boolean.TRUE.booleanValue());
                    m6234b.m6231a(m6053a);
                    m4739b.m4521a(m6053a.m6031f());
                    m4739b.m4515b(m6053a.m6027g());
                    mo4150u_().m4757a(m4739b);
                    mo4150u_().m4734c();
                    mo4150u_().m4714s_();
                    try {
                        bArr = mo4149v_().m4153c(((C3776ao.C3787f) ((AbstractC3900ed) m6234b.mo5544u())).m5839ai());
                    } catch (IOException e) {
                        mo4030v().m4655x_().m4652a("Data loss. Failed to bundle and serialize. appId", C4263dy.m4669a(str), e);
                        bArr = null;
                    }
                }
            } catch (SecurityException e2) {
                mo4030v().m4658i().m4653a("app instance id encryption failed", e2.getMessage());
                bArr = new byte[0];
            } catch (SecurityException e3) {
                mo4030v().m4658i().m4653a("Resettable device id encryption failed", e3.getMessage());
                bArr = new byte[0];
            } finally {
                mo4150u_().m4714s_();
            }
        } else {
            mo4030v().m4658i().m4652a("Generating a payload for this event is not available. package_name, event_name", str, c4450r.f19386a);
            bArr = null;
        }
        return bArr;
    }
}
