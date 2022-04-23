package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpf.class */
public final class zzbpf implements zzeoy<Set<zzcab<zzqu>>> {

    /* renamed from: a */
    public final zzeph<zzbqf> f25318a;

    public zzbpf(zzbot zzbotVar, zzeph<zzbqf> zzephVar) {
        this.f25318a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(new zzcab(this.f25318a.get(), zzbbz.f24769f));
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
