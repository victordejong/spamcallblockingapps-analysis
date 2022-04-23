package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnj.class */
public final class zzcnj implements zzeoy<Set<zzcab<zzbuy>>> {

    /* renamed from: a */
    public final zzeph<zzcns> f26298a;

    /* renamed from: b */
    public final zzeph<Executor> f26299b;

    public zzcnj(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26298a = zzephVar;
        this.f26299b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnj m14013a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcnj(zzcniVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbuy>> a = zzcni.m14023a(this.f26298a.get(), this.f26299b.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
