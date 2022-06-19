package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.cj3;
import com.google.android.gms.internal.ads.d21;
import com.google.android.gms.internal.ads.e21;
import com.google.android.gms.internal.ads.pj3;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.yn2;
import com.google.android.gms.internal.ads.zzfem;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/e.class */
public final class C5813e implements cj3<r03<C5821i>> {

    /* renamed from: a */
    private final pj3<yn2> f18703a;

    /* renamed from: b */
    private final pj3<C5817g> f18704b;

    /* renamed from: c */
    private final pj3<d21> f18705c;

    public C5813e(pj3<yn2> pj3Var, pj3<C5817g> pj3Var2, pj3<d21> pj3Var3) {
        this.f18703a = pj3Var;
        this.f18704b = pj3Var2;
        this.f18705c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        yn2 mo8141b = this.f18703a.mo8141b();
        return mo8141b.m11366e(zzfem.GENERATE_SIGNALS, ((e21) this.f18705c).mo8141b().m15960b()).m11839c(((C5819h) this.f18704b).mo8141b()).m11834h(((Integer) C7192yr.m8714c().m14263c(C6679kw.f25559P3)).intValue(), TimeUnit.SECONDS).m11833i();
    }
}
