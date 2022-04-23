package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjg.class */
public final class zzbjg implements zzeoy<zzbly> {

    /* renamed from: a */
    public final zzeph<zzbix> f25051a;

    public zzbjg(zzbja zzbjaVar, zzeph<zzbix> zzephVar) {
        this.f25051a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbix zzbixVar = this.f25051a.get();
        zzepe.m12187a(zzbixVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbixVar;
    }
}
