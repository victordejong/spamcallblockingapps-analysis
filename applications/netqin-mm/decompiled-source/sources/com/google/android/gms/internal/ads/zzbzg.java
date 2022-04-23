package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzg.class */
public final class zzbzg implements zzeoy<Set<zzcab<zzbvs>>> {

    /* renamed from: a */
    public final zzbys f25634a;

    public zzbzg(zzbys zzbysVar) {
        this.f25634a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzg m14884a(zzbys zzbysVar) {
        return new zzbzg(zzbysVar);
    }

    /* renamed from: b */
    public static Set<zzcab<zzbvs>> m14883b(zzbys zzbysVar) {
        Set<zzcab<zzbvs>> b = zzbysVar.m14934b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14883b(this.f25634a);
    }
}
