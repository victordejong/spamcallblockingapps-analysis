package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnl.class */
public final class zzcnl implements zzeoy<Set<zzcab<zzbws>>> {
    /* renamed from: a */
    public static Set<zzcab<zzbws>> m14011a(zzcni zzcniVar, zzcns zzcnsVar, Executor executor) {
        Set<zzcab<zzbws>> i = zzcni.m14014i(zzcnsVar, executor);
        zzepe.m12187a(i, "Cannot return null from a non-@Nullable @Provides method");
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
