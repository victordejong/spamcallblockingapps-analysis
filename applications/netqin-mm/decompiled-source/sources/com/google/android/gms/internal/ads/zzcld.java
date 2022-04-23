package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcld.class */
public final class zzcld implements zzeoy<zzcab<zzbui>> {

    /* renamed from: a */
    public final zzeph<zzcln> f26204a;

    /* renamed from: b */
    public final zzeph<Executor> f26205b;

    public zzcld(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26204a = zzephVar;
        this.f26205b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcld m14091a(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcld(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26204a.get(), this.f26205b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
