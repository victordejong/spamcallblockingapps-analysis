package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
import com.google.android.gms.internal.ads.xy0;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eg2.class */
public final class eg2<R extends g21<AdT>, AdT extends xy0> implements sg2<R, cg2<R, AdT>> {

    /* renamed from: a */
    private final jl2 f22164a;

    /* renamed from: b */
    private final Executor f22165b;

    /* renamed from: c */
    private final f03<Void> f22166c = new bg2(this);

    public eg2(jl2 jl2Var, Executor executor) {
        this.f22164a = jl2Var;
        this.f22165b = executor;
    }

    @Override // com.google.android.gms.internal.ads.sg2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ r03 mo9227a(tg2 tg2Var, rg2 rg2Var, Object obj) {
        return m15476b(tg2Var, rg2Var, null);
    }

    /* renamed from: b */
    public final r03<cg2<R, AdT>> m15476b(tg2 tg2Var, rg2<R> rg2Var, R r) {
        return k03.m13998f(k03.m13995i(a03.m16718E(new og2(this.f22164a, r, this.f22165b).m12674c()), new uz2(this, r) { // from class: com.google.android.gms.internal.ads.zf2

            /* renamed from: a */
            private final eg2 f32919a;

            /* renamed from: b */
            private final g21 f32920b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32919a = this;
                this.f32920b = r;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f32919a.m15475c(this.f32920b, (ng2) obj);
            }
        }, this.f22165b), Exception.class, new ag2(this), this.f22165b);
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m15475c(g21 g21Var, ng2 ng2Var) {
        r03 r03Var;
        rl2 rl2Var = ng2Var.f27142b;
        zzcbj zzcbjVar = ng2Var.f27141a;
        ql2<?, ?> mo13867c = rl2Var != null ? this.f22164a.mo13867c(rl2Var) : null;
        if (rl2Var == null) {
            r03Var = k03.m14003a(null);
        } else {
            if (mo13867c != null && zzcbjVar != null) {
                k03.m13988p(g21Var.mo8231o().m16456g(zzcbjVar), this.f22166c, this.f22165b);
            }
            r03Var = k03.m14003a(new cg2(rl2Var, zzcbjVar, mo13867c));
        }
        return r03Var;
    }

    @Override // com.google.android.gms.internal.ads.sg2
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ Object mo9223e() {
        return null;
    }
}
