package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsf.class */
public final class zzbsf implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<zzbmh> f25440a;

    /* renamed from: b */
    public final zzeph<Executor> f25441b;

    public zzbsf(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25440a = zzephVar;
        this.f25441b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsf m15102a(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsf(zzephVar, zzephVar2);
    }

    /* renamed from: a */
    public static zzcab<zzbvs> m15103a(zzbmh zzbmhVar, Executor executor) {
        zzcab<zzbvs> zzcabVar = new zzcab<>(zzbmhVar, executor);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15103a(this.f25440a.get(), this.f25441b.get());
    }
}
