package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/an1.class */
public final class an1 implements zn2 {

    /* renamed from: d */
    private final Map<zzfem, zm1> f20056d;

    /* renamed from: e */
    private final C6854pm f20057e;

    public an1(C6854pm c6854pm, Map<zzfem, zm1> map) {
        this.f20056d = map;
        this.f20057e = c6854pm;
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: a */
    public final void mo8316a(zzfem zzfemVar, String str) {
        if (this.f20056d.containsKey(zzfemVar)) {
            this.f20057e.m12217c(this.f20056d.get(zzfemVar).f32998b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: b */
    public final void mo8315b(zzfem zzfemVar, String str) {
        if (this.f20056d.containsKey(zzfemVar)) {
            this.f20057e.m12217c(this.f20056d.get(zzfemVar).f32997a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: l */
    public final void mo8314l(zzfem zzfemVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: q */
    public final void mo8313q(zzfem zzfemVar, String str, Throwable th) {
        if (this.f20056d.containsKey(zzfemVar)) {
            this.f20057e.m12217c(this.f20056d.get(zzfemVar).f32999c);
        }
    }
}
