package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbk.class */
public final class zzcbk implements zzeoy<Set<zzcab<zzbuv>>> {

    /* renamed from: a */
    public final zzeph<zzbtd> f25674a;

    public zzcbk(zzcbf zzcbfVar, zzeph<zzbtd> zzephVar) {
        this.f25674a = zzephVar;
    }

    /* renamed from: a */
    public static zzcbk m14836a(zzcbf zzcbfVar, zzeph<zzbtd> zzephVar) {
        return new zzcbk(zzcbfVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(zzcab.m14868a(this.f25674a.get(), zzbbz.f24769f));
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
