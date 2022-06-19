package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5625b;
import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mi1.class */
public final class mi1 {

    /* renamed from: a */
    private final xj2 f26606a;

    /* renamed from: b */
    private final Executor f26607b;

    /* renamed from: c */
    private final bl1 f26608c;

    /* renamed from: d */
    private final wj1 f26609d;

    /* renamed from: e */
    private final Context f26610e;

    /* renamed from: f */
    private final rn1 f26611f;

    /* renamed from: g */
    private final jo2 f26612g;

    /* renamed from: h */
    private final bp2 f26613h;

    /* renamed from: i */
    private final dw1 f26614i;

    public mi1(xj2 xj2Var, Executor executor, bl1 bl1Var, Context context, rn1 rn1Var, jo2 jo2Var, bp2 bp2Var, dw1 dw1Var, wj1 wj1Var) {
        this.f26606a = xj2Var;
        this.f26607b = executor;
        this.f26608c = bl1Var;
        this.f26610e = context;
        this.f26611f = rn1Var;
        this.f26612g = jo2Var;
        this.f26613h = bp2Var;
        this.f26614i = dw1Var;
        this.f26609d = wj1Var;
    }

    /* renamed from: h */
    private final void m13185h(wn0 wn0Var) {
        m13184i(wn0Var);
        wn0Var.mo7899l0("/video", m20.f26394l);
        wn0Var.mo7899l0("/videoMeta", m20.f26395m);
        wn0Var.mo7899l0("/precache", new lm0());
        wn0Var.mo7899l0("/delayPageLoaded", m20.f26398p);
        wn0Var.mo7899l0("/instrument", m20.f26396n);
        wn0Var.mo7899l0("/log", m20.f26389g);
        wn0Var.mo7899l0("/click", m20.m13374b(null));
        if (this.f26606a.f32075b != null) {
            wn0Var.mo7914c0().mo14077u0(true);
            wn0Var.mo7899l0("/open", new z20(null, null, null, null, null));
        } else {
            wn0Var.mo7914c0().mo14077u0(false);
        }
        if (C5667s.m18163a().m13546g(wn0Var.getContext())) {
            wn0Var.mo7899l0("/logScionEvent", new t20(wn0Var.getContext()));
        }
    }

    /* renamed from: i */
    private static final void m13184i(wn0 wn0Var) {
        wn0Var.mo7899l0("/videoClicked", m20.f26390h);
        wn0Var.mo7914c0().mo14080k0(true);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25729k2)).booleanValue()) {
            wn0Var.mo7899l0("/getNativeAdViewSignals", m20.f26401s);
        }
        wn0Var.mo7899l0("/getNativeClickMeta", m20.f26402t);
    }

    /* renamed from: a */
    public final r03<wn0> m13192a(JSONObject jSONObject) {
        return k03.m13995i(k03.m13995i(k03.m14003a(null), new uz2(this) { // from class: com.google.android.gms.internal.ads.ci1

            /* renamed from: a */
            private final mi1 f21256a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21256a = this;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f21256a.m13190c(obj);
            }
        }, this.f26607b), new uz2(this, jSONObject) { // from class: com.google.android.gms.internal.ads.ai1

            /* renamed from: a */
            private final mi1 f19958a;

            /* renamed from: b */
            private final JSONObject f19959b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19958a = this;
                this.f19959b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f19958a.m13187f(this.f19959b, (wn0) obj);
            }
        }, this.f26607b);
    }

    /* renamed from: b */
    public final r03<wn0> m13191b(String str, String str2, ej2 ej2Var, jj2 jj2Var, zzbdl zzbdlVar) {
        return k03.m13995i(k03.m14003a(null), new uz2(this, zzbdlVar, ej2Var, jj2Var, str, str2) { // from class: com.google.android.gms.internal.ads.bi1

            /* renamed from: a */
            private final mi1 f20465a;

            /* renamed from: b */
            private final zzbdl f20466b;

            /* renamed from: c */
            private final ej2 f20467c;

            /* renamed from: d */
            private final jj2 f20468d;

            /* renamed from: e */
            private final String f20469e;

            /* renamed from: f */
            private final String f20470f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20465a = this;
                this.f20466b = zzbdlVar;
                this.f20467c = ej2Var;
                this.f20468d = jj2Var;
                this.f20469e = str;
                this.f20470f = str2;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f20465a.m13189d(this.f20466b, this.f20467c, this.f20468d, this.f20469e, this.f20470f, obj);
            }
        }, this.f26607b);
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m13190c(Object obj) {
        wn0 m16322b = this.f26608c.m16322b(zzbdl.m8082l0(), null, null);
        ui0 m10325g = ui0.m10325g(m16322b);
        m13185h(m16322b);
        m16322b.mo7914c0().mo14088V(new ip0(m10325g) { // from class: com.google.android.gms.internal.ads.di1

            /* renamed from: a */
            private final ui0 f21643a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21643a = m10325g;
            }

            @Override // com.google.android.gms.internal.ads.ip0
            /* renamed from: b */
            public final void mo14328b() {
                this.f21643a.m10324h();
            }
        });
        m16322b.loadUrl((String) C7192yr.m8714c().m14263c(C6679kw.f25721j2));
        return m10325g;
    }

    /* renamed from: d */
    public final /* synthetic */ r03 m13189d(zzbdl zzbdlVar, ej2 ej2Var, jj2 jj2Var, String str, String str2, Object obj) {
        wn0 m16322b = this.f26608c.m16322b(zzbdlVar, ej2Var, jj2Var);
        ui0 m10325g = ui0.m10325g(m16322b);
        if (this.f26606a.f32075b != null) {
            m13185h(m16322b);
            m16322b.mo7950I0(mp0.m13130e());
        } else {
            tj1 m9580b = this.f26609d.m9580b();
            m16322b.mo7914c0().mo14079q0(m9580b, m9580b, m9580b, m9580b, m9580b, false, null, new C5625b(this.f26610e, null, null), null, null, this.f26614i, this.f26613h, this.f26611f, this.f26612g, null, m9580b);
            m13184i(m16322b);
        }
        m16322b.mo7914c0().mo14085f0(new hp0(this, m16322b, m10325g) { // from class: com.google.android.gms.internal.ads.ei1

            /* renamed from: d */
            private final mi1 f22182d;

            /* renamed from: e */
            private final wn0 f22183e;

            /* renamed from: f */
            private final ui0 f22184f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22182d = this;
                this.f22183e = m16322b;
                this.f22184f = m10325g;
            }

            @Override // com.google.android.gms.internal.ads.hp0
            /* renamed from: b */
            public final void mo8634b(boolean z) {
                this.f22182d.m13188e(this.f22183e, this.f22184f, z);
            }
        });
        m16322b.mo7915b1(str, str2, null);
        return m10325g;
    }

    /* renamed from: e */
    public final /* synthetic */ void m13188e(wn0 wn0Var, ui0 ui0Var, boolean z) {
        if (!z) {
            ui0Var.m10014f(new zzehs(1, "Html video Web View failed to load."));
            return;
        }
        if (this.f26606a.f32074a != null && wn0Var.mo7909f() != null) {
            wn0Var.mo7909f().m11363F6(this.f26606a.f32074a);
        }
        ui0Var.m10324h();
    }

    /* renamed from: f */
    public final /* synthetic */ r03 m13187f(JSONObject jSONObject, wn0 wn0Var) {
        ui0 m10325g = ui0.m10325g(wn0Var);
        if (this.f26606a.f32075b != null) {
            wn0Var.mo7950I0(mp0.m13130e());
        } else {
            wn0Var.mo7950I0(mp0.m13131d());
        }
        wn0Var.mo7914c0().mo14085f0(new hp0(this, wn0Var, m10325g) { // from class: com.google.android.gms.internal.ads.fi1

            /* renamed from: d */
            private final mi1 f22906d;

            /* renamed from: e */
            private final wn0 f22907e;

            /* renamed from: f */
            private final ui0 f22908f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22906d = this;
                this.f22907e = wn0Var;
                this.f22908f = m10325g;
            }

            @Override // com.google.android.gms.internal.ads.hp0
            /* renamed from: b */
            public final void mo8634b(boolean z) {
                this.f22906d.m13186g(this.f22907e, this.f22908f, z);
            }
        });
        wn0Var.mo7957E0("google.afma.nativeAds.renderVideo", jSONObject);
        return m10325g;
    }

    /* renamed from: g */
    public final /* synthetic */ void m13186g(wn0 wn0Var, ui0 ui0Var, boolean z) {
        if (this.f26606a.f32074a != null && wn0Var.mo7909f() != null) {
            wn0Var.mo7909f().m11363F6(this.f26606a.f32074a);
        }
        ui0Var.m10324h();
    }
}
