package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnq.class */
public final class zzcnq implements zzeoy<Set<zzcab<zzbuz>>> {

    /* renamed from: a */
    public final zzeph<zzcns> f26311a;

    /* renamed from: b */
    public final zzeph<Executor> f26312b;

    public zzcnq(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26311a = zzephVar;
        this.f26312b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnq m14005a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcnq(zzcniVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbuz>> f = zzcni.m14017f(this.f26311a.get(), this.f26312b.get());
        zzepe.m12187a(f, "Cannot return null from a non-@Nullable @Provides method");
        return f;
    }
}
