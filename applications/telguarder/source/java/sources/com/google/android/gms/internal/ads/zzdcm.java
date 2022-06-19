package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcm.class */
public final class zzdcm implements zzeqb<zzdch<zzdfp>> {
    private final zzeqo<zzdfo> zzeyf;
    private final zzeqo<Clock> zzfsz;

    public zzdcm(zzeqo<zzdfo> zzeqoVar, zzeqo<Clock> zzeqoVar2) {
        this.zzeyf = zzeqoVar;
        this.zzfsz = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdch) zzeqh.zza(new zzdch(this.zzeyf.get(), zzada.zzdcn.get().longValue(), this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
