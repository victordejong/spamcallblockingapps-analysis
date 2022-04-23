package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjn.class */
public final class zzcjn implements zzeoy<zzcab<zzbuh>> {

    /* renamed from: a */
    public final zzeph<zzbzt> f26130a;

    public zzcjn(zzeph<zzbzt> zzephVar) {
        this.f26130a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26130a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
