package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpu.class */
public final class zzbpu implements zzeoy<zzcta<zzboq>> {

    /* renamed from: a */
    public final zzeph<zzdsi> f25334a;

    /* renamed from: b */
    public final zzeph<zzdzb> f25335b;

    /* renamed from: c */
    public final zzeph<zzcug> f25336c;

    /* renamed from: d */
    public final zzeph<zzcxr> f25337d;

    public zzbpu(zzeph<zzdsi> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcug> zzephVar3, zzeph<zzcxr> zzephVar4) {
        this.f25334a = zzephVar;
        this.f25335b = zzephVar2;
        this.f25336c = zzephVar3;
        this.f25337d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcxv zzcxvVar = new zzcxv(this.f25334a.get(), this.f25335b.get(), this.f25337d.get(), this.f25336c.get());
        zzepe.m12187a(zzcxvVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcxvVar;
    }
}
