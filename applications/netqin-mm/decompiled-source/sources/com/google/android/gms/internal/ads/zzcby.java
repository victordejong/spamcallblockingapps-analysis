package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcby.class */
public final class zzcby implements zzeoy<zzcab<zzbxz>> {

    /* renamed from: a */
    public final zzcbf f25691a;

    /* renamed from: b */
    public final zzeph<Executor> f25692b;

    public zzcby(zzcbf zzcbfVar, zzeph<Executor> zzephVar) {
        this.f25691a = zzcbfVar;
        this.f25692b = zzephVar;
    }

    /* renamed from: a */
    public static zzcby m14823a(zzcbf zzcbfVar, zzeph<Executor> zzephVar) {
        return new zzcby(zzcbfVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab<zzbxz> a = this.f25691a.m14846a(this.f25692b.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
