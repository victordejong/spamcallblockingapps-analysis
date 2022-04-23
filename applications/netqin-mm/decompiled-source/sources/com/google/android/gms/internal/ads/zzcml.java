package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcml.class */
public final class zzcml implements zzeoy<zzcab<zzbui>> {

    /* renamed from: a */
    public final zzeph<zzcmk> f26251a;

    /* renamed from: b */
    public final zzeph<Executor> f26252b;

    public zzcml(zzeph<zzcmk> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26251a = zzephVar;
        this.f26252b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcml m14059a(zzeph<zzcmk> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcml(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26251a.get(), this.f26252b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
