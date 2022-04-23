package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrr.class */
public final class zzcrr implements zzeoy<zzcab<zzdso>> {

    /* renamed from: a */
    public final zzeph<zzcsd> f26439a;

    /* renamed from: b */
    public final zzeph<Executor> f26440b;

    public zzcrr(zzeph<zzcsd> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26439a = zzephVar;
        this.f26440b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcrr m13907a(zzeph<zzcsd> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcrr(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26439a.get(), this.f26440b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
