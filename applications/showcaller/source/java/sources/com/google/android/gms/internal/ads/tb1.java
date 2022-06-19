package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tb1.class */
public final class tb1 implements cj3<ja1<n41>> {

    /* renamed from: a */
    private final pb1 f29883a;

    /* renamed from: b */
    private final pj3<Context> f29884b;

    /* renamed from: c */
    private final pj3<zzcgz> f29885c;

    /* renamed from: d */
    private final pj3<ej2> f29886d;

    /* renamed from: e */
    private final pj3<xj2> f29887e;

    public tb1(pb1 pb1Var, pj3<Context> pj3Var, pj3<zzcgz> pj3Var2, pj3<ej2> pj3Var3, pj3<xj2> pj3Var4) {
        this.f29883a = pb1Var;
        this.f29884b = pj3Var;
        this.f29885c = pj3Var2;
        this.f29886d = pj3Var3;
        this.f29887e = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new ja1(new n41(this.f29884b.mo8141b(), ((gq0) this.f29885c).m14874a(), ((nz0) this.f29886d).m12777a(), ((o21) this.f29887e).m12759a()) { // from class: com.google.android.gms.internal.ads.nb1

            /* renamed from: d */
            private final Context f27056d;

            /* renamed from: e */
            private final zzcgz f27057e;

            /* renamed from: f */
            private final ej2 f27058f;

            /* renamed from: g */
            private final xj2 f27059g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27056d = mo8141b;
                this.f27057e = m14874a;
                this.f27058f = m12777a;
                this.f27059g = m12759a;
            }

            @Override // com.google.android.gms.internal.ads.n41
            /* renamed from: d */
            public final void mo10505d() {
                C5667s.m18150n().m18130g(this.f27056d, this.f27057e.f33854d, this.f27058f.f22195C.toString(), this.f27059g.f32079f);
            }
        }, qi0.f28500f);
    }
}
