package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pb1.class */
public class pb1 {

    /* renamed from: a */
    private final qc1 f27924a;

    /* renamed from: b */
    private final wn0 f27925b;

    public pb1(qc1 qc1Var, wn0 wn0Var) {
        this.f27924a = qc1Var;
        this.f27925b = wn0Var;
    }

    /* renamed from: h */
    public static final ja1<aa1> m12316h(vc1 vc1Var) {
        return new ja1<>(vc1Var, qi0.f28500f);
    }

    /* renamed from: a */
    public final qc1 m12323a() {
        return this.f27924a;
    }

    /* renamed from: b */
    public final wn0 m12322b() {
        return this.f27925b;
    }

    /* renamed from: c */
    public final View m12321c() {
        wn0 wn0Var = this.f27925b;
        if (wn0Var != null) {
            return wn0Var.mo7956F();
        }
        return null;
    }

    /* renamed from: d */
    public final View m12320d() {
        wn0 wn0Var = this.f27925b;
        if (wn0Var == null) {
            return null;
        }
        return wn0Var.mo7956F();
    }

    /* renamed from: e */
    public Set<ja1<y21>> mo12319e(x11 x11Var) {
        return Collections.singleton(new ja1(x11Var, qi0.f28500f));
    }

    /* renamed from: f */
    public Set<ja1<aa1>> mo12318f(x11 x11Var) {
        return Collections.singleton(new ja1(x11Var, qi0.f28500f));
    }

    /* renamed from: g */
    public final ja1<r71> m12317g(Executor executor) {
        return new ja1<>(new r71(this.f27925b) { // from class: com.google.android.gms.internal.ads.ob1

            /* renamed from: d */
            private final wn0 f27484d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27484d = wn0Var;
            }

            @Override // com.google.android.gms.internal.ads.r71
            public final void zza() {
                wn0 wn0Var2 = this.f27484d;
                if (wn0Var2.mo7938Q() != null) {
                    wn0Var2.mo7938Q().m18189b();
                }
            }
        }, executor);
    }
}
