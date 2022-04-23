package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzm.class */
public final class zzbzm implements zzeoy<Set<zzcab<zzqu>>> {
    public zzbzm(zzbys zzbysVar) {
    }

    /* renamed from: a */
    public static zzbzm m14877a(zzbys zzbysVar) {
        return new zzbzm(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
