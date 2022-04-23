package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcev.class */
public final class zzcev implements zzeoy<zzcab<zzbwl>> {

    /* renamed from: a */
    public final zzeph<zzczn> f25892a;

    /* renamed from: b */
    public final zzeph<Executor> f25893b;

    public zzcev(zzeph<zzczn> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25892a = zzephVar;
        this.f25893b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcev m14644a(zzeph<zzczn> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcev(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25892a.get(), this.f25893b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
