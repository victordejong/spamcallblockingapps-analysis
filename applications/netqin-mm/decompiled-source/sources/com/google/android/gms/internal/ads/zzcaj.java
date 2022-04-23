package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcaj.class */
public final class zzcaj implements zzcak {

    /* renamed from: a */
    public final List<String> f25654a;

    /* renamed from: b */
    public final zzdst f25655b;

    /* renamed from: c */
    public boolean f25656c;

    public zzcaj(zzdnv zzdnvVar, zzdst zzdstVar) {
        this.f25654a = zzdnvVar.f27599o;
        this.f25655b = zzdstVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcak
    /* renamed from: a */
    public final void mo14861a() {
        if (!this.f25656c) {
            this.f25655b.m13236a(this.f25654a);
            this.f25656c = true;
        }
    }
}
