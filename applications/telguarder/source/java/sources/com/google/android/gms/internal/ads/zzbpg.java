package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpg.class */
public final class zzbpg implements zzeqb<zzayn> {
    private final zzeqo<zzayy> zzezq;
    private final zzeqo<Clock> zzfsz;
    private final zzeqo<zzdnp> zzfvf;

    private zzbpg(zzeqo<Clock> zzeqoVar, zzeqo<zzayy> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3) {
        this.zzfsz = zzeqoVar;
        this.zzezq = zzeqoVar2;
        this.zzfvf = zzeqoVar3;
    }

    public static zzbpg zzg(zzeqo<Clock> zzeqoVar, zzeqo<zzayy> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3) {
        return new zzbpg(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzayn) zzeqh.zza(this.zzezq.get().zza(this.zzfsz.get(), this.zzfvf.get().zzhkx), "Cannot return null from a non-@Nullable @Provides method");
    }
}
