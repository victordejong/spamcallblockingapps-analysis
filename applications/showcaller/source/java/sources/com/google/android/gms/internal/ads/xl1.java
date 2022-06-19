package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xl1.class */
public final class xl1 implements cj3<C6854pm> {

    /* renamed from: a */
    private final pj3<Context> f32103a;

    /* renamed from: b */
    private final pj3<String> f32104b;

    /* renamed from: c */
    private final pj3<zzcgz> f32105c;

    /* renamed from: d */
    private final pj3<zzazj> f32106d;

    /* renamed from: e */
    private final pj3<String> f32107e;

    public xl1(pj3<Context> pj3Var, pj3<String> pj3Var2, pj3<zzcgz> pj3Var3, pj3<zzazj> pj3Var4, pj3<String> pj3Var5) {
        this.f32103a = pj3Var;
        this.f32104b = pj3Var2;
        this.f32105c = pj3Var3;
        this.f32106d = pj3Var4;
        this.f32107e = pj3Var5;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Context m9095a = ((xp0) this.f32103a).m9095a();
        String mo8141b = ((nr1) this.f32104b).mo8141b();
        zzcgz m14874a = ((gq0) this.f32105c).m14874a();
        zzazj mo8141b2 = this.f32106d.mo8141b();
        String mo8141b3 = this.f32107e.mo8141b();
        C6854pm c6854pm = new C6854pm(new C7002tm(m9095a));
        C6746mp m12839C = C6783np.m12839C();
        m12839C.m13137q(m14874a.f33855e);
        m12839C.m13136r(m14874a.f33856f);
        m12839C.m13135s(true != m14874a.f33857g ? 2 : 0);
        c6854pm.m12218b(new AbstractC6817om(mo8141b2, mo8141b, m12839C.m15512n(), mo8141b3) { // from class: com.google.android.gms.internal.ads.wl1

            /* renamed from: a */
            private final zzazj f31605a;

            /* renamed from: b */
            private final String f31606b;

            /* renamed from: c */
            private final C6783np f31607c;

            /* renamed from: d */
            private final String f31608d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31605a = mo8141b2;
                this.f31606b = mo8141b;
                this.f31607c = m15512n;
                this.f31608d = mo8141b3;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6817om
            /* renamed from: a */
            public final void mo8772a(C6373co c6373co) {
                zzazj zzazjVar = this.f31605a;
                String str = this.f31606b;
                C6783np c6783np = this.f31607c;
                String str2 = this.f31608d;
                C7150xm m14416x = c6373co.m16003x().m14416x();
                m14416x.m9140q(zzazjVar);
                c6373co.m16002y(m14416x);
                C7040un m14416x2 = c6373co.m16005v().m14416x();
                m14416x2.m10290q(str);
                m14416x2.m10289r(c6783np);
                c6373co.m16004w(m14416x2);
                c6373co.m16008r(str2);
            }
        });
        return c6854pm;
    }
}
