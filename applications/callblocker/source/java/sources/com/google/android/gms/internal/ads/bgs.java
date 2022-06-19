package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgs.class */
public final class bgs implements clg {

    /* renamed from: a */
    private Map<ckw, bgu> f11201a;

    /* renamed from: b */
    private dwi f11202b;

    public bgs(dwi dwiVar, Map<ckw, bgu> map) {
        this.f11201a = map;
        this.f11202b = dwiVar;
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final void mo11108a(ckw ckwVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final void mo11107a(ckw ckwVar, String str, Throwable th) {
        if (this.f11201a.containsKey(ckwVar)) {
            this.f11202b.m8442a(this.f11201a.get(ckwVar).f11207c);
        }
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: b */
    public final void mo11106b(ckw ckwVar, String str) {
        if (this.f11201a.containsKey(ckwVar)) {
            this.f11202b.m8442a(this.f11201a.get(ckwVar).f11205a);
        }
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: c */
    public final void mo11105c(ckw ckwVar, String str) {
        if (this.f11201a.containsKey(ckwVar)) {
            this.f11202b.m8442a(this.f11201a.get(ckwVar).f11206b);
        }
    }
}
