package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbr.class */
public final class zzcbr implements zzeoy<zzawp> {

    /* renamed from: a */
    public final zzeph<Context> f25683a;

    /* renamed from: b */
    public final zzeph<zzdok> f25684b;

    public zzcbr(zzcbf zzcbfVar, zzeph<Context> zzephVar, zzeph<zzdok> zzephVar2) {
        this.f25683a = zzephVar;
        this.f25684b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcbr m14830a(zzcbf zzcbfVar, zzeph<Context> zzephVar, zzeph<zzdok> zzephVar2) {
        return new zzcbr(zzcbfVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzawp zzawpVar = new zzawp(this.f25683a.get(), this.f25684b.get().f27644f);
        zzepe.m12187a(zzawpVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzawpVar;
    }
}
