package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzb.class */
public final class zzbzb implements zzeoy<Set<zzcab<zzbuv>>> {

    /* renamed from: a */
    public final zzbys f25629a;

    public zzbzb(zzbys zzbysVar) {
        this.f25629a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzb m14889a(zzbys zzbysVar) {
        return new zzbzb(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbuv>> d = this.f25629a.m14932d();
        zzepe.m12187a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }
}
