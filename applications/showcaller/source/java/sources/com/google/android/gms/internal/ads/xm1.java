package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xm1.class */
public final class xm1 implements cj3<Set<ja1<zn2>>> {

    /* renamed from: a */
    private final pj3<String> f32112a;

    /* renamed from: b */
    private final pj3<Context> f32113b;

    /* renamed from: c */
    private final pj3<Executor> f32114c;

    /* renamed from: d */
    private final pj3<Map<zzfem, zm1>> f32115d;

    public xm1(pj3<String> pj3Var, pj3<Context> pj3Var2, pj3<Executor> pj3Var3, pj3<Map<zzfem, zm1>> pj3Var4) {
        this.f32112a = pj3Var;
        this.f32113b = pj3Var2;
        this.f32114c = pj3Var3;
        this.f32115d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Set set;
        String m16079a = ((cd2) this.f32112a).m16079a();
        Context m9095a = ((xp0) this.f32113b).m9095a();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Map mo8141b = ((gj3) this.f32115d).mo8141b();
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25762o3)).booleanValue()) {
            C6854pm c6854pm = new C6854pm(new C7002tm(m9095a));
            c6854pm.m12218b(new AbstractC6817om(m16079a) { // from class: com.google.android.gms.internal.ads.ym1

                /* renamed from: a */
                private final String f32545a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32545a = m16079a;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC6817om
                /* renamed from: a */
                public final void mo8772a(C6373co c6373co) {
                    c6373co.m16008r(this.f32545a);
                }
            });
            set = Collections.singleton(new ja1(new an1(c6854pm, mo8141b), s03Var));
        } else {
            set = Collections.emptySet();
        }
        kj3.m13879b(set);
        return set;
    }
}
