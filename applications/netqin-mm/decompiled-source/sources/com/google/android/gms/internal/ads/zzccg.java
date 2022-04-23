package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccg.class */
public final class zzccg implements zzeoy<zzcab<zzbuh>> {

    /* renamed from: a */
    public final zzeph<zzbzt> f25698a;

    public zzccg(zzeph<zzbzt> zzephVar) {
        this.f25698a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25698a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
