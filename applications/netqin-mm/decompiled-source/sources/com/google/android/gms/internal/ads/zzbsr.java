package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsr.class */
public final class zzbsr implements zzeoy<zzcab<zzbwl>> {

    /* renamed from: a */
    public final zzeph<zzbwv> f25465a;

    /* renamed from: b */
    public final zzeph<Executor> f25466b;

    public zzbsr(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25465a = zzephVar;
        this.f25466b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsr m15092a(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsr(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25465a.get(), this.f25466b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
