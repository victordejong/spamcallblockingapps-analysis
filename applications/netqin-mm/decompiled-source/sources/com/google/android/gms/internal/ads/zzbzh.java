package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzh.class */
public final class zzbzh implements zzeoy<Set<zzcab<zzbwl>>> {

    /* renamed from: a */
    public final zzbys f25635a;

    public zzbzh(zzbys zzbysVar) {
        this.f25635a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzh m14882a(zzbys zzbysVar) {
        return new zzbzh(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbwl>> j = this.f25635a.m14926j();
        zzepe.m12187a(j, "Cannot return null from a non-@Nullable @Provides method");
        return j;
    }
}
