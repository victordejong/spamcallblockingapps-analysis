package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsq.class */
public final class zzbsq implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzbwv> f25463a;

    /* renamed from: b */
    public final zzeph<Executor> f25464b;

    public zzbsq(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25463a = zzephVar;
        this.f25464b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsq m15093a(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsq(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25463a.get(), this.f25464b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
