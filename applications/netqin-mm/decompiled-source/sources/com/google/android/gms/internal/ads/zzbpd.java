package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpd.class */
public final class zzbpd implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzbqd> f25315a;

    public zzbpd(zzbot zzbotVar, zzeph<zzbqd> zzephVar) {
        this.f25315a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25315a.get(), zzbbz.f24768e);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
