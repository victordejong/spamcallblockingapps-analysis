package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqd.class */
public final class zzdqd implements zzeqb<Executor> {
    public static zzdqd zzawr() {
        zzdqd zzdqdVar;
        zzdqdVar = zzdqg.zzhpk;
        return zzdqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Executor) zzeqh.zza(zzazp.zzeig, "Cannot return null from a non-@Nullable @Provides method");
    }
}
