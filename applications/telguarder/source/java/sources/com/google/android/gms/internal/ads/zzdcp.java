package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcp.class */
public final class zzdcp implements zzeqb<zzdmu> {
    private final zzeqo<Clock> zzfsz;

    public zzdcp(zzeqo<Clock> zzeqoVar) {
        this.zzfsz = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdmu) zzeqh.zza(new zzdmu(this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
