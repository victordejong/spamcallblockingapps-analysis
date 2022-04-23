package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboy.class */
public final class zzboy implements zzeoy<zzbvr> {

    /* renamed from: a */
    public final zzbot f25304a;

    /* renamed from: b */
    public final zzeph<Set<zzcab<zzbvs>>> f25305b;

    public zzboy(zzbot zzbotVar, zzeph<Set<zzcab<zzbvs>>> zzephVar) {
        this.f25304a = zzbotVar;
        this.f25305b = zzephVar;
    }

    /* renamed from: a */
    public static zzbvr m15221a(zzbot zzbotVar, Set<zzcab<zzbvs>> set) {
        zzbvr a = zzbotVar.mo15227a(set);
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15221a(this.f25304a, this.f25305b.get());
    }
}
