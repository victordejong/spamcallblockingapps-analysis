package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xs1.class */
public final class xs1 implements zs1 {

    /* renamed from: a */
    private final Map<String, pj3<zs1>> f32278a;

    /* renamed from: b */
    private final s03 f32279b;

    /* renamed from: c */
    private final s51 f32280c;

    public xs1(Map<String, pj3<zs1>> map, s03 s03Var, s51 s51Var) {
        this.f32278a = map;
        this.f32279b = s03Var;
        this.f32280c = s51Var;
    }

    @Override // com.google.android.gms.internal.ads.zs1
    /* renamed from: a */
    public final r03<rj2> mo8196a(zzcbj zzcbjVar) {
        this.f32280c.mo10408u(zzcbjVar);
        r03<rj2> m14001c = k03.m14001c(new zzdym(3));
        String[] split = ((String) C7192yr.m8714c().m14263c(C6679kw.f25577R5)).split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            pj3<zs1> pj3Var = this.f32278a.get(split[i].trim());
            r03<rj2> r03Var = m14001c;
            if (pj3Var != null) {
                r03Var = k03.m13997g(m14001c, zzdym.class, new uz2(pj3Var, zzcbjVar) { // from class: com.google.android.gms.internal.ads.vs1

                    /* renamed from: a */
                    private final pj3 f31340a;

                    /* renamed from: b */
                    private final zzcbj f31341b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f31340a = pj3Var;
                        this.f31341b = zzcbjVar;
                    }

                    @Override // com.google.android.gms.internal.ads.uz2
                    /* renamed from: a */
                    public final r03 mo8403a(Object obj) {
                        pj3 pj3Var2 = this.f31340a;
                        zzdym zzdymVar = (zzdym) obj;
                        return ((zs1) pj3Var2.mo8141b()).mo8196a(this.f31341b);
                    }
                }, this.f32279b);
            }
            i++;
            m14001c = r03Var;
        }
        k03.m13988p(m14001c, new ws1(this), qi0.f28500f);
        return m14001c;
    }
}
