package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqs.class */
public final class zzdqs implements zzeqb<ThreadFactory> {
    public static zzdqs zzaxf() {
        zzdqs zzdqsVar;
        zzdqsVar = zzdqr.zzhpr;
        return zzdqsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (ThreadFactory) zzeqh.zza(new zzdqe(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
