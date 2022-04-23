package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmm.class */
public final class zzcmm implements zzeoy<zzcab<zzbws>> {

    /* renamed from: a */
    public final zzeph<zzcmk> f26253a;

    /* renamed from: b */
    public final zzeph<Executor> f26254b;

    public zzcmm(zzeph<zzcmk> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26253a = zzephVar;
        this.f26254b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcmm m14058a(zzeph<zzcmk> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcmm(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26253a.get(), this.f26254b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
