package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsm.class */
public final class zzbsm implements zzeoy<zzcab<zzux>> {

    /* renamed from: a */
    public final zzeph<zzbwv> f25455a;

    /* renamed from: b */
    public final zzeph<Executor> f25456b;

    public zzbsm(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25455a = zzephVar;
        this.f25456b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsm m15097a(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsm(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25455a.get(), this.f25456b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
