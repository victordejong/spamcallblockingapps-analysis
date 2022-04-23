package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzc.class */
public final class zzbzc implements zzeoy<Set<zzcab<zzbui>>> {

    /* renamed from: a */
    public final zzbys f25630a;

    public zzbzc(zzbys zzbysVar) {
        this.f25630a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzc m14888a(zzbys zzbysVar) {
        return new zzbzc(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbui>> c = this.f25630a.m14933c();
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }
}
