package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbph.class */
public final class zzbph implements zzeoy<zzcab<zzqu>> {

    /* renamed from: a */
    public final zzeph<zzbqj> f25321a;

    /* renamed from: b */
    public final zzeph<Executor> f25322b;

    public zzbph(zzbot zzbotVar, zzeph<zzbqj> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25321a = zzephVar;
        this.f25322b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25321a.get(), this.f25322b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
