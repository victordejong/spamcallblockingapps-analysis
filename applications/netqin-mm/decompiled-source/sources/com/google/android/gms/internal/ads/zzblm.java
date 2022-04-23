package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblm.class */
public final class zzblm implements zzeoy<zzbbu> {

    /* renamed from: a */
    public final zzeph<String> f25144a;

    public zzblm(zzeph<String> zzephVar) {
        this.f25144a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbbu zzbbuVar = new zzbbu(this.f25144a.get());
        zzepe.m12187a(zzbbuVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbbuVar;
    }
}
