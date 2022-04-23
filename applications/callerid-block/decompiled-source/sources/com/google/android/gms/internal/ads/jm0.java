package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1379b;
import com.google.android.gms.ads.internal.C1407r;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jm0.class */
public final class jm0 {

    /* renamed from: a */
    private final sl1 f6908a;

    /* renamed from: b */
    private final Executor f6909b;

    /* renamed from: c */
    private final so0 f6910c;

    public jm0(sl1 sl1Var, Executor executor, so0 so0Var) {
        this.f6908a = sl1Var;
        this.f6909b = executor;
        this.f6910c = so0Var;
    }

    /* renamed from: h */
    private final void m6952h(jt jtVar) {
        jtVar.T0("/video", C1748g9.f6620m);
        jtVar.T0("/videoMeta", C1748g9.f6621n);
        jtVar.T0("/precache", new rs());
        jtVar.T0("/delayPageLoaded", C1748g9.f6624q);
        jtVar.T0("/instrument", C1748g9.f6622o);
        jtVar.T0("/log", C1748g9.f6615h);
        jtVar.T0("/videoClicked", C1748g9.f6616i);
        jtVar.b1().S0(true);
        jtVar.T0("/click", C1748g9.f6611d);
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7300O1)).booleanValue()) {
            jtVar.T0("/getNativeAdViewSignals", C1748g9.f6627t);
        }
        if (this.f6908a.f8497b != null) {
            jtVar.b1().K(true);
            jtVar.T0("/open", new s9((C1379b) null, (ah) null, (jz0) null, (jr0) null, (aq1) null));
        } else {
            jtVar.b1().K(false);
        }
        if (C1407r.m8923a().m5032g(jtVar.getContext())) {
            jtVar.T0("/logScionEvent", new n9(jtVar.getContext()));
        }
    }

    /* renamed from: a */
    public final rz1<jt> m6959a(JSONObject jSONObject) {
        return kz1.h(kz1.h(kz1.a((Object) null), new am0(this), this.f6909b), new yl0(this, jSONObject), this.f6909b);
    }

    /* renamed from: b */
    public final rz1<jt> m6958b(String str, String str2) {
        return kz1.h(kz1.a((Object) null), new zl0(this, str, str2), this.f6909b);
    }

    /* renamed from: c */
    final /* synthetic */ rz1 m6957c(Object obj) {
        jt a = this.f6910c.m5639a(zzyx.p(), null, null);
        ep f = ep.f(a);
        m6952h(a);
        a.b1().U(new bm0(f));
        a.loadUrl((String) C1674c.m7906c().m6878b(C1842m3.f7294N1));
        return f;
    }

    /* renamed from: d */
    final /* synthetic */ rz1 m6956d(String str, String str2, Object obj) {
        jt a = this.f6910c.m5639a(zzyx.p(), null, null);
        ep f = ep.f(a);
        m6952h(a);
        a.D0(this.f6908a.f8497b != null ? C2058yu.m4692e() : C2058yu.m4693d());
        a.b1().k0(new cm0(this, a, f));
        a.W0(str, str2, (String) null);
        return f;
    }

    /* renamed from: e */
    final /* synthetic */ void m6955e(jt jtVar, ep epVar, boolean z) {
        if (z) {
            if (!(this.f6908a.f8496a == null || jtVar.e() == null)) {
                jtVar.e().A6(this.f6908a.f8496a);
            }
            epVar.g();
            return;
        }
        epVar.d(new zzczn(1, "Instream video Web View failed to load."));
    }

    /* renamed from: f */
    final /* synthetic */ rz1 m6954f(JSONObject jSONObject, jt jtVar) {
        ep f = ep.f(jtVar);
        jtVar.D0(this.f6908a.f8497b != null ? C2058yu.m4692e() : C2058yu.m4693d());
        jtVar.b1().k0(new dm0(this, jtVar, f));
        jtVar.m4765m0("google.afma.nativeAds.renderVideo", jSONObject);
        return f;
    }

    /* renamed from: g */
    final /* synthetic */ void m6953g(jt jtVar, ep epVar, boolean z) {
        if (!(this.f6908a.f8496a == null || jtVar.e() == null)) {
            jtVar.e().A6(this.f6908a.f8496a);
        }
        epVar.g();
    }
}
