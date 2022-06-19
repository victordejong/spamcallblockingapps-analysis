package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jv1.class */
public final class jv1 implements zn2 {

    /* renamed from: d */
    private final gv1 f25000d;

    public jv1(gv1 gv1Var) {
        this.f25000d = gv1Var;
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: a */
    public final void mo8316a(zzfem zzfemVar, String str) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue() || zzfem.RENDERER != zzfemVar || this.f25000d.m14801f() == 0) {
            return;
        }
        this.f25000d.m14800g(C5667s.m18153k().mo16806b() - this.f25000d.m14801f());
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: b */
    public final void mo8315b(zzfem zzfemVar, String str) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue() || zzfem.RENDERER != zzfemVar) {
            return;
        }
        this.f25000d.m14802e(C5667s.m18153k().mo16806b());
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: l */
    public final void mo8314l(zzfem zzfemVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: q */
    public final void mo8313q(zzfem zzfemVar, String str, Throwable th) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue() || zzfem.RENDERER != zzfemVar || this.f25000d.m14801f() == 0) {
            return;
        }
        this.f25000d.m14800g(C5667s.m18153k().mo16806b() - this.f25000d.m14801f());
    }
}
