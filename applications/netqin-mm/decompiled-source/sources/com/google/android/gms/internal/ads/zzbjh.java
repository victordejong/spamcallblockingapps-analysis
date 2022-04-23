package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjh.class */
public final class zzbjh implements zzeoy<zzctb<zzdpa, zzcut>> {

    /* renamed from: a */
    public final zzeph<zzcku> f25052a;

    public zzbjh(zzbja zzbjaVar, zzeph<zzcku> zzephVar) {
        this.f25052a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcxc zzcxcVar = new zzcxc(this.f25052a.get());
        zzepe.m12187a(zzcxcVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcxcVar;
    }
}
