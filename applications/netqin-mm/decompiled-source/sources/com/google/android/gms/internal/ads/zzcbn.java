package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbn.class */
public final class zzcbn implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<zzcco> f25680a;

    public zzcbn(zzcbf zzcbfVar, zzeph<zzcco> zzephVar) {
        this.f25680a = zzephVar;
    }

    /* renamed from: a */
    public static zzcbn m14833a(zzcbf zzcbfVar, zzeph<zzcco> zzephVar) {
        return new zzcbn(zzcbfVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25680a.get(), zzbbz.f24768e);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
