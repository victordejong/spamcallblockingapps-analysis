package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcle.class */
public final class zzcle implements zzeoy<zzcab<zzux>> {

    /* renamed from: a */
    public final zzeph<zzcln> f26206a;

    /* renamed from: b */
    public final zzeph<Executor> f26207b;

    public zzcle(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26206a = zzephVar;
        this.f26207b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcle m14090a(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcle(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26206a.get(), this.f26207b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
