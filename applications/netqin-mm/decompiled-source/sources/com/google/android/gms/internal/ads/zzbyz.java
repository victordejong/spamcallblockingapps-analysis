package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyz.class */
public final class zzbyz implements zzeoy<Set<zzcab<zzux>>> {

    /* renamed from: a */
    public final zzbys f25628a;

    public zzbyz(zzbys zzbysVar) {
        this.f25628a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbyz m14891a(zzbys zzbysVar) {
        return new zzbyz(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzux>> g = this.f25628a.m14929g();
        zzepe.m12187a(g, "Cannot return null from a non-@Nullable @Provides method");
        return g;
    }
}
