package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrw.class */
public final class zzbrw implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzbsa> f25424a;

    public zzbrw(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        this.f25424a = zzephVar;
    }

    /* renamed from: a */
    public static zzbrw m15113a(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        return new zzbrw(zzbrrVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25424a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
