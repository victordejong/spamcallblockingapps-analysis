package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzd.class */
public final class zzbzd implements zzeoy<Set<zzcab<zzbuh>>> {

    /* renamed from: a */
    public final zzbys f25631a;

    public zzbzd(zzbys zzbysVar) {
        this.f25631a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzd m14887a(zzbys zzbysVar) {
        return new zzbzd(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbuh>> a = this.f25631a.m14937a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
