package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsc.class */
public final class zzbsc implements zzeoy<zzcab<zzcak>> {

    /* renamed from: a */
    public final zzeph<zzcaj> f25434a;

    /* renamed from: b */
    public final zzeph<Executor> f25435b;

    public zzbsc(zzeph<zzcaj> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25434a = zzephVar;
        this.f25435b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsc m15106a(zzeph<zzcaj> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsc(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25434a.get(), this.f25435b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
