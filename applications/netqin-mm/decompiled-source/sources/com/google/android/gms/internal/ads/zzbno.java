package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbno.class */
public final class zzbno implements zzeoy<Set<zzcab<zzqu>>> {

    /* renamed from: a */
    public final zzeph<zzbqf> f25259a;

    public zzbno(zzbnj zzbnjVar, zzeph<zzbqf> zzephVar) {
        this.f25259a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(new zzcab(this.f25259a.get(), zzbbz.f24769f));
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
