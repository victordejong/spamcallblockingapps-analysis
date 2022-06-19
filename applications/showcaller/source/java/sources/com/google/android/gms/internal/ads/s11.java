package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.C5744w;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s11.class */
public final class s11 implements cj3<nu2<ej2, C5744w>> {

    /* renamed from: a */
    private final pj3<Context> f29363a;

    /* renamed from: b */
    private final pj3<zzcgz> f29364b;

    /* renamed from: c */
    private final pj3<xj2> f29365c;

    public s11(pj3<Context> pj3Var, pj3<zzcgz> pj3Var2, pj3<xj2> pj3Var3) {
        this.f29363a = pj3Var;
        this.f29364b = pj3Var2;
        this.f29365c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new nu2(this.f29363a.mo8141b(), ((gq0) this.f29364b).m14874a(), ((o21) this.f29365c).m12759a()) { // from class: com.google.android.gms.internal.ads.r11

            /* renamed from: a */
            private final Context f28731a;

            /* renamed from: b */
            private final zzcgz f28732b;

            /* renamed from: c */
            private final xj2 f28733c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28731a = mo8141b;
                this.f28732b = m14874a;
                this.f28733c = m12759a;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                Context context = this.f28731a;
                zzcgz zzcgzVar = this.f28732b;
                xj2 xj2Var = this.f28733c;
                ej2 ej2Var = (ej2) obj;
                C5744w c5744w = new C5744w(context);
                c5744w.m17941e(ej2Var.f22194B);
                c5744w.m17940f(ej2Var.f22195C.toString());
                c5744w.m17942d(zzcgzVar.f33854d);
                c5744w.m17943c(xj2Var.f32079f);
                return c5744w;
            }
        };
    }
}
