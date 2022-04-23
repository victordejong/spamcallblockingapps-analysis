package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsu.class */
public final class zzbsu implements zzeoy<zzcab<zzbyc>> {

    /* renamed from: a */
    public final zzeph<zzcmi> f25470a;

    /* renamed from: b */
    public final zzeph<Executor> f25471b;

    public zzbsu(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25470a = zzephVar;
        this.f25471b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsu m15089a(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsu(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25470a.get(), this.f25471b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
