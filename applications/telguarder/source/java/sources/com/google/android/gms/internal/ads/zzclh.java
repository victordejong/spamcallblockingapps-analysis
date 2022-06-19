package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclh.class */
public final class zzclh implements zzeqb<Set<zzbya<zzbua>>> {
    public static Set<zzbya<zzbua>> zza(zzcle zzcleVar, zzclo zzcloVar, Executor executor) {
        return (Set) zzeqh.zza(zzcle.zzi(zzcloVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
