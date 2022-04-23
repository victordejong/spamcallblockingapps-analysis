package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjk.class */
public final class zzbjk implements zzeoy<zzdoz<zzcil>> {

    /* renamed from: a */
    public final zzeph<zzciy> f25054a;

    /* renamed from: b */
    public final zzeph<zzdzb> f25055b;

    public zzbjk(zzeph<zzciy> zzephVar, zzeph<zzdzb> zzephVar2) {
        this.f25054a = zzephVar;
        this.f25055b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdoz zzdozVar = new zzdoz(this.f25054a.get(), this.f25055b.get());
        zzepe.m12187a(zzdozVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzdozVar;
    }
}
