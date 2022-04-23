package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbv.class */
public final class zzcbv implements zzeoy<Set<zzcab<zzbzy>>> {

    /* renamed from: a */
    public final zzeph<zzccq> f25689a;

    public zzcbv(zzeph<zzccq> zzephVar) {
        this.f25689a = zzephVar;
    }

    /* renamed from: a */
    public static zzcbv m14826a(zzeph<zzccq> zzephVar) {
        return new zzcbv(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(zzcab.m14868a(this.f25689a.get(), zzbbz.f24769f));
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
