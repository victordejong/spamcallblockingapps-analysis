package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpk.class */
public final class zzdpk implements zzeoy<zzcab<zzbui>> {

    /* renamed from: a */
    public final zzeph<zzdpj> f27699a;

    public zzdpk(zzdph zzdphVar, zzeph<zzdpj> zzephVar) {
        this.f27699a = zzephVar;
    }

    /* renamed from: a */
    public static zzdpk m13333a(zzdph zzdphVar, zzeph<zzdpj> zzephVar) {
        return new zzdpk(zzdphVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f27699a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
