package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbse.class */
public final class zzbse implements zzeoy<zzcab<zzbuh>> {

    /* renamed from: a */
    public final zzeph<zzbmh> f25438a;

    /* renamed from: b */
    public final zzeph<Executor> f25439b;

    public zzbse(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25438a = zzephVar;
        this.f25439b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbse m15104a(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbse(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25438a.get(), this.f25439b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
