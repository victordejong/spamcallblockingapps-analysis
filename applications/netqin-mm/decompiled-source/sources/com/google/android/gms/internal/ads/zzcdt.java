package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdt.class */
public final class zzcdt implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzcgb> f25793a;

    public zzcdt(zzcdl zzcdlVar, zzeph<zzcgb> zzephVar) {
        this.f25793a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25793a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
