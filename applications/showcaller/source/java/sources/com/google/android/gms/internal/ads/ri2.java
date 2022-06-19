package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ri2.class */
public final class ri2 implements q42<fk1> {

    /* renamed from: a */
    private final Context f28965a;

    /* renamed from: b */
    private final Executor f28966b;

    /* renamed from: c */
    private final sp0 f28967c;

    /* renamed from: d */
    private final hi2 f28968d;

    /* renamed from: e */
    private final sg2<kk1, fk1> f28969e;

    /* renamed from: f */
    private final sj2 f28970f;

    /* renamed from: g */
    private final vj2 f28971g;

    /* renamed from: h */
    private r03<fk1> f28972h;

    public ri2(Context context, Executor executor, sp0 sp0Var, sg2<kk1, fk1> sg2Var, hi2 hi2Var, vj2 vj2Var, sj2 sj2Var) {
        this.f28965a = context;
        this.f28966b = executor;
        this.f28967c = sp0Var;
        this.f28969e = sg2Var;
        this.f28968d = hi2Var;
        this.f28971g = vj2Var;
        this.f28970f = sj2Var;
    }

    /* renamed from: j */
    public final jk1 m11454h(qg2 qg2Var) {
        jk1 mo10944v = this.f28967c.mo10944v();
        h21 h21Var = new h21();
        h21Var.m14759e(this.f28965a);
        h21Var.m14758f(((qi2) qg2Var).f28501a);
        h21Var.m14755i(this.f28970f);
        mo10944v.mo14102o(h21Var.m14756h());
        mo10944v.mo14103l(new n81().m12982c());
        return mo10944v;
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: a */
    public final boolean mo8958a(zzbdg zzbdgVar, String str, o42 o42Var, p42<? super fk1> p42Var) {
        zzccg zzccgVar = new zzccg(zzbdgVar, str);
        boolean z = true;
        if (zzccgVar.f33837e == null) {
            ei0.m15467c("Ad unit ID should not be null for rewarded video ad.");
            this.f28966b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ki2

                /* renamed from: d */
                private final ri2 f25225d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25225d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25225d.m11455g();
                }
            });
        } else {
            r03<fk1> r03Var = this.f28972h;
            if (r03Var == null || r03Var.isDone()) {
                nk2.m12891b(this.f28965a, zzccgVar.f33836d.f33664i);
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && zzccgVar.f33836d.f33664i) {
                    this.f28967c.mo10966C().m13453c(true);
                }
                vj2 vj2Var = this.f28971g;
                vj2Var.m9984L(zzccgVar.f33837e);
                vj2Var.m9987I(zzbdl.m8081m0());
                vj2Var.m9989G(zzccgVar.f33836d);
                xj2 m9969l = vj2Var.m9969l();
                qi2 qi2Var = new qi2(null);
                qi2Var.f28501a = m9969l;
                qi2Var.f28502b = null;
                r03<fk1> mo9227a = this.f28969e.mo9227a(new tg2(qi2Var, null), new rg2(this) { // from class: com.google.android.gms.internal.ads.li2

                    /* renamed from: a */
                    private final ri2 f26134a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26134a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.rg2
                    /* renamed from: a */
                    public final f21 mo11470a(qg2 qg2Var) {
                        return this.f26134a.m11454h(qg2Var);
                    }
                }, null);
                this.f28972h = mo9227a;
                k03.m13988p(mo9227a, new oi2(this, p42Var, qi2Var), this.f28966b);
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: b */
    public final boolean mo8957b() {
        throw null;
    }

    /* renamed from: g */
    public final /* synthetic */ void m11455g() {
        this.f28968d.mo9146O(sk2.m10997d(6, null, null));
    }

    /* renamed from: i */
    public final void m11453i(int i) {
        this.f28971g.m9981O().m13495b(i);
    }
}
