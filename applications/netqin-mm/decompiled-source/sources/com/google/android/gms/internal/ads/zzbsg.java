package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsg.class */
public final class zzbsg implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzbmh> f25442a;

    /* renamed from: b */
    public final zzeph<Executor> f25443b;

    public zzbsg(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25442a = zzephVar;
        this.f25443b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsg m15101a(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsg(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25442a.get(), this.f25443b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
