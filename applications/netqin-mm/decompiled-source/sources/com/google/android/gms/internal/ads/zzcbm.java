package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbm.class */
public final class zzcbm implements zzeoy<Set<zzcab<zzbyc>>> {

    /* renamed from: a */
    public final zzeph<zzbtd> f25679a;

    public zzcbm(zzcbf zzcbfVar, zzeph<zzbtd> zzephVar) {
        this.f25679a = zzephVar;
    }

    /* renamed from: a */
    public static zzcbm m14834a(zzcbf zzcbfVar, zzeph<zzbtd> zzephVar) {
        return new zzcbm(zzcbfVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(zzcab.m14868a(this.f25679a.get(), zzbbz.f24769f));
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
